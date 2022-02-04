<?php  

class Usuarios{
	   
	private $nombre; 
	private $apellido;
	private $edad;
	function __construct($name,$surname,$age){
		$this->nombre=$name;
		$this->apellido=$surname;
		$this->edad=$age;

	}

	public function imprime_carcteristicas(){ 
		echo "<p>Nombre: <strong>".$this->nombre."</strong><br></p>";
 		echo "<p>Apellido: <strong>".$this->apellido."</strong><br></p>";
 		echo "<p>Edad: <strong>" . $this->edad."</strong></p>";
	}
	public function imprime_carcteristicas_1(){ 
		echo "<p>Nombre: <strong>".$this->nombre."</strong><br></p>";
 		echo "<p>Apellido: <strong>".$this->apellido."</strong><br></p>";
 		echo "<p>Edad: <strong>" . $this->edad."</strong></p>";
 		
	}

}




?>