<!DOCTYPE html>
<html>
<head>
	<title>Ejemplos Unidad 8</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
	<main class="container">
<?php
include("botonera_uni8.php");
?>
<section>
	<h1>PHP Mailer</h1>
<form id="form1" name="form1" method="post" action="enviar.php">	
  <table border="0">
  	<tr>
  	  <td>Nombre y apellido: </td>
      <td><input type="text" name="nombre" id="nombre" size="45" /></td>
  	</tr>
    <tr>
      <td>Teléfono: </td>
      <td><input type="text" name="telefono" id="telefono" size="45" /></td>
    </tr>
    <tr>
      <td>E-mail:</td>
      <td><input type="text" name="email" id="email" size="45" /></td>
    </tr>
    <tr>
      <td>Motivo de la consulta:</td>
      <td><input type="text" name="asunto" id="asunto" size="45" /></td>
    </tr>
    <tr>
      <td>Comentarios:</td>
      <td><textarea name="mensaje" id="comentarios" cols="37" rows="5"></textarea></td>
    </tr>
  </table>
    <input type="submit" name="enviar" id="enviar" value="Enviar" />
</form>
<?php
if(isset($_GET['ok'])) {
  echo "<h3>Correo enviado!</h3>";
} 
if(isset($_GET['error'])) { 
  echo "<h3>Error al enviar el mensaje</h3>";
}
?>
</section>
</main>
</body>
</html>