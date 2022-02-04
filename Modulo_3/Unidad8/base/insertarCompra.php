<?php

	include("recursos.php");

	$codigo=$_GET['cod'];
	$nombre=$_GET['nom'];
	$descripcion=$_GET['descr'];
	$precio=$_GET['precio'];

	$insertCompra = $carrito->insertCompra($codigo,$nombre,$descripcion,$precio);

	header("Location: unidad7.php?ok")
?>