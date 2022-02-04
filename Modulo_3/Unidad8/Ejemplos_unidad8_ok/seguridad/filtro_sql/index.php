<!DOCTYPE html>
<html>
<head>
    <title>Ejemplos Unidad 8</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../../estilos.css">
</head>
<body>
    <main class="container">
<header>
    <h2>Ejemplos Unidad 8</h2>
    <nav>
    <ul>
        <li><a href="../../index.php">Volver a Ejemplos Unidad 8</a></li>      
    
    </ul>
    </nav>
</header>
<section>
<h2>Si ya estas registrado podes ingresar aqui:</h2>
<form action="login.php" method="post">
	Usuario: <br /><input type="text" name="usuario" /><br />
	Password: <br /><input type="password" name="password" /><br />    
    <input type="submit" name="ingresar" value="Ingresar" />
    <h3>
        <?php if(isset($_GET['error'])) {
            echo "Usuario o Contraseña incorrectos";
            }  ?>
    </h3>
</form>
<h2>Sino podes registrarte completando el siguiente formulario:</h2>
<form action="registrar.php" method="post">
	Usuario: <br /><input type="text" name="usuario" /><br />
	Password: <br /><input type="password" name="password" /><br />
    Nombre: <br /><input type="text" name="nombre" /><br />
    Apellido: <br /><input type="text" name="apellido" /><br />
    Email: <br /><input type="text" name="email" /><br />
    DNI: <br /><input type="text" name="dni" /><br />
    <input type="submit" name="registrar" value="Registrar" />
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
</main>
</body>
</html>