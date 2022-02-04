<?php
	class Productos {
		private $bd;

		function __construct($base){
			$this->bd=$base;
		}

		public function getProductos(){
			$select = "SELECT * from productos";
			$respuesta = $this->bd->enviarConsulta($select);
			return $respuesta;
		}



	}
?>