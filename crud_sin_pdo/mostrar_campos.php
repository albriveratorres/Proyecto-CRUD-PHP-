<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>

<style>
	table{width:50%;
	border:1px dotted #FF0000;
	margin:auto;
</style>
</head>

<body>

<?php
	require ("datos_conexion.php"); 
	
	$conexion = mysqli_connect($db_host,$db_usuario,$db_contra);
	
	mysqli_set_charset($conexion, "utf8");
	
	if(mysqli_connect_errno()){
	
		echo "Error en la conexion de la base de datos <br>";
		
		exit();
		
	}
	
	mysqli_select_db($conexion, $db_nombre) or die ("No se encuentra la base de datos");
	
	$query = "SELECT * FROM PRODUCTOS";
	
	$resultados = mysqli_query($conexion, $query);
	
	while(($fila = mysqli_fetch_array($resultados, MYSQLI_ASSOC))){
		
		echo "<table><tr><td>";

		echo $fila['CODIGOARTICULO'] . "</td><td>";
		
		echo $fila['SECCION'] . "</td><td>";
	
		echo $fila['NOMBREARTICULO'] . "</td><td>";

		echo $fila['FECHA'] . "</td><td>";

		echo $fila['PRECIO'] . "</td><td>";
	
		echo $fila['PAISDEORIGEN'] . "</td></tr></table>";
		
		echo "<br>";
		
		echo "<br>";
			
	}
	
	mysqli_close($conexion);
	
	


?>
</body>
</html>