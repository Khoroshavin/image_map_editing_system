<?php

error_reporting(0);
require '../common.php';

$json = [];

// данные ошибки 
$json = [
    'error' => 'true',
    'message' => 'Přístup odepřen'
];

if (isset($_GET['getDataById'])) {
    $userData = mysqli_fetch_assoc(query("SELECT * FROM users_img where id = " . $_GET['getDataById']));
    // проверка, и добавление данных
    $json = [
        'id' => $userData['id'],
        'login' => $userData['log'],
        'password' => $userData['pass'],
        'role' => $userData['role'],
    ];
}

if (isset($_POST['id']) && isset($_POST['login']) && isset($_POST['role'])) {
    $check = query("SELECT * FROM users_img WHERE log = '{$_POST['login']}' and id != {$_POST['id']}");
    // проверка на существующего пользователя 
    if ($check->num_rows > 0) {
        $json = [
            'success' => false,
            'message' => 'uživatel s tímto jménem již existuje!'
        ];
    } else {
        if (isset($_POST['password'])) {
            // хешируем пароль для безопасности
            $_POST['password'] = password_hash($_POST['password'], PASSWORD_BCRYPT);
            // отправляем запрос на обновление
            $update = query("UPDATE users_img SET log = '{$_POST['login']}', pass = '{$_POST['password']}', role = '{$_POST['role']}' WHERE id = {$_POST['id']}");
        } else {
            $update = query("UPDATE users_img SET log = '{$_POST['login']}', role = '{$_POST['role']}' WHERE id = {$_POST['id']}");
        }
        if ($update) {
            $data = [];
            // получаем данные с базы
            foreach (mysqli_fetch_array(query("SELECT * FROM users_img ORDER BY id")) as $key => $value) {
                array_push($data, $value);
            }
            $data = query("SELECT * FROM users_img");
            $arrData = [];
            while ($res = mysqli_fetch_array($data)) {
                array_push($arrData, $res['id'], $res['log'], $res['role']);
            };
            // выводим эти данные для работы в js
            $json = [
                'success' => true,
                'message' => 'uživatel byl úspěšně upraven!',
                'login' => $_POST['login'],
                'role' => $_POST['role'],
                'data' => $arrData
            ];
        } else {
            // выводим ошибку
            $json = [
                'success' => false,
                'message' => 'uživatel nebyl upraven, chyba!'
            ];
        }
    }
}

if (isset($_POST['addNewUser']) && isset($_POST['addNewUserPassword']) && isset($_POST['addNewUserRole'])) {
    // получаем определённого пользователя
    $check = query("SELECT * FROM users_img WHERE log = '{$_POST['addNewUser']}'");
    if ($check->num_rows > 0) {
        // на случай ошибки, возвращаем её
        $json = [
            'success' => false,
            'message' => 'uživatel s tímto jménem již existuje!'
        ];
    } else {
        // хешируем пароль
        $_POST['addNewUserPassword'] = password_hash($_POST['addNewUserPassword'], PASSWORD_BCRYPT);
        // отсмылаем запрос на добавление нового пользователя
        $insert = query("INSERT INTO users_img (log, pass, role) VALUES ('{$_POST['addNewUser']}','{$_POST['addNewUserPassword']}','{$_POST['addNewUserRole']}')");
        // получаем все данные из базы
        $data = query("SELECT * FROM users_img");
        $arrData = [];
        while ($res = mysqli_fetch_array($data)) {
            array_push($arrData, $res['id'], $res['log'], $res['role']);
        };
        // выводим необходимые данные для работы уже в js
        if ($insert) {
            $json = [
                'success' => true,
                'message' => 'uživatel úspěšně přidán!',
                'data' => $arrData
            ];
        } else {
            $json = [
                'success' => false,
                'message' => 'uživatel nebyl přidán, chyba!'
            ];
        }
    }
}

if (isset($_POST['deleteUserId'])) {
    // отсылаем запрос на удаление определённого пользователя
    $check = query("SELECT * FROM users_img WHERE id = '{$_POST['deleteUserId']}'");
    // проверяем, если ошибка: возвращаем её
    if ($check->num_rows == 0) {
        $json = [
            'success' => false,
            'message' => 'uživatel nebyl nalezen, chyba!'
        ];
    } else {
        // оканчательно удаляем нашого пользователя
        $delete = query("DELETE FROM users_img WHERE id = {$_POST['deleteUserId']}");
        if ($delete) {
            // получаем все данные из базы
            $data = query("SELECT * FROM users_img");
            $arrData = [];
            while ($res = mysqli_fetch_array($data)) {
                array_push($arrData, $res['id'], $res['log'], $res['role']);
            };
            // выводим полученые данные
            $json = [
                'success' => true,
                'message' => 'uživatel úspěšně smazán!',
                'data' => $arrData
            ];
        } else {
            // выводим ошибку
            $json = [
                'success' => false,
                'message' => 'uživatel nebyl smazán, chyba!'
            ];
        }
    }
}

echo json_encode($json);