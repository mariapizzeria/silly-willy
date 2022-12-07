<?php
session_start();
$name = $_POST['name'];
$text = $_POST['text'];
$data = $_POST['data'];

include_once 'bd.php';
$query = $pdo->prepare("SELECT * FROM users WHERE name = '$name'");
$query->execute();
$row = $query->fetch();
if ($row>0){
    $_SESSION['message'] = "Запись успешно сохранена";
    header("Location: odin.php");
}else{
    $query = $pdo->prepare("INSERT INTO users (name, text) VALUES ('$name','$text')");
    $query->execute();
    unset($_SESSION['message']);
    header("Location: odin.php");
}