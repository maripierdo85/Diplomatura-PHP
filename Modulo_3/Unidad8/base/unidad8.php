<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="estilos.css">
</head>
 
<body>
 
<div class="container">
	<header>
		<h1>Programación en PHP y MySQL - Nivel Avanzado</h1>
	

	<nav>
		<?php include("botonera.php"); ?>
	</nav>
	</header>
	<section>
		<h2>Registro</h2>
		<form action="registro/registrar.php" method="post">
			<input type="text" name="usuario" placeholder="Usuario"required>
			<input type="password" name="password" placeholder="Password" required>
		    <input type="text" name="nombre" placeholder="Nombre" required>
		    <input type="text" name="apellido" placeholder="Apellido" required>
		    <input type="text" name="email" placeholder="Email" required>
		    <input type="text" name="dni" placeholder="DNI" required>
		    <input type="submit" name="registrar" value="Registrar">
		</form>
		    <h3>
		        <?php 
		        if(isset($_GET['error_us'])) {
		            echo "El usuario ya existe";
		            }  

		        if(isset($_GET['ok'])) {
		            echo "Usuario registrado correctamente";
		        } ?>
		    </h3>
	</section>
	<aside>
		<h2>Ingrese aquí si está registrado</h2>
	    <form action="registro/login.php" method="post">
		<input type="text" name="usuario" placeholder="Usuario" required>
		<input type="password" name="password" placeholder="Password" required>
	    <input type="submit" name="ingresar" value="Ingresar">
	    <h3>
	        <?php if(isset($_GET['error'])) {
	            echo "Usuario o Contraseña incorrectos";
	            }elseif (isset($_GET['okLog'])) {
	            	echo "Login Exitoso. Puede seguir navegando por el sitio";
	            }  ?>
	    </h3>
		</form>
  	</aside>
	<footer>
		<a href="https://site.elearning-total.com/courses/?com=lb">Programación en PHP y MySQL - Nivel Avanzado</a>
	</footer>
 
</div>
</body>
</html>