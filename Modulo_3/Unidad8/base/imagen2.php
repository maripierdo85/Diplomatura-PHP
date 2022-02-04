<?php session_start();
header ("Content-type: image/jpeg");
$im = @imagecreate(100, 30);
$color_fondo = imagecolorallocate ($im, 250, 250, 250);
$color_texto = imagecolorallocate ($im, 240, 97, 86);
imagestring ($im, 25, 25, 5, $_SESSION["codigos"], $color_texto); imagejpeg ($im);
?>