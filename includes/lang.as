class lang{
	private var idioma:Number;
	private var out:String;
	
//################################################
	function setIdioma(idiomaIn:Number){
		this.idioma = idiomaIn;
	}
//################################################
	function getVenta(){
		switch(idioma){
			case 1:
				out = "VENTA";
				break;
			case 2:
				out = "SALE";
				break;
			case 3:
				out = "VERKAUF";
				break;			
		}
		return out;
	}
//################################################
	function getTipo(){
		switch(idioma){
			case 1:
				out = "TIPO :";
				break;
			case 2:
				out = "TYPE :";
				break;
			case 3:
				out = "TYP :";
				break;			
		}
		return out;
	}
//################################################
	function getLocalidad(){
		switch(idioma){
			case 1:
				out = "LOCALIDAD :";
				break;
			case 2:
				out = "CITY :";
				break;
			case 3:
				out = "GEMEINDE :";
				break;			
		}
		return out;
	}
//################################################
	function getProvincia(){
		switch(idioma){
			case 1:
				out = "PROVINCIA :";
				break;
			case 2:
				out = "REGION :";
				break;
			case 3:
				out = "REGION :";
				break;			
		}
		return out;
	}
//################################################
	function getPrecio(){
		switch(idioma){
			case 1:
				out = "PRECIO :";
				break;
			case 2:
				out = "PRICE :";
				break;
			case 3:
				out = "PREIS :";
				break;			
		}
		return out;
	}
//################################################
	function getInmueble(){
		switch(idioma){
			case 1:
				out = "INMUEBLE :";
				break;
			case 2:
				out = "PROPERTY :";
				break;
			case 3:
				out = "IMMOBILIE :";
				break;			
		}
		return out;
	}
//################################################
	function getHabitaciones(){
		switch(idioma){
			case 1:
				out = "HABITACIONES :";
				break;
			case 2:
				out = "ROOMS :";
				break;
			case 3:
				out = "ZIMMERS :";
				break;			
		}
		return out;
	}
//################################################
	function getInformacion(){
		switch(idioma){
			case 1:
				out = "INFORMACION :";
				break;
			case 2:
				out = "INFORMATION :";
				break;
			case 3:
				out = "UNTERWEISUNG :";
				break;			
		}
		return out;
	}
//################################################
	function getDescripcion(){
		switch(idioma){
			case 1:
				out = "DESCRIPCION :";
				break;
			case 2:
				out = "DESCRIPTION :";
				break;
			case 3:
				out = "BESCHREIBUNG :";
				break;			
		}
		return out;
	}
//################################################
	function getAlquiler(){
		switch(idioma){
			case 1:
				out = "ALQUILER";
				break;
			case 2:
				out = "RENT";
				break;
			case 3:
				out = "VERMITTLUNG";
				break;				
		}	
		return out;
	}
//################################################
	function getIdiomas(){
		switch(idioma){
			case 1:
				out = "IDIOMAS";
				break;
			case 2:
				out = "LANGUAGE";
				break;
			case 3:
				out = "SPRACHE";
				break;				
		}	
		return out;
	}
//################################################
	function getAtras(){
		switch(idioma){
			case 1:
				out = "ATRAS";
				break;
			case 2:
				out = "BACK";
				break;
			case 3:
				out = "RÜCKEN";
				break;				
		}	
		return out;
	}
//################################################
	function getPisos(){
		switch(idioma){
			case 1:
				out = "PISOS"+String.fromCharCode(13)+"Y"+String.fromCharCode(13)+"ATICOS";
				break;
			case 2:
				out = "HOUSES"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"ATICS";
				break;
			case 3:
				out = "PISOS"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"ATICOS";
				break;				
		}	
		return out;
	}
//################################################
	function getApartamentos(){
		switch(idioma){
			case 1:
				out = "APARTAMENTOS"+String.fromCharCode(13)+"Y"+String.fromCharCode(13)+"ESTUDIOS";
				break;
			case 2:
				out = "FLOOR"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"STUDY";
				break;
			case 3:
				out = "WOHNUNG"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"BEDSIT";
				break;				
		}	
		return out;
	}
//################################################
	function getAdosados(){
		switch(idioma){
			case 1:
				out = "ADOSADOS"+String.fromCharCode(13)+"Y"+String.fromCharCode(13)+"BUNGALOWS";
				break;
			case 2:
				out = "SEMI DETACHED"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"BUNGALOWS";
				break;
			case 3:
				out = "REIHENHAUS"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"BUNGALOWS";
				break;				
		}	
		return out;
	}
//################################################
	function getChalets(){
		switch(idioma){
			case 1:
				out = ""+String.fromCharCode(13)+"CHALET"+String.fromCharCode(13)+"";
				break;
			case 2:
				out = ""+String.fromCharCode(13)+"VILLA"+String.fromCharCode(13)+"";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"EINFAMILIENHAUS"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################	
	function getDuplex(){
		switch(idioma){
			case 1:
				out = "DUPLEX"+String.fromCharCode(13)+"Y"+String.fromCharCode(13)+"TRIPLEX";
				break;
			case 2:
				out = "DUPLEX"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"TRIPLEX";
				break;
			case 3:
				out = "2-ETAGENHAUS"+String.fromCharCode(13)+"AND"+String.fromCharCode(13)+"3-ETAGENHAUS";
				break;				
		}	
		return out;
	}
//################################################
		function getLocales(){
		switch(idioma){
			case 1:
				out = "LOCALES"+String.fromCharCode(13)+""+String.fromCharCode(13)+"COMERCIALES";
				break;
			case 2:
				out = "COMMERCIAL"+String.fromCharCode(13)+""+String.fromCharCode(13)+"PREMISES";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"GESCHÄFTSLADEN"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
		function getParcelas(){
		switch(idioma){
			case 1:
				out = ""+String.fromCharCode(13)+"PARCELAS"+String.fromCharCode(13)+"";
				break;
			case 2:
				out = ""+String.fromCharCode(13)+"PLOTS"+String.fromCharCode(13)+"";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"PARZELLES"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
		function getFincas(){
		switch(idioma){
			case 1:
				out = ""+String.fromCharCode(13)+"FINCAS"+String.fromCharCode(13)+"";
				break;
			case 2:
				out = "COUNTRY"+String.fromCharCode(13)+""+String.fromCharCode(13)+"HOUSES";
				break;
			case 3:
				out = "GUTSHAUS"+String.fromCharCode(13)+"ODER"+String.fromCharCode(13)+"BAUERNHOF";
				break;				
		}	
		return out;
	}
//################################################
function getCasasRurales(){
		switch(idioma){
			case 1:
				out = "CASAS"+String.fromCharCode(13)+""+String.fromCharCode(13)+"RURALES";
				break;
			case 2:
				out = "RURAL"+String.fromCharCode(13)+""+String.fromCharCode(13)+"HOUSES";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"DORFHAUS"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
function getOficinas(){
		switch(idioma){
			case 1:
				out = ""+String.fromCharCode(13)+"OFICINAS"+String.fromCharCode(13)+"";
				break;
			case 2:
				out = ""+String.fromCharCode(13)+"OFFICCE"+String.fromCharCode(13)+"";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"BÜRORÄUME"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
function getGarajes(){
		switch(idioma){
			case 1:
				out = ""+String.fromCharCode(13)+"GARAJES"+String.fromCharCode(13)+"";
				break;
			case 2:
				out = ""+String.fromCharCode(13)+"GARAGES"+String.fromCharCode(13)+"";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"GARAGES"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
function getNaves(){
		switch(idioma){
			case 1:
				out = "NAVES"+String.fromCharCode(13)+""+String.fromCharCode(13)+"INDUSTRIALES";
				break;
			case 2:
				out = "FACTORY"+String.fromCharCode(13)+""+String.fromCharCode(13)+"PREMISES";
				break;
			case 3:
				out = ""+String.fromCharCode(13)+"INDUSTRIEHALLE"+String.fromCharCode(13)+"";
				break;				
		}	
		return out;
	}
//################################################
function getFotosInicio(){
		switch(idioma){
			case 1:
				out = "Fotos inicio";
				break;
			case 2:
				out = "First photo";
				break;
			case 3:
				out = "Der photo";
				break;				
		}	
		return out;
	}
//################################################
function getMasFotos(){
		switch(idioma){
			case 1:
				out = "Mas fotos";
				break;
			case 2:
				out = "More";
				break;
			case 3:
				out = "Mehr";
				break;				
		}	
		return out;
	}
//################################################
function getDireccion(){
		switch(idioma){
			case 1:
				out = "DIRECCION :";
				break;
			case 2:
				out = "ADDRESS";
				break;
			case 3:
				out = "ADRESSE";
				break;				
		}	
		return out;
	}
//################################################
function getTelefono(){
		switch(idioma){
			case 1:
				out = "TELEFONO :";
				break;
			case 2:
				out = "PHONE :";
				break;
			case 3:
				out = "TELEFONIEREN";
				break;				
		}	
		return out;
	}
//################################################
function getFax(){
		switch(idioma){
			case 1:
				out = "FAX :";
				break;
			case 2:
				out = "FAX";
				break;
			case 3:
				out = "FAX";
				break;				
		}	
		return out;
	}
//################################################
function getOficina(){
		switch(idioma){
			case 1:
				out = "OFICINA :";
				break;
			case 2:
				out = "OFFICE";
				break;
			case 3:
				out = "BÜRORÄUME";
				break;				
		}	
		return out;
	}
//################################################
function getPagina(){
		switch(idioma){
			case 1:
				out = "Página";
				break;
			case 2:
				out = "Page";
				break;
			case 3:
				out = "Seite";
				break;				
		}	
		return out;
	}
//################################################
function getDe(){
		switch(idioma){
			case 1:
				out = "de";
				break;
			case 2:
				out = "Oof";
				break;
			case 3:
				out = "von";
				break;				
		}	
		return out;
	}
}
