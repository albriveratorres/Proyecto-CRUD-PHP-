<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php
	
		//$busqueda = $_GET["buscar"]; se usa cuando viene de otra pagina

		$cod  = $_GET["c_art"];

		$sec  = $_GET["seccion"];

		$nom  = $_GET["n_art"];

		$pre  = $_GET["precio"];

		$fec  = $_GET["fecha"];

		$por  = $_GET["p_orig"];

		require ("datos_conexion.php"); 
		
		$conexion = mysqli_connect($db_host,$db_usuario,$db_contra);
		
		mysqli_set_charset($conexion, "utf8");
		
		if(mysqli_connect_errno()){
		
			echo "Error en la conexion de la base de datos <br>";
			
			exit();
			
		}
		
		mysqli_select_db($conexion, $db_nombre) or die ("No se encuentra la base de datos");

		mysqli_set_charset($conexion, "utf8");
		
		$query = "UPDATE PRODUCTOS SET CODIGOARTICULO = '$cod', SECCION = '$sec', NOMBREARTICULO = '$nom', PRECIO = '$pre', FECHA = '$fec', PAISDEORIGEN = '$por' WHERE CODIGOARTICULO = '$cod' ";
		
		$resultados = mysqli_query($conexion, $query);

		if ($resultados == false) {
			# code...
			echo "Error en la consulta";

		}else{

			echo "Resgistros guardados correctamente <br><br>";

			echo "<table><tr><td>$cod</td><tr>";

			echo "<tr><td>$sec</td><tr>";

			echo "<tr><td>$nom</td><tr>";

			echo "<tr><td>$pre</td><tr>";

			echo "<tr><td>$fec</td><tr>";

			echo "<tr><td>$por</td><tr></table>";

		}
		
	
		
		mysqli_close($conexion);
		



	?>
</body>
</html>