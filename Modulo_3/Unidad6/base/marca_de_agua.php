<?php
$base = "img/PHP.png";
$marca = "img/marca_de_agua.png";
$imagen = imagecreatefrompng($marca);
$imagen2=imagecreatefrompng($base);
imagecopy($imagen2, $imagen, 50, 10, 0, 0, imagesx($imagen), imagesy($imagen));
header("Cotent-type: image/jpeg");
imagepng($imagen2);
?>