<?php
if(isset($_SESSION['u'])):

//================================
if (isset($_POST["userEdited"])){
  $userName=$_POST["newUserName"];
  $userPass=md5($_POST["newUserPass"]);
  $userStatus=$_POST["newUserStatus"];
  $userID=$_POST["userEdited"];
  if (empty($_POST["userEdited"])){
    //добавление нового пользователя
    mysqli_query($link, "INSERT INTO db_users VALUES(NULL,'$userName', '$userPass', '$userStatus')");
  }
  else{
    //изменение существующего пользователя
    mysqli_query($link, "UPDATE db_users SET userName='$userName', userPass='$userPass', status='$userStatus' WHERE id='$userID'");
  }
}

//==========удаление пользователя
if (isset($_POST['userToDel'])){
  $userID=$_POST['userToDel'];
  mysqli_query($link, "DELETE FROM db_users WHERE id='$userID'");
}
//=========================


//==========получение информации о пользователе
if (isset($_POST['userToEdit'])){
  $userID=$_POST['userToEdit'];
  $userInfo=mysqli_fetch_assoc(mysqli_query($link, "SELECT * FROM db_users WHERE id='$userID'"));

}
//===========================
 ?>
<div class="userList">
<h2>Список пользователей</h2>
<table border="1px">
<?php
$usersTable=mysqli_query($link, 'SELECT * FROM db_users');
$i=1;
while($oneUser=mysqli_fetch_assoc($usersTable)){
  $userEmail=$oneUser['userName'];
  $userStatus=$oneUser['status'];
  $userID=$oneUser['id'];
  echo "<tr>
  <td>$i</td>
  <td>$userEmail</td>
  <td>$userStatus</td>
  <td>
  <form method='post' class='delForm'>
  <input type='hidden' name='userToDel' value='$userID' />
  <input type='submit' value='X' />
  </form>
  <form method='post' class='editForm'>
  <input type='hidden' name='userToEdit' value='$userID' />
  <input type='submit' value='&#9998;' />
  </form>
  </td>
  </tr>";
  $i++;
}
 ?>
</table>
</div>
<div class="userInfo">
<h2>Информация пользователей</h2>
<form class="userInfo" method="post" action="">
<table>
  <tr>
    <td align="right">User Name</td>
    <td>
      <input type="text" name="newUserName" value="<?php
      if (isset($userInfo)){
        echo $userInfo['userName'];
      }
           ?>" />
    </td>
  </tr>
  <tr>
    <td align="right">User Status</td>
    <td>
      <input type="text" name="newUserStatus" value="<?php
      if (isset($userInfo)){
        echo $userInfo['status'];
      }
           ?>" />
    </td>
  </tr>
  <tr>
    <td align="right">User Password:</td>
    <td>
      <input type="password" name="newUserPass">
    </td>

  </tr>
  <tr>
    <td align="right"></td>
    <td>
      <input type="submit" value="Save">
    </td>

  </tr>
</table>
<input type="hidden" name="userEdited" value="<?php if(isset($userInfo)){echo $userInfo['id'];} ?>" />
</form>
</div>
<?php endif;  ?>
