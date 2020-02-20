<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

<?php
	//------------------pagina que realiza una busqueda en todo el codigo con el boton dale-------------------------------------
	/*
		recibe como parametro una palabra y la busca en la base de datos pruebas (base de datos se guarda en archivo datos_conexion.php -se puede modificar-, y devuelve todos los campos en una misma pagina,)

	*/

	function ejecuta_consulta($labusqueda){

		//$busqueda = $_GET["buscar"]; se usa cuando viene de otra pagina

		require ("datos_conexion.php"); 
		
		$conexion = mysqli_connect($db_host,$db_usuario,$db_contra);
		
		mysqli_set_charset($conexion, "utf8");
		
		if(mysqli_connect_errno()){
		
			echo "Error en la conexion de la base de datos <br>";
			
			exit();
			
		}
		
		mysqli_select_db($conexion, $db_nombre) or die ("No se encuentra la base de datos");

		mysqli_set_charset($conexion, "utf8");
		
		$query = "SELECT * FROM PRODUCTOS WHERE NOMBREARTICULO like '%$labusqueda%'";
		
		$resultados = mysqli_query($conexion, $query);
		
		while(($fila = mysqli_fetch_array($resultados, MYSQLI_ASSOC))){
			
			//echo "<table><tr><td>";
			
			echo "<form action='Actualizar.php' method='get'>";

			echo "<input type='text' name='c_art' value='" . $fila['CODIGOARTICULO'] ."''><br>";

			echo "<input type='text' name='seccion' value='" . $fila['SECCION'] ."''><br>";

			echo "<input type='text' name='n_art' value='" . $fila['NOMBREARTICULO'] ."''><br>";

			echo "<input type='text' name='precio' value='" . $fila['FECHA'] ."''><br>";

			echo "<input type='text' name='fecha' value='" . $fila['PRECIO'] ."''><br>";

			echo "<input type='text' name='p_orig' value='" . $fila['PAISDEORIGEN'] ."''><br>";

			echo "<input type='submit' name='enviando' value='Actualizar'>";
						
			echo "</form><br>";
			
			echo "<br>";
				
		}
		
		mysqli_close($conexion);
		
	}


?>
</head>
<body>
	<?php
	
	$mibusqueda = $_GET["buscar"];

	$mipag = $_SERVER["PHP_SELF"];

	if($mibusqueda!= null){

		ejecuta_consulta($mibusqueda);

	}else{

		echo (" <form action=' " . $mipag . " ' method='get'>
				<label>Buscar:<input type='text' name='buscar'></label>
				<input type='submit' name='enviando' value='Dale'>
			</form> ");
	}

	?> 

</body>
</html>