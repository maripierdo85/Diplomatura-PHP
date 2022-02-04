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
	<?php  
		include("recursos.php");
		$mostrarProd = $prod->getProductos();
		$countCompras = $carrito->getCountCompras();

	?>
	<section>
		<h2>Productos</h2>

        <div id="tabla">
	 		<table>
	 			<th>Código</th>
				<th>Producto</th>
				<th>Descripcion</th>
				<th>Precio</th>
				<th>Agregar</th>

				<?php for($i=0; $i<count($mostrarProd); $i++) {?>
					<tr>
						<td><?php echo $mostrarProd[$i]['codigo']?> </td>
						<td><?php echo $mostrarProd[$i]['producto']?> </td>
						<td><?php echo $mostrarProd[$i]['descripcion']?> </td>
						<td><?php echo $mostrarProd[$i]['precio']?> </td>
						<td><a href="insertarCompra.php?cod=<?php echo $mostrarProd[$i]['codigo']?>&nom=<?php echo $mostrarProd[$i]['producto']?>&descr=<?php echo $mostrarProd[$i]['descripcion']?>&precio=<?php echo $mostrarProd[$i]['precio']?>">Agregar</a></td>
					</tr>
				<?php } ?>
			</table>
        </div>
	</section>
	<aside>
        <h2>Carrito</h2>
        <div id="tabla">
            <table>
	 			<th>Código</th>
				<th>Producto</th>
				<th>Precio</th>
				<th>Eliminar</th>
				 
				<?php 
					if ($countCompras[0]['cantidad']>0){
						$mostrarCarrito = $carrito->getCompras();
						for($t=0; $t<count($mostrarCarrito); $t++) {?>
							<tr>
								<td><?php echo $mostrarCarrito[$t]['codigo']?> </td>
								<td><?php echo $mostrarCarrito[$t]['producto']?> </td>
								<td><?php echo $mostrarCarrito[$t]['precio']?> </td>
								<td><a href="eliminarCompra.php?cod=<?php echo $mostrarCarrito[$t]['codigo']?>">Eliminar</a></td>
							</tr>
				<?php 
						}
					}else{
                	echo "No existen productos en el carrito";
                	}

				?>
			</table>
            
        </div>         
 	</aside>
	<footer>
		<a href="https://site.elearning-total.com/courses/?com=lb">Programación en PHP y MySQL - Nivel Avanzado</a>
	</footer>
 
</div>
</body>
</html>