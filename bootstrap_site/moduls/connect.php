<?php
$host='localhost'; // Название сервера с базой данных
$name='root'; // Имя пользователя
$psswd=''; // пароль
$link=mysqli_connect($host,$name,$psswd); // подключение к серверу
mysqli_select_db($link, 'new_db'); // Выбор на сервере базы данных
mysqli_query($link, "SET NAMES utf8"); // Кодировка общения UTF8
?>
