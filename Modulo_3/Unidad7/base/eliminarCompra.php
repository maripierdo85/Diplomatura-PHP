<?php

	include("recursos.php");

	$codigo=$_GET['cod'];
	

	$deleteCompra = $carrito->deleteCompra($codigo);

	header("Location: unidad7.php?ok")
?>