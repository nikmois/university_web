<?php
session_start();
require_once "connect.php";
if(isset($_POST["userName"])){
  if(!empty($_POST["userName"])){
    $userName=$_POST["userName"];
    $userPass=md5($_POST["userPass"]);
    $userDetected=false;//придумываем переменную где показывается определен пользователь или нет
    $userTable=mysqli_query($link,"SELECT * FROM db_users");//выбераем нужную таблицу
    while($oneUser=mysqli_fetch_assoc($userTable)){//пробегаем циклом по таблице и ищем совпадения
      if($oneUser['userName']==$userName && $oneUser['userPass']==$userPass){
        $userDetected=true;//если нашлись совпадения переменная меняется на true
        $_SESSION['u']=$oneUser;
      }
    }
    if($userDetected==false){
      unset($_SESSION['u']);
    }
  }
}
?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="myStyles.css">
</head>
<body>
<?php if(!isset($_SESSION['u'])): ?>
<!--если входит гость-->
<div class="logForm">
  <form name="userLogForm" method="POST" action="">
    <table>
      <tr>
        <td align="right">User Name:</td>
        <td><input type="email" name="userName"></td>
      </tr>
      <tr>
        <td align="right">password:</td>
        <td><input type="password" name="userPass"></td>
      </tr>
      <tr>
        <td colspan="2" align="right"><input type="submit" value="enter"></td>
      </tr>
    </table>
</div>
<?php else: ?>
<!--для опознанного пользователя-->
  <form name="userLogForm" method="POST" action="">
    <input type="hidden" name="userName" value="      " />
    <input type="hidden" name="userPass" value="      " />
    <input type="submit" value="exit">
  </form>
  <?php
  include "users.php"
   ?>
<?php endif; ?>
</body>
</html>
