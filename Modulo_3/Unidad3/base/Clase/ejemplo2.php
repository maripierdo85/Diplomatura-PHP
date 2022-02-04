<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ejemplo2</title>
	<style type="text/css">
		h2{
			color: green;
		}
		.txt_rojo{
			color: red;
		}
	</style>
</head>
<body>
	<h1>Leer archivos</h1>
	<h3>fpassthru()</h3>
	<?php  
		$archivo =fopen("ejemplo1.txt", "r");
		fpassthru($archivo);
		fclose($archivo);
	?>
	<h3>fread()</h3>
	<?php  
		$archivo2 =fopen("ejemplo2.txt", "r");
		echo fread($archivo2, 5);
		fclose($archivo2);
	?>
	<h3>fgetc()</h3>
	<?php  
		$archivo3 =fopen("ejemplo3.txt", "r");
		while (!feof($archivo3)) {
			echo fgetc($archivo3)."<br>";
		}
		fclose($archivo3);
	?>
</body>
</html>