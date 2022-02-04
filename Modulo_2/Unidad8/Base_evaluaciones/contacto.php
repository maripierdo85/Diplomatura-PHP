<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8" />
<title>Programador web con PHP y MySQL</title>
<link href="estilos.css" rel="stylesheet"/>
</head>

<body>
<section id="contenedor">
	<header>
    	<nav id="botonera_principal">
        	<ul>
            	<li><a href="index.php">Home</a></li><li><a href="catalogo.php">Catálogo</a></li><li><a href="noticias.php">Noticias</a></li><li><a href="#">Clientes</a></li><li><a href="contacto.php">Contáctenos</a></li>
            </ul>
        </nav>
        <div id="marca">
        	<h1>Programador web con PHP y MySQL</h1>
        </div>
    </header>
    <section id="contenido">
    <h2>Contáctenos</h2>
    <div id="formulario">
      <form method="POST" action="enviar_consulta.php">
          <input type="text" name="txtNombre" placeholder="Nombre" required>
          <input type="text" name="txtApellido" placeholder="Apellido" required>
          <input type="number" name="txtEdad" min="13" max="105" placeholder="Edad">
          <input type="email" name="txtCorreo" placeholder="Correo" required>
          <select name="cboMtvoConsulta" required>
                <option value="0">Seleccione un Opción</option>
                <option value="1">Motivo 1</option>
                <option value="2">Motivo 2</option>
                <option value="3">Motivo 3</option>
          </select>
          <textarea name="txtComentario" placeholder="Comentario" maxlength="999" required></textarea>
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
   
    </section>

<footer>
Desarrollado por <a href="http://www.elerning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
</section>
</body>
</html>