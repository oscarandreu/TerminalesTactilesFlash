
class ficha extends datos{
	function ficha(refIn:String, fotoIN:String, zonaIn:String, provIn:String, precioIn:Number, tipoIn:String){
			ref = refIn;
			foto = fotoIN;
			zona = zonaIn;
			prov = provIn;
			precio = precioIn;
			tipo = tipoIn;
	}
	private var desc:String;//ruta de la foto
	
	function setDesc(descIn){
		desc = descIn;
	}
	function getDesc(descIn){
		return desc;
	}
	function getInmueble(){
		return inmueble;
	}
	function setInmueble(inmIn){
		inmueble = inmIn;
	}

}