<?php

require("../config.php");
// connection
$conn = new mysqli(DB_HOST, DB_LOGIN, DB_PASS, DB_NAME);
// conditons
if ($conn->connect_error) {
  die("Připojení se nezdařilo: " . $conn->connect_error);
}
// creating variables
$latlng = $_POST["latlng"];
$type = $_POST["type"];
// sending query
$sql = "INSERT INTO markers_img (latlng, type) VALUES ('$latlng', '$type')";
// return this data
if ($conn->query($sql)) {
  $sql = "SELECT * FROM markers_img WHERE latlng='$latlng' LIMIT 1";

  if ($conn->query($sql)) {
    echo json_encode($conn->query($sql)->fetch_assoc());
  } else {
    echo "Chyba: " . $conn->error;
  }
} else {
  echo "Chyba: " . $conn->error;
}
