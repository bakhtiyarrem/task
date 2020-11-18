<?php
    require_once('connect.php');

    
    $data = mysqli_query($connect, "SELECT * FROM `users`");
    $data = mysqli_fetch_all($data);
    
    echo json_encode($data)

?>