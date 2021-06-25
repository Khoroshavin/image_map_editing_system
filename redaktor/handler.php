<?php 
// обработчик AJAX запросов карты
require '../common.php';

// если не залогинены или роль не совпадает - выдаем ошибку
if (empty($_SESSION['user']) || $_SESSION['user']['role'] != 'redaktor')

{
	if (isset($_GET['action']) && $_GET['action'] != 'get') {
		http_response_code(403);

		echo 'Přístup odepřen';

		exit;
	}
}



// получаем action

$action = ! empty($_GET['action']) ? $_GET['action'] : false;



switch ($action)

{
	// изменяем точку

	// zmena znacky
	
	case 'update':

		$alt = (int)$_POST['alt'];

		$html = mysqli_real_escape_string($db, $_POST['html']);
		
		if (mysqli_num_rows(query("SELECT * FROM markers_img WHERE alt = $alt LIMIT 1")) === 0) {
			query("INSERT INTO markers_img SET html = '$html', alt = $alt");
		}
		else {
			query("UPDATE markers_img SET html = '$html' WHERE alt = $alt");
		}


		$response = [

			'alt'   => $alt,

			// mysqli_real_escape_string может наэкранировать реальный html

			'html' => $_POST['html'],

		];

		break;
	
	// получаем список точек

	// seznam znacek

	case 'get':

		$result = query("SELECT * FROM markers_img WHERE alt = ${_POST['alt']} LIMIT 1");

		$response = mysqli_fetch_array($result);
		
		if (!isset($response['html'])) {
			$response['html'] = '';
		}
		
		if (isset($_GET['for_index']) && $_GET['for_index'] == 1) {
			$response['html'] = str_replace('../../tiny/', '../tiny/', $response['html']); // выправляем ссылки на изображения
			$response['html'] = str_replace("'", "\'", $response['html']); // экранируем одиночные кавычки
		}

		break;

	
	// Save marker
	
	case 'post':
		$alt = $_POST['alt'];
		$html = $_POST['html'];
		$lat = $_POST['lat'];
		$lng = $_POST['lng'];

		$result = query("INSERT INTO markers_img (lat, lng, html) VALUES '$lat', '$lng', '$html'");
		
	default:
		http_response_code(403);

		echo 'Neznámá akce';

		exit;

}


// если $response не существует -> ошибка (пустой или неизвестный action)

// kontrola $response -> chyba (prazdny nebo neznamy action)

if ( ! isset($response))

{

	http_response_code(400);

	echo 'Bad request';

	exit;

}



// возвращаем ответ как JSON

// vraceni jako JSON

echo json_encode($response);