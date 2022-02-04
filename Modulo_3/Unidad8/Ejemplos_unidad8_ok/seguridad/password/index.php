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
<h2>Registrar Password:</h2>
<form action="register.php" method="post">
	Usuario: <br /><input type="text" name="usuario" /><br />
	Password: <br /><input type="password" name="clave" /><br />    
    <input type="submit" name="ingresar" value="Ingresar" />
    <h3>
        <?php if(isset($_GET['ok'])) {
            echo "Usuario registrado";
            }  ?>
    </h3>
</form>
<h2>Ingresar:</h2>
<form action="ingreso.php" method="post">
    <!-- probar con usuario: admin / contraseña: admin -->
    Usuario: <br /><input type="text" name="usuario" /><br />
    Password: <br /><input type="password" name="clave" /><br />    
    <input type="submit" name="ingresar" value="Ingresar" />
    <h3>
        <?php if(isset($_GET['error'])) {
            echo "Contraseña incorrecta";
            }  
            if(isset($_GET['verificado'])) {
            echo "Contraseña verificada!";
            } ?>
    </h3>
</form>
    
</section>
</main>
</body>
</html>