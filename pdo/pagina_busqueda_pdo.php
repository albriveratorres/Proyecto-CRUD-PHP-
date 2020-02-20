<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php 
		try{
			$busqueda_sec = $_GET["seccion"];

			$busqueda_porig = $_GET["p_orig"];


			$base = new PDO('mysql:host=localhost; dbname=pruebas', 'root', '');

			$base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$base->exec("SET CHARACTER SET utf8");

			$sql = "SELECT NOMBREARTICULO, SECCION, PRECIO, PAISDEORIGEN FROM PRODUCTOS WHERE NOMBREARTICULO = :SECC AND PAISDEORIGEN = :PORIG";

			$resultado = $base->prepare($sql);

			$resultado->execute(array(":SECC"=>$busqueda_sec, ":PORIG"=>$busqueda_porig));

			while($registro=$resultado->fetch(PDO::FETCH_ASSOC)){

				echo "Nombre Articulo: " . $registro['NOMBREARTICULO'] . " Secion: " . $registro['SECCION'] . " Precio: " . $registro['PRECIO'] . " Pais de Origen: " . $registro['PAISDEORIGEN'] . "<br>";

			}
			
			$resultado->closeCursor();

			

		}catch(Exception $e){

			die('Error: ' . $e->GetMessage());

		}finally{

			$base = null;
		}
		
	 ?>
</body>
</html>