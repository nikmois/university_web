<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<form method="POST">
  <input type="text" name="text1" />
  <input type="submit" value="code it" />
</form>
<?php
if(isset($_POST["text1"])){
  echo md5($_POST["text1"]);
}
?>
</body>
</html>
