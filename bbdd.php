<?
	//#######################################################
	function FormatPrecio($in){
		$l = strlen($in)-4;
		$j = 1;
		for($i=$l; $i>=0; $i--){
				$tmp .= $in[$i];
				if(($j%3==0) && ($i<>0)){
					$j=1;
					$tmp.=".";
				}else{
					$j++;
				}
		}
		for($i=strlen($tmp)-1; $i>=0; $i--)
			$out.= $tmp[$i];			
		return $out;
	}
	//#######################################################
	function datos($tipo,$inmuebleA,$inmuebleB){
		$conex=@odbc_connect(bbddCasas,"","");
		$query="SELECT Refinternet,Localidad,Inmueble,Precioeu,Provincia,Zona,clavecli FROM bbddCasas WHERE Tipo='".$tipo."' AND (Inmueble='".$inmuebleA."' OR Inmueble='".$inmuebleB."') ORDER BY Localidad";
		$res=@odbc_exec($conex,$query);
		$i=0;
		while(@odbc_fetch_row($res)){
			$ref = @odbc_result($res,"clavecli");
			$foto=@odbc_result($res,"Refinternet");
			$prov= ucfirst(strtolower(@odbc_result($res,"Provincia")));
			$zona= ucfirst(strtolower(@odbc_result($res,"Zona")));
			$tipo= ucfirst(strtolower(@odbc_result($res,"Inmueble")));
			$precio= FormatPrecio(@odbc_result($res,"Precioeu"));
			$out = $out."&foto".$i."=/prod_foto/foto_".$foto."_01d.jpg"."&prov".$i."=".$prov."&zona".$i."=".$zona."&ref".$i."=".$ref."&tipo".$i."=".$tipo."&precio".$i."=".$precio;
			$i++;
			}
	$out=$out."&n=".$i;
	if($i % 6 == 0){
		$pagTot = $i / 6;
	}else{
		$pagTot = floor($i/6)+1;
	}
	$out=$out."&totalPag=".$pagTot;
	odbc_free_result($res);
	return $out;
	}
	//#######################################################	
	function ficha($ref){
		$conex=@odbc_connect(bbddCasas,"","");
		$query="SELECT * FROM bbddCasas  WHERE clavecli='".$ref."'";
		$res=@odbc_exec($conex,$query);
		$foto=@odbc_result($res,"Refinternet");
		$prov= ucfirst(strtolower(@odbc_result($res,"Provincia")));
		$zona= ucfirst(strtolower(@odbc_result($res,"Zona")));
		$tipo= ucfirst(strtolower(@odbc_result($res,"Tipo")));
		$inmueble= ucfirst(strtolower(@odbc_result($res,"Inmueble")));
		$ofi= ucfirst(strtolower(@odbc_result($res,"Empresa")));
		$tel= @odbc_result($res,"Telf");
		$fax= @odbc_result($res,"Fax");
		$dir= @odbc_result($res,"Direccion");
		$hab= @odbc_result($res,"Habitaciones");
		$precio= FormatPrecio(@odbc_result($res,"Precioeu"));
		$desc= utf8_encode(@odbc_result($res,"Descripcion"));
		for($i = 1; $i < 7; $i++){
			if(file_exists("prod_foto/foto_".$foto."_0".$i.".jpg")){
				$disp = $disp."1";
			}else{
			$disp = $disp."0";
			}
		}
		$out = "foto=/prod_foto/foto_".$foto."&inmueble=".$inmueble."&prov=".$prov."&zona=".$zona."&tipo=".$tipo."&precio=".$precio."&desc=".$desc."&disp=".$disp."&tel=".$tel."&dir=".$dir."&fax=".$fax."&ofi=".$ofi."&Habs=".$hab;
	odbc_free_result($res);
	return $out;
	}
	//#######################################################
	function tokenizer($datos){
	$j=0;
	$fin = strlen($datos);
	for($i = 0; $i < $fin; $i++){
		if($datos[$i]<>","){
			$tmp .= $datos[$i];
			}else{
			$out[$j] = $tmp;
			$tmp = "";
			$j++;
			}
		}
	return $out;
	}

	function test($tipo,$datos){
	$dat = tokenizer($datos);
	for($i = 0; $i<12; $i++){
	$out.= $dat[$i].",";
	}
	return $out;
	}
	//#######################################################
	function tipos($datos,$cliente){
		$dat = tokenizer($datos);
		$conex=@odbc_connect(dviInmobiliaria,"","");
		$out = "&arrayposVenta=";
		for($i = 0,$j = 0; $i<24; $i+=2, $j++){
			$query="SELECT Ref FROM bbddCasas WHERE Tipo='Venta' AND (Inmueble='".$dat[$i]."' OR Inmueble='".$dat[$i+1]."')";
			$res=@odbc_exec($conex,$query);
			if(@odbc_fetch_row($res)){
				$out = $out."1";
				}else{
				$out = $out."0";
				}		
		}
		odbc_free_result($res);
		$out = $out."&arrayposAlquiler=";
		for($i = 0,$j = 0; $i<24; $i+=2, $j++){
			$query="SELECT Ref FROM bbddCasas WHERE Tipo='Alquiler' AND (Inmueble='".$dat[$i]."' OR Inmueble='".$dat[$i+1]."')";
			$res=@odbc_exec($conex,$query);
			if(@odbc_fetch_row($res)){
				$out = $out."1";
				}else{
				$out = $out."0";
				}		
		}		
		$query="SELECT visitas FROM visitas WHERE cod='".$cliente."'";
		$res=@odbc_exec($conex,$query);
		$vis = @odbc_result($res,"visitas");
		$vis++;
		$query="UPDATE visitas SET visitas=".$vis." WHERE cod='".$cliente."'";
		$res=@odbc_exec($conex,$query);
		return $out;
	}
	//#######################################################
		$conex=@odbc_connect(bbddCasas,"","");
		$query="SELECT * FROM bbddCasas";
		$res=@odbc_exec($conex,$query);
		$i=0;
		while(@odbc_fetch_row($res)){
			$ref = @odbc_result($res,"clavecli");
			$foto=@odbc_result($res,"Refinternet");
			$prov= ucfirst(strtolower(@odbc_result($res,"Provincia")));
			$zona= ucfirst(strtolower(@odbc_result($res,"Zona")));
			$tipo= ucfirst(strtolower(@odbc_result($res,"Inmueble")));
			$precio= FormatPrecio(@odbc_result($res,"Precioeu"));
			$out = $out."&foto".$i."=/prod_foto/foto_".$foto."_01d.jpg"."&prov".$i."=".$prov."&zona".$i."=".$zona."&ref".$i."=".$ref."&tipo".$i."=".$tipo."&precio".$i."=".$precio;
			$i++;
			}
	$out=$out."&n=".$i;
	if($i % 6 == 0){
		$pagTot = $i / 6;
	}else{
		$pagTot = floor($i/6)+1;
	}
	$out=$out."&totalPag=".$pagTot;
	echo $out;
	odbc_free_result($res);
	
	
	
	
	
	
	switch($f){
		case 1:
				echo datos($tipo,$inmuebleA,$inmuebleB);
				break;
		case 2:
				echo ficha($ref);
				break;
		case 3:
				echo tipos($datos,$cliente);
				break;
	}
	@odbc_close($conex);
	//#######################################################
?>