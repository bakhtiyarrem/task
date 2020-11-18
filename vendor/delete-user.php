<?php

require_once('connect.php');

$userId = $_POST['userId'];

mysqli_query($connect, "DELETE FROM `users` WHERE `users`.`id` = '$userId';");

echo json_encode($response);

