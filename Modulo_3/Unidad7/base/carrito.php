<?php
	class Carrito {
		private $bd;

		function __construct($base){
			$this->bd=$base;
		}

		public function insertCompra($codigo,$producto,$descripcion,$precio){
			$insert="INSERT INTO compras VALUES ($codigo,'$producto','$descripcion',$precio)";
			$respuesta = $this->bd->enviarConsulta($insert);
			return $respuesta;
		}

		public function getCompras(){
			$select = "SELECT * from compras";
			$respuesta = $this->bd->enviarConsulta($select);
			return $respuesta;
		}

		public function getCountCompras(){
			$select = "SELECT count(*) as cantidad from compras";
			$respuesta = $this->bd->enviarConsulta($select);
			return $respuesta;
		}

		public function updateCompra($codigo,$producto,$descripcion,$precio){
			$update = "UPDATE compras set producto='$producto', descripcion='$descripcion', precio=$precio where codigo = $codigo";
			$respuesta = $this->bd->enviarConsulta($update);
			return $respuesta;

		}

		public function deleteCompra($codigo){
			$delete = "DELETE from compras where codigo = $codigo";
			$respuesta = $this->bd->enviarConsulta($delete);
			return $respuesta;
		}



	}
?>