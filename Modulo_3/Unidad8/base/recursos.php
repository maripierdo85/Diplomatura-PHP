<?php 

	include('basededatos.php');
	include('constantes.php');
	include('carrito.php');
	include('productos.php');

	$base = new Basededatos(SERVIDOR,USUARIO,PASS,BASE);
	$prod = new Productos($base);
	$carrito = new Carrito($base);

	
 ?>