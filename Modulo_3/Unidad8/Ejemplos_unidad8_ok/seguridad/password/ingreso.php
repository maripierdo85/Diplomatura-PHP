<?php
include("password.php");
$clave = $_POST['clave'];
$usuario = $_POST['usuario'];
$bd=mysqli_connect("localhost", "root", "", "php_avanzado") or die ("Error al conectar con la base de datos");

$consulta=mysqli_query($bd, "SELECT clave FROM user_pass WHERE usuario='$usuario'");


$codificado = mysqli_fetch_array($consulta);

$iguales = password_verify($clave, $codificado['clave']);
if ($iguales) {
 header("Location: index.php?verificado");
} else {
 header("Location: index.php?error");
}

?>