<?php
class clsFiltro{
	// este atributo puede ser util en caso de que decidamos incorporar algun editor de texto WYSIWYG para que los usuario puedan aplicar cierto formato al texto 
	
	private $tagsPermitidos = array('<b>','<p>','<br>');
	
	// en el constructoor puedo agregar algunos tags que no estén permitidos en la variable tgsPermitidos.  
	public function __construct($tags=false){
		if (!empty($tags) && is_array($tags)){
			$this->tagsPermitidos = array_merge($this->tagsPermitidos,$tags);
		}
	}
	
	public function filtrar($texto){
		if (!is_array($texto)){
			return $this->procesar($texto);
		}
		else{
			// array_map aplica la llamada de retorno especificada a los elementos de los dados
			$texto = implode('',array_map(array($this, 'procesar'), $texto));
			//la funcion htmlspecialchars convierte caracteres especiales en entidades HTML
			return htmlspecialchars($texto);
		}
	}
	
	private function procesar($t){
			
		// la funcion strip_tags elimina las etiquetas HTML y PHP de un string, recibe dos parámetros el string de etrada y las etiquetas que no deben ser tenidas en cuenta.
		return strip_tags($t,implode('',$this->tagsPermitidos));
	}
}

?>