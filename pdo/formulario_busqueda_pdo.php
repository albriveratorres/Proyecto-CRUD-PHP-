<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<style type="text/css">
		table{
			width: 400px;
			margin: auto;
			background-color: #FFFFCCFF;
			border: 2px;
			padding: 5px;
		}

	</style>

</head>
<body>
	<!--Pagina que realiza una busqueda a pagina_busqueda_pdo.php la cual puedes poner un campo de nombre articulo-->
	<form action="pagina_busqueda_pdo.php" method="get">
		<table><tr><td>
			Seccion:</td><td><input type="text" name="seccion"></td></tr>
			<tr><td>Pais de Origen:</td><td><input type="text" name="p_orig"></td></tr>
			<tr><td colspan="2"><input type="submit" name="enviando" value="Dale"></td></tr>
		</table>
	</form>
	
</body>
</html>