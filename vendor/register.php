<?php
    require_once('connect.php');

    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $patronymic = $_POST['patronymic'];
    $dateBirth = $_POST['dateBirth'];
    $iin = $_POST['iin'];
    $phone = $_POST['phone'];
    $street = $_POST['street'];
    $apartment = $_POST['apartment'];

    $path = '/uploads/'. time() .$_FILES['photo']['name'];
    move_uploaded_file($_FILES['photo']['tmp_name'], '../'. $path);

    mysqli_query($connect, "INSERT INTO `users` 
    (`id`, `name`, `surname`, `patronymic`, `dateBirth`, `iin`, `phone`, `street`, `apartment`, `photo`) VALUES 
    (NULL, '$name', '$surname', '$patronymic', '$dateBirth', '$iin', '$phone', '$street', '$apartment', '$path')");

   $response=[
       "status" => true
   ];

   echo json_encode($response)
   
?>