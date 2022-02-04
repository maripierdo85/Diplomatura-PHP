<?php
$base = "img/PHP.png";
$marca = "img/marca_de_agua.png";
$imagen = imagecreatefrompng($marca);
$imagen2=imagecreatefromjpeg($base);
imagecopy($imagen2, $imagen, 850, 400, 0, 0, imagesx($imagen), imagesy($imagen));
header("Cotent-type: image/jpeg");
imagejpeg($imagen2);
?>