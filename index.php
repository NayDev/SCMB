<?php
	session_start();
	//$conexao = mysql_connect("localhost", "root","123mudar") or die ("Conex�o n�o efetuada"); //Aqui faz a conexao com o banco de dados
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "h>
<html xmlns="http://www.w3.org/1999/xhtml">
<?php
	include('modulos/head.php');
?>
<body>
	<?php

		if(isset($_SESSION['nome'])) {
			include('modulos/modalcarrossel.php');
			include('modulos/modalcliente.php');
			include('modulos/modalfornecedor.php');
			include('modulos/modalpecas.php');
			include('modulos/modalordem.php');
			include('modulos/modalformbike.php');
			include('modulos/modalrelatorio.php');
			include('modulos/modalconsulta.php');
			include('modulos/modalformestoque.php');


		?>
		<div id="deslogarUsuario" style="cursor:pointer;" onclick="fecha()"></div>

		<div id="telaNegra" style="width: 2000px; height:808px; position: absolute; background-color: black; margin-left: -400px;	opacity: 0.8; display: none; z-index:3;"></div>

	<?php } else {
					include('modulos/login.php');
				}
	?>

</body>
</html>
