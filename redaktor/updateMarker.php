<?php

require('../config.php');
// connection
$conn = new mysqli(DB_HOST, DB_LOGIN, DB_PASS, DB_NAME);
// condition
if ($conn->connect_error) {
  die('Mysql connection error');
}
// creating varialebs
$html = mysqli_real_escape_string($conn, $_POST["html"]);
$latlng = $_POST["latlng"];
$id = $_POST["markerId"];

$sql = '';

// sending query
if (!empty($html)) {
	//delete image
	$sql = 'SELECT html FROM markers_img WHERE id='.$id;
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	preg_match_all('/<img[^>]+src="(.+?)"/', $row['html'], $fndSrcRow);
	preg_match_all('/<img[^>]+src="(.+?)"/', $html, $fndSrcHtml);
	if($fndSrcRow[1]) {
		foreach($fndSrcRow[1] as $src) {
			if(array_search($src, $fndSrcHtml[1]) === false) {
				@unlink($src);
			}
		}
	}
	//delete image
  if (!empty($latlng)) {
    $sql = "UPDATE markers_img SET html='$html', latlng='$latlng' WHERE id='$id'";
  } else {
    $sql = "UPDATE markers_img SET html='$html' WHERE id='$id'";
  }
} else {
  if (!empty($latlng)) {
    $sql = "UPDATE markers_img SET latlng='$latlng' WHERE id='$id'";
  }
}

$conn->query($sql);
// redirect
header("Location: index.php");
