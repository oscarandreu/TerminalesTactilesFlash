function mainOnKeyDown() {
	var id:Number;
	timer = 0;
	id = Key.getCode();
	switch (step) {
	case 0 :
		listenerIdiomas(id);
		break;
	case 1 :
		listenerTipo(id);
		break;
	case 2 :
		listenerInmueble(id);
		break;
	case 3 :
		listenerResultados(id);
		break;
	case 4 :
		listenerFicha(id);
		break;
	case 5 :
		listenerVideo(id);
		break;
	}
}
function listenerIdiomas(id) {
	switch (id) {
	case 49 :
		idioma.setIdioma(3);
		//"ger";
		gotoAndPlay("tipo", 1);
		break;
	case 50 :
		idioma.setIdioma(2);
		//"eng";
		gotoAndPlay("tipo", 1);
		break;
	case 51 :
		idioma.setIdioma(1);
		//"esp";
		gotoAndPlay("tipo", 1);
		break;
	case 56 :
		gotoAndPlay("diseño", 1);
		break;
	}
}
function listenerTipo(id) {
	switch (id) {
	case 50 :
		tipo = "Venta";
		gotoAndPlay("inmueble", 1);
		break;
	case 53 :
		tipo = "Alquiler";
		gotoAndPlay("inmueble", 1);
		break;
	case 56 :
		gotoAndPlay("inicio", 1);
		break;
	}
}
function listenerInmueble(id) {
	switch (id) {
	case 49 :
		if (pagInm == 1) {
			inmuebleA = "Piso";
			inmuebleB = "Atico";
			gotoAndPlay("resultados", 1);
		} else {
			inmuebleA = "Parcela";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		}
		break;
	case 50 :
		if (pagInm == 1) {
			inmuebleA = "Apartamento";
			inmuebleB = "Estudio";
			gotoAndPlay("resultados", 1);
		} else {
			inmuebleA = "Finca";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		}
		break;
	case 51 :
		if (pagInm == 1) {
			inmuebleA = "Bungalow";
			inmuebleB = "Adosado";
			gotoAndPlay("resultados", 1);
		} else {
			inmuebleA = "Casa Pueblo";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		}
		break;
	case 52 :
		if (pagInm == 1) {
			inmuebleA = "Chalet";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		} else {
			inmuebleA = "Oficina";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		}
		break;
	case 53 :
		if (pagInm == 1) {
			inmuebleA = "Duplex";
			inmuebleB = "Triplex";
			gotoAndPlay("resultados", 1);
		} else {
			inmuebleA = "Garage";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		}
		break;
	case 54 :
		if (pagInm == 1) {
			inmuebleA = "Local comercial";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
		} else {
			if (valVal.charAt(11) == 1) {
			inmuebleA = "Nave industrial";
			inmuebleB = "";
			gotoAndPlay("resultados", 1);
			}
		}
		break;
	case 56 :
		gotoAndPlay("tipo", 1);
		break;
	case 57 :
		if (pagInm == 1) {
			pagInm = 2;
		} else {
			pagInm = 1;
		}
		mostrarTexto(pagInm);
		break;
	}
}
function listenerResultados(id) {
	if (id<55) {
		refe = dat[((i-6)+(id-49))].getRef();
		if (refe<>null) {
			gotoAndPlay("ficha", 1);
		}
	} else {
		switch (id) {
		case 55 :
			moveB();
			break;
		case 56 :
			gotoAndPlay("inmueble", 1);
			break;
		case 57 :
			moveF();
			break;
		}
	}
}
function listenerFicha(id) {
	switch (id) {
	case 56 :
		if (fichaMostrar) {
			mostrarFotos();
		}
		break;
	case 57 :
		gotoAndPlay("resultados", 1);
		break;
	}
}
function listenerVideo(id) {
	gotoAndPlay("inicio", 1);
}
