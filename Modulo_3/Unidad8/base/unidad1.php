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
		<h2>Agenda de clases</h2>
    	 <div id="tabla">
            <?php 
                include('ver_clases.php');

                echo "<table><tr><th>Unidad</th><th>Fecha</th></tr>";

                while ($lista_unidades=mysqli_fetch_assoc($result)) { 
                    echo "<tr><td>" . $lista_unidades["unidad"]. "</td><td>" . $lista_unidades["fecha"]. "</td></tr>";     
                }
                echo "</table>";
            ?>
        </div>
	</section>
	<aside>
		<h2>Ingresar nueva unidad</h2>
		<div id="formulario">
			<form method="POST" action="insertar_clases.php">
			  <input type="text" name="txtUnidad" placeholder="Unidad" required>
			  <input type="date" name="cboFecha" required>
			  <input type="submit" name="btnSubmit" value="Registrar">
			</form>
			<?php  
			if(isset($_GET['ok'])){?>
			    <script type="text/javascript">
			        alert("Registro Completo");
			    </script>
			  
			<?php }
			?>
          
    	</div>

  </aside>
	<footer>
		<a href="https://site.elearning-total.com/courses/?com=lb">Programación en PHP y MySQL - Nivel Avanzado</a>
	</footer>
 
</div>
</body>
</html>