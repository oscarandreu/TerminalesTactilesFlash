class datos{
	private var foto:String;//ruta de la foto
	private var zona:String;	//Localidad
	private var ref:String;//Referencia
	private var tipo:String;
	private var precio:Number;
	private var inmueble:String;
	private var prov:String;

	//Constructor de la clase
	//Se le llama -> var instancia:clase = new clase();
	function datos(refIn:String, fotoIN:String, zonaIn:String, provIn:String, precioIn:Number, tipoIn:String){
			ref = refIn;
			foto = fotoIN;
			zona = zonaIn;
			precio = precioIn;
			tipo = tipoIn;
			prov = provIn;
	}
	function getFoto(){
		return foto;
	}
	function getProv(){
		return prov;
	}
	function getRef(){
		return ref;
	}
	function getPrecio(){
		return precio;
	}
	function getTipo(){
		return tipo;
	}
	function getZona(){
		return zona;
	}
}