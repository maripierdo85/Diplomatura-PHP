<?php
	$ruta="img/unidad4.jpg";
	
	$fuente = imagecreatefromjpeg($ruta);
	
	$alto=150;
	$ancho=150;
	$imgAncho = imagesx ($fuente);
	$imgAlto =imagesy($fuente);
	$imagen = ImageCreate($ancho,$alto);
	ImageCopyResized($imagen,$fuente,0,0,0,0,$ancho,$alto,$imgAncho,$imgAlto);
	imageGif($imagen,"unidad4.gif");


	echo'<img src="unidad4.gif">';
?>