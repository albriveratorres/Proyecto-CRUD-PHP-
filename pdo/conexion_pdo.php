<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<?php 
		try{

			$base = new PDO('mysql:host=localhost; dbname=pruebas', 'root', '');
			
			echo "Conexion realizada con exito";

		}catch(Exception $e){

			die('Error: ' . $e->GetMessage());

		}finally{

			$base = null;
		}
		
	 ?>
</body>
</html>