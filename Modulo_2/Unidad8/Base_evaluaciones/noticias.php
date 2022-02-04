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
            	<li><a href="index.php">Home</a></li><li><a href="catalogo.php">Catálogo</a></li><li><a href="noticias.php">Noticias</a></li><li><a href="clientes.php">Clientes</a></li><li><a href="contacto.php">Contáctenos</a></li>
            </ul>
        </nav>
        <div id="marca">
        	<h1>Programador web con PHP y MySQL</h1>
        </div>
    </header>
    <section id="contenido">
        <h2>Noticias</h2>
            <div id="caja_noticias">
                <?php 

                    $productos=array(
                        array('chip.jpg','¿Cuál es el origen de la crisis mundial de microchips y cómo puede afectarte?','Los fabricantes de autos y las compañías de dispositivos electrónicos enfrentan problemas para abstenerses de chips de computadora'),
                        array('transistores.jpg','Transistores inversos','Que son, para que sirven y por qué aspiran a reinventar la electrónica. Los trancitores nos prometen circuitos integrados mas sencillos, rápidos, compactos y con un consumo inferior, por lo que podrian ayudarnos a dilatar aún más la Ley de Moore'),
                        array('celular.png','El país que está luchando contra la cultura de tirar todo lo viejo a la basura','Una combinación de aficionados entusiastas , cafés de reparación y nuevas leyes que protegen el derecho a reparar podría ayudar a disminuir las crecientes montañas de aparatos electrónicos averiados.'),
                        array('litio.jpg','Qué es el litio geotermico y por qué puede revolucionar las energías limpias','Un novedoso sistema para extraer litio has resultadoser más respetuosos con el medio ambiente que otras formas más intensivas en agua o tierra como son las de Latinoamerica. ¿Ha llegado una nueva fiebre del oro?')
                    );
                    //echo $productos[0][2];

                    $len = count($productos);

                    for ($i=0; $i < $len; $i++) { ?>
                    
                        <div class="info_noticias">
                            <div class="img_noticias">
                                <img src="imagenes/<?php echo $productos[$i][0]; ?>">
                            </div>

                            <div class="prod">
                                <h4><?php echo $productos[$i][1];?></h4>
                                <p><?php echo $productos[$i][2];?></p>
                            </div>  
                        </div>  
                    <?php
                    }
                    ?>
            </div>


      
    </section>

<footer>
Desarrollado por <a href="http://www.elearning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
</section>
</body>
</html>