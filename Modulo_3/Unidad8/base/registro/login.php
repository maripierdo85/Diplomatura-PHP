<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Ejemplos Unidad 8</title>
</head>

<body>
<?php
include ('../conexion.php');
include ('clsFiltroSql.php');

$filtro = new clsFiltroSql($datos_bd);

$_POST = $filtro->filtrar($_POST);

$_POST['usuario'] = $filtro->filtrar($_POST['usuario']);
$_POST['password'] = $filtro->filtrar($_POST['password']);

$result = mysqli_query($datos_bd, "SELECT * FROM usuarios WHERE usuario = '".$_POST['usuario']."' AND password = '".$_POST['password']."' ") or die(mysqli_error($datos_bd));

$row = mysqli_fetch_array($result);

if (mysqli_num_rows($result) !=0){
	$_SESSION['usuario'] = $_POST['usuario'];
	$_SESSION['password'] = $_POST['password'];

		header("Location: ../unidad8.php?okLog");
}
else {

	header("Location: ../unidad8.php?error");
	
}

?>
</body>
</html>