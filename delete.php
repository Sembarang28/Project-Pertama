<?php
    ob_start();
    include_once("connect.php");

    $id_games = $_GET['id_games'];
    $delete = mysqli_query($mysqli, "DELETE FROM games WHERE id_games='$id_games'");
    
    header("Location:index.php");
    ob_end_flush();
?>