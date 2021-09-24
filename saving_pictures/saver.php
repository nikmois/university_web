<?php

function img_resize($src, $dest, $width, $height, $rgb=0xFFFFFF, $quality=100)
{
	/***********************************************************************************
Функция img_resize(): генерация thumbnails
Параметры:
  $src             - имя исходного файла
  $dest            - имя генерируемого файла
  $width, $height  - ширина и высота генерируемого изображения, в пикселях
Необязательные параметры:
  $rgb             - цвет фона, по умолчанию - белый
  $quality         - качество генерируемого JPEG, по умолчанию - максимальное (100)
***********************************************************************************/
  if (!file_exists($src)) return false;
  //ini_set('memory_limit', '32M');
  $size = getimagesize($src);
  if ($size === false) return false;
  // Определяем исходный формат по MIME-информации, предоставленной
  // функцией getimagesize, и выбираем соответствующую формату
  // imagecreatefrom-функцию.
   $format = strtolower(substr($size['mime'], strpos($size['mime'], '/')+1));
  //$format ="jpeg";
  $icfunc = "imagecreatefrom" . $format;
  if (!function_exists($icfunc)) return false;
  $x_ratio = $width / $size[0];
  $y_ratio = $height / $size[1];
  $ratio       = min($x_ratio, $y_ratio);
  $use_x_ratio = ($x_ratio == $ratio);
  $new_width   = $use_x_ratio  ? $width  : floor($size[0] * $ratio);
  $new_height  = !$use_x_ratio ? $height : floor($size[1] * $ratio);
  $new_left    = $use_x_ratio  ? 0 : floor(($width - $new_width) / 2);
  $new_top     = !$use_x_ratio ? 0 : floor(($height - $new_height) / 2);
  $isrc = $icfunc($src);
  //$isrc = imagecreatefromjpeg($src);
  $idest = imagecreatetruecolor($new_width, $new_height);
  imagefill($idest, 0, 0, $rgb);
  imagecopyresampled($idest, $isrc, 0, 0, 0, 0, $new_width, $new_height, $size[0], $size[1]);
  imagejpeg($idest, $dest, $quality);
  imagedestroy($isrc);
  imagedestroy($idest);
  return true;
}


if(isset($_FILES['prodPhoto'])){ //
	$message='';
	foreach($_FILES["prodPhoto"]["tmp_name"] as $key=>$tmp_name){
	if($_FILES["prodPhoto"]["name"][$key]!=""){
	$newNamePhoto="prod_".date("Y_m_d_h_i_s").rand(0,9).rand(0,9).rand(0,9); // prod_2021_03_01_05_07_01012 1/1000
	$tile='';
	$imgError=false;
	if(mb_strpos($_FILES["prodPhoto"]["name"][$key],'.jpg')>0){
		$newNamePhoto=$newNamePhoto.'.jpg';
		$tile='.jpg';
		$imgError=true;
	}
	if(mb_strpos($_FILES["prodPhoto"]["name"][$key],'.gif')>0){
		$newNamePhoto=$newNamePhoto.'.gif';
		$tile='.gif';
		$imgError=true;
	}
	if(mb_strpos($_FILES["prodPhoto"]["name"][$key],'.png')>0){
		$newNamePhoto=$newNamePhoto.'.png';
		$tile='.png';
		$imgError=true;
	}
	if($imgError==false){ 
		$message='<div class="alert alert-danger" role="alert">
 Ошибка загрузки фото 
</div>';
	}
	if($imgError==true){
	if(is_uploaded_file($_FILES["prodPhoto"]["tmp_name"][$key])){
		move_uploaded_file($_FILES["prodPhoto"]["tmp_name"][$key],"images/".$newNamePhoto);
		img_resize("images/".$newNamePhoto,"images/".$newNamePhoto, 1000, 1000);
		/*$prodCodePhoto=$_POST['prodCodePhoto'];
		$prodPhoto=mysqli_fetch_assoc(mysqli_query($link,"SELECT Image,base_code FROM product WHERE base_code='$prodCodePhoto' LIMIT 1"));
        if(!empty($prodPhoto['Image'])){
			$prodPhotoArr=explode(',',$prodPhoto['Image']);
			$prodPhotoArr[]=$newNamePhoto;
			$newAlbum=implode(',',$prodPhotoArr);
		}else{
			$newAlbum=$newNamePhoto;
		}
        $prodCodeLabel=$prodPhoto['base_code'];
		mysqli_query($link, "UPDATE product SET Image='".$newAlbum."'  WHERE base_code='$prodCodeLabel'");*/
	$message='<div class="alert alert-danger" role="alert">
 Загрузка завершена 
</div>';
    
    }
//	echo $newNamePhoto;
}
}
}
}

?>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<body>
<?php
    if(!empty($message)){
     echo    $message;
    }
?>
</body>
</html>