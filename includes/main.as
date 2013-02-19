import ficha.as;
#include "listeners.as"


var cliente:String = "test";
var keylistener = new Object();
var timeOut:Number = 2700;	//3min
var idioma = new lang();
var pagInm:Number = 1;//Controla la pagina en la que me encuentro en inmueble
var server:String = "http:/localhost/touchglass";//"http://www.d-virtual.com/ginmo";//
var timer:Number = 0;
var step:Number;
var i:Number; //indica el numero de foto que se carga en resultados
var tipo:String;
var valValVenta:String = new String();
var valValAlquiler:String = new String();
keylistener.onKeyDown = mainOnKeyDown;
Key.addListener(keylistener);
fscommand("showmenu","false");
fscommand("fullscreen", "true");
fscommand("allowscale", "true");
Mouse.hide();