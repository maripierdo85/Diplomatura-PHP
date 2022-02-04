<!DOCTYPE html>
<html>
<head>
	<title>Ejemplos Unidad 8</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
	<main class="container">
<?php
include("botonera_uni8.php");
?>
<section>
     <?php
		
		require ("includes/class.phpmailer.php");
		require ("includes/class.smtp.php");		
		$mail = new PHPMailer();
		
		$mail->Mailer = "smtp";
		$mail->SMTPAuth = true;
/*		
		//HOTMAIL	
		$mail->SMTPSecure = "tls"; // sets the prefix to the servier
		$mail->Host = "smtp.live.com"; // sets HOTMAIL as the SMTP server
		$mail->Port = 25; // alternate is "26" - set the SMTP port for the HOTMAIL server
		$mail->Username = "usuario@hotmail.com"; // HOTMAIL username
		$mail->Password = "password"; // HOTMAIL password		
*/
/*		
		//GMAIL	
		$mail->SMTPSecure = "tls"; 
		$mail->Host = "smtp.gmail.com"; 
		$mail->Port = 587; // si seteamos SMTPSecure = "ssl"; tenemos que setear Port = 465;
		$mail->Username = "usuario@gmail.com"; // GMAIL username
		$mail->Password = "password"; // GMAIL password		
*/
		//Cualquier otro servidor	
		$mail->Host = "c1861015.ferozo.com";
		$mail->Username="info@tecnologia-elearning.com.ar";
		$mail->Password = "PHPAvanzado2020";
		
		$mail->IsHTML(true);
		$mail->From = $_POST['email'];
		$mail->FromName = $_POST['email'];
		$mail->AddAddress("info@tecnologia-elearning.com.ar");
		$mail->Subject = "Consulta enviado desde su sitio web";
		$mail->Body = "<p>".$_POST['nombre']." ha enviado un mail por el siguiente motivo: ".$_POST['asunto']."</p><p>Con los siguientes comentarios: ".$_POST['comentarios']."</p><p>Su telefono es: ".$_POST['telefono']."</p>";
	    $exito=$mail->send();
	
 		if ($exito){	 
			print("<h2>Gracias por contactarnos.  </h2>");
 		}
 		else{
 			print("<h2>Error al enviar el mensaje. Por favor intentelo nuevamente.  </h2>");
 		}
		
	?>     
    <a href="ejemplo_2.php">Volver</a>
</body>
</html>
