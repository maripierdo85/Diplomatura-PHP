<?php
session_start(); // Iniciamos la sesión
?>
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
		<h2>Consultas</h2>
        <div id="tabla">
            <?php 
                include('generar_consulta.php');

                echo "<table><tr><th>Apellido</th><th>Nombre</th><th>Email</th><th>Consulta</th></tr>";

                while ($consultas=mysqli_fetch_assoc($result)) { 
                    echo "<tr>
                    <td>" . $consultas["apellido"]. "</td>
                    <td>" . $consultas["nombre"]. "</td>
                    <td>" . $consultas["email"]. "</td>
                    <td>" . $consultas["consulta"]. "</td>
                    </tr>";     
                }
                echo "</table>";
            ?>
        </div>

	</section>
	<aside>

    	<h2>Cargar Comentario</h2>
    	<div id="formulario">

			<form method="POST" action="cargar.php" enctype="multipart/form-data">
				<input type="text" name="txtNombre" placeholder="Nombre" required>
				<input type="text" name="txtApellido" placeholder="Apellido" required>
				<input type="email" name="txtEmail" placeholder="Correo" required>
				<textarea name="txtComentario" placeholder="Comentario" maxlength="999" required></textarea>
				
				<?php
				$numero1= rand(0,9);
				$numero2= rand(0,9);
				$numero3= rand(0,9);
				$minus =
				array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","ñ","o","p","q","r","s","t","u","v",
				"w","x","y","z");
				$mayus =
				array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","R","S","T","U
				","V","W","X","Y","Z");
				$signos = array("!","#","$","%","&","=");
				$generador_min = rand(0,26);
				$generador_may = rand(0,26);
				$generador_sig = rand(0,5);
				$_SESSION["codigos"] =
				($numero1).($minus[$generador_min]).($numero2).($mayus[$generador_may]).($signos[
				$generador_sig]).($numero3);
				// Guardamos el texto del CAPTCHA en la session
				print "<p>Captcha </p><img src=imagen2.php>";
				?>

				<input type="text" name="txtConfirmacion"  placeholder="Ingrese Captcha" required />
				

				<input type="submit" name="btnSubmit" value="Registrar">
			</form>
			<?php  
				if(isset($_GET['ok'])){?>
				    <script type="text/javascript">
				        alert("Regist+ro Completo");
				    </script>
				  
				<?php }elseif (isset($_GET['error'])) {?>
					<script type="text/javascript">
				        alert("Captcha ingresado incorrectamente");
				    </script>
				<?php }	?>
		</div> 

  </aside>
	<footer>
		<a href="https://site.elearning-total.com/courses/?com=lb">Programación en PHP y MySQL - Nivel Avanzado</a>
	</footer>
 
</div>
</body>
</html>