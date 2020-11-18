<?php
    require_once('connect.php');

    $id = $_POST['id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $patronymic = $_POST['patronymic'];
    $dateBirth = $_POST['dateBirth'];
    $iin = $_POST['iin'];
    $phone = $_POST['phone'];
    $street = $_POST['street'];
    $apartment = $_POST['apartment'];


    mysqli_query($connect, "UPDATE `users` SET
     `name` = '$name', 
     `surname` = '$surname', 
     `patronymic` = '$patronymic', 
     `dateBirth` = '$dateBirth', 
     `iin` = '$iin', 
     `phone` = '$phone', 
     `street` = '$street',
      `apartment` = '$apartment' 
      WHERE `id` = '$id'");

    // $response=[
    //     "status" => $id
    // ];
   echo json_encode( $response);
   
?>