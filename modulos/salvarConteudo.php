<?php
	//set_time_limit(0);
	session_start();
	define('MEU_SCHEMA', 'scmb_schema');
	require_once("../dompdf/dompdf_config.inc.php");

	$conexao = mysql_connect("localhost", "usuario","123mudar") or die ("Conex�o n�o efetuada");

	if($_POST['action']) {
		$action = $_POST['action'];
	}

	salvarController::__start($action);

	class salvarController{

		public function __start($action){
			salvarController::__opcao($action);
		}

		public function __opcao($action){

			switch ($action) {

				case 'salvarpeca': // tentativas
				$res= salvarController::salvarpeca($_POST['referencia'], $_POST['nome'], $_POST['unidade'], $_POST['marca'], $_POST['valor']);
				break;

				case 'consultarpeca':// tentativas
				$res = salvarController::consultarpeca();
				break;

				case 'salvarBike': // função de salvar a bike usando seus criterios
				$res = salvarController::salvarBike($_POST['marca'], $_POST['modelo'], $_POST['aro'], $_POST['cor']);
				break;

				case 'consultarBike':
				$res = salvarController::consultarBike();
				break;

				case 'loginUsuario':
				$res = salvarController::loginUsuario($_POST['usuario'], $_POST['senha']);
				break;

				case 'deslogarUsuario':
				$res = salvarController::deslogarUsuario();
				break;

				case 'salvarcliente':
				$res = salvarController::salvarcliente($_POST['nome'],	$_POST['sexo'], $_POST['data_nasc'], $_POST['rg'], $_POST['cpf'], $_POST['telefone'], $_POST['celular'], $_POST['email'], $_POST['rua'], $_POST['numero'], $_POST['bairro'], $_POST['cidade'], $_POST['lista'], $_POST['cep'], $_POST['complemento']);
				break;

				case 'salvarfornecedor':
				$res = salvarController::salvarempresa($_POST['dados_empresa'], $_POST['dados_fornecedor']);
				break;

				case 'salvarordem':
					$res = salvarController::salvarordem($_POST['tipo'], $_POST['vlo'], $_POST['dte'], $_POST['dts'], $_POST['cli'], $_POST['bik'], $_POST['listaEstoque']);
				break;

				case 'buscarporcpf':
					$res = salvarController::buscarPorCPF($_POST['valor']);
				break;

				case 'selecaoBicicletas':
					$res = salvarController::selecaoBicicletas($_POST['id']);
				break;

				case 'selecaopeca': // tentativa
					$res = salvarController::selecaopeca($_POST['id']);
				break;

				case 'atualizarPeca':
					$res = salvarController::atualizarPeca($_POST['id_peca'], $_POST['unidade'], $_POST['valor']);
				break;

				case 'consultarBikeCPF':
					$res = salvarController::consultarBikeCPF($_POST['id']);
				break;

				case 'consultarOSCPF':
					$res = salvarController::consultarOSCPF($_POST['id']);
				break;

				case 'selecaoTipoServico':
					$res = salvarController::selecaoTipoServico($_POST['id']);
				break;

				case 'filtrarQuantidade':
					$res = salvarController::filtrarQuantidade($_POST['id_estoque']);
				break;

				case 'rel_Cliente':
					$res = salvarController::rel_Cliente();
				break;

				case 'rel_Fornecedor':
					$res = salvarController::rel_Fornecedor();
				break;

				case 'rel_Peca':
					$res = salvarController::rel_Peca();
				break;

				case 'rel_Ordem':
					$res = salvarController::rel_Ordem();
				break;

				case 'inf_Cliente':
					$res = salvarController::inf_Cliente($_POST['dados']);
				break;
			}
			echo json_encode($res);
		}

		public function gerar_pdf($id){
				$ord =  array();
				$sql = "SELECT
						ts.nome_servico,
							os.valor_ordem_de_servico,
							os.data_entrada_ordem_de_servico,
							os.data_saida_ordem_de_servico,
							c.nome_cliente,
							c.telefone_cliente,
							c.rua_cliente,
							c.numero_cliente,
							c.email_cliente,
							b.*
					FROM
						scmb_schema.ordem_de_servico AS os,
							scmb_schema.tipos_servico AS ts,
							scmb_schema.clientes AS c,
							scmb_schema.bicicleta AS b
					WHERE
						os.id_tipo_de_servico = ts.id_tipos_servico AND
							os.id_cliente = c.idCliente AND
							os.id_bicicleta = b.id_bicicleta AND
							os.id_ordem_de_servico='". $id . "'";


							/* LOGICA DO BANCO DE DADOS E ARRAY */
							$pdf = mysql_query($sql);
							while($resultado = mysql_fetch_array($pdf)){
								$ord[] = array_map('utf8_encode', $resultado);
							}

							$nome = $ord[0]['nome_cliente'];
							$telefone = $ord[0]['telefone_cliente'];
							$end = $ord[0]['rua_cliente'];
							$email = $ord[0]['email_cliente'];
							$modelo = $ord[0]['modelo_bicicleta'];
							$marca = $ord[0]['marca_bicicleta'];
							$cor = $ord[0]['cor_bicicleta'];
							$aro = $ord[0]['aro_bicicleta'];
							$tip = $ord[0]['nome_servico'];
							$dta_ent = $ord[0]['data_entrada_ordem_de_servico'];
							$dta_sai = $ord[0]['data_saida_ordem_de_servico'];
							$vtl = $ord[0]['valor_ordem_de_servico'];

							$dta_sai_dia = substr($dta_sai, 8, 2);
							$dta_sai_mes = substr($dta_sai, 5, 2);
							$dta_sai_ano = substr($dta_sai, 0, 4);

							$dta_sai = $dta_sai_dia . "/" . $dta_sai_mes . "/" . $dta_sai_ano;

							$dta_ent_dia = substr($dta_ent, 8, 2);
							$dta_ent_mes = substr($dta_ent, 5, 2);
							$dta_ent_ano = substr($dta_ent, 0, 4);

							$dta_ent = $dta_ent_dia . "/" . $dta_ent_mes . "/" . $dta_ent_ano;

						/*Montando o Html*/

					$html = '<!DOCTYPE html>
						<html lang="pt-br">
							<head>
								<meta http-equiv = "content-type" content ="text/html";	charset= utf-8/>


							</head>
								<body>
									<div style="width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;">
										<img style="margin-top:10px; " src="../images/logo.png">
									<div  style="margin-left:220px;color:blue;margin-top:-120px;">
										<h1>Sistema SCMB</h1>
										<hr style=" width:500px;margin-top:-15px; float:left; margin-left:-10px;"/>
									</div>
										<h1 style="margin-left:300px; margin-top:-15px;">Ordem de Servi&ccedil;o</h1>
										<hr style="margin-top:-40px;width:720px;margin-left:-10px;"/>
										<h2 style="margin-top:-2px;">Dados Cliente</h2>
											<table id="tabela" style="width:80%" >
												<tr>
													<th style="margin-right:20px;">Cliente:</th><td>'. $nome .'</td>
													<th>Telefone:</th><td>'.$telefone.'</td>
												</tr><br/><br/>
												<tr>
													<th>Endere&ccedil;o:</th>
													<td>'.$end.'</td>
													<th>E-mail:</th><td>'.$email.'</td>
												</tr>
												</table>
													<hr style="margin-top:-10px;width:720px;margin-left:-10px;"/>

												<h2 style="margin-top:-2px;">Dados Bicicleta</h2>
													<table style="width:80%">
														<tr>
															<th>Modelo:</th><td>'. $modelo .'</td>
															<th>Marca:</th><td>'.$marca.'</td>
														</tr><br/><br/>
														<tr>
															<th>Cor:</th><td>'.$cor.'</td>
															<th>Aro:</th><td>'.$aro.'</td>
														</tr>
														</table>
														<hr style="margin-top:-10px;width:720px;margin-left:-10px;"/>
															<h2 style="margin-top:-2px;">Tipo de Servi&ccedil;o</h2>
																<table style="width:80%">
															<tr>
																<th>Tipo de Servi&ccedil;o:</th><td>'. $tip .'</td>
															</table><br/>
															<hr style="margin-top:-10px;width:720px;margin-left:-10px;"/>
																	<h2 style="margin-top:-2px;">Informa&ccedil;&otilde;es</h2>
																	<table style="width:80%">
																		<tr>
																			<th>Data de Entrada:</th><td>'. $dta_ent .'</td>
																			<th>Data de Sa&iacute;da:</th><td>'.$dta_sai.'</td>
																		</tr><br/><br/>
																		<tr>
																			<th>Valor Total:</th><td>'.$vtl.'</td>
																		</tr>
																		</table>
																			<hr style="margin-top:-10px;width:720px;margin-left:-10px;"/>

																		<table style="margin-top:80px; width: 79%;">
																			<tr>
																				<td style="width:40%;"><hr /></td>
																				<td style="width:10%;"></td>
																				<td style="width:40%;"><hr /></td>
																			</tr>
																			<tr>
																				<td style="text-align:center;">CLIENTE</td>
																				<td></td>
																				<td style="text-align:center;">LOJA</td>
																			</tr>
																		</table>


													</div>
					</body>
					</html>';

					//$html = utf8_encode($html);

					$sql = "INSERT INTO `" . MEU_SCHEMA . "`.gerar_pdf (texto) VALUES ('" . $html ."')";

					$res = mysql_query($sql);

					if($res != 1)
						return false;

						return true;
		}

		public function filtrarQuantidade($id){
			$vetor = array();

			$sql = "SELECT id_estoque, valor_estoque, unidade_estoque FROM scmb_schema.estoque WHERE id_estoque = '" . $id . "'";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}
			return $vetor;
		}

		public function rel_Cliente(){
			$vetor[] = array();

			$sql = "SELECT
									*
							FROM
									scmb_schema.clientes";

			$resultado = mysql_query($sql);

			while ($rest = mysql_fetch_array($resultado)) {
				$vetor[] = array_map('utf8_encode',$rest);
			}

			return $vetor;
		}

		public function inf_Cliente($id){
			$vetor[] = array();

			$sql = "SELECT * FROM scmb_schema.clientes where idCliente ='".$id."'";

			$resultado = mysql_query($sql);

			while ($rest = mysql_fetch_array($resultado)) {
				$vetor[] = array_map('utf8_encode',$rest);
			}

			return $vetor;
		}



		public function rel_Fornecedor(){
			$vetor[] = array();

			$sql = "SELECT
							id_fornecedor,
							nome_fornecedor,
					    cpf_fornecedor,
					    telefone_fornecedor,
					    celular_fornecedor,
					    email_fornecedor

								FROM
									scmb_schema.fornecedor;";

			$resultado = mysql_query($sql);

			while ($rest = mysql_fetch_array($resultado)) {
				$vetor[] = array_map('utf8_encode',$rest);
			}

			return $vetor;
		}

		public function rel_Peca(){
			$vetor[] = array();

			$sql = "SELECT
							id_estoque,
							nome_estoque,
							unidade_estoque,
					    marca_estoque,
					    valor_estoque


								FROM
									scmb_schema.estoque;";

			$resultado = mysql_query($sql);

			while ($rest = mysql_fetch_array($resultado)) {
				$vetor[] = array_map('utf8_encode',$rest);
			}

			return $vetor;
		}


		public function rel_Ordem(){
			$vetor[] = array();

			$sql = "SELECT
									ord.id_ordem_de_servico,
									t.nome_servico,
							    ord.data_entrada_ordem_de_servico,
							    ord.data_saida_ordem_de_servico,
							    ord.valor_ordem_de_servico
 						FROM scmb_schema.tipos_servico as t, scmb_schema.ordem_de_servico as ord
	    			where t.id_tipos_servico = ord.id_tipo_de_servico";

			$resultado = mysql_query($sql);

			while ($rest = mysql_fetch_array($resultado)) {
				$vetor[] = array_map('utf8_encode',$rest);
			}

			return $vetor;
		}

		public function retornarListaPecas($id){
			$vetor = array();

			$sql = "SELECT
									e.id_estoque,
									e.nome_estoque,
							    e.unidade_estoque,
							    e.valor_estoque
							FROM
								scmb_schema.estoque AS e
							WHERE
								e.id_referencia = '" . $id . "'";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}

			return $vetor;
		}

		public function selecaoTipoServico($id){
			$sql = "SELECT
								ps.id_peca_servico,
								ps.id_tipos_servico,
								ps.id_referencia,
								r.nome_referencia
							FROM
								scmb_schema.peca_servico AS ps,
								scmb_schema.referencia AS r
							WHERE
								ps.id_referencia = r.id_referencia AND
								ps.id_tipos_servico = '" . $id . "'";


				$res = mysql_query($sql);
				$cont = 0;

				while($resultado = mysql_fetch_array($res)){
					$vetor[] = array_map('utf8_encode', $resultado);

					$id_ref = $vetor[$cont]['id_referencia'];
					$lista_ref = salvarController::retornarListaPecas($id_ref);

					array_push($vetor[$cont], $lista_ref);
					$cont++;
				}

				return $vetor;
		}

		public function consultarOSCPF($id){
			if(!$id) return false;

			$sql = "SELECT os.*, ts.nome_servico as 'nome_servico'
								FROM scmb_schema.ordem_de_servico AS os,scmb_schema.tipos_servico AS ts
							Where os.id_tipo_de_servico = ts.id_tipos_servico AND os.id_cliente='" . $id . "'";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}

			return $vetor;
		}

		public function consultarBikeCPF($id){
			if(!$id) return false;

			$sql = "SELECT
								 b.*
							FROM
								scmb_schema.clientes_bicicletas AS cb,
							    scmb_schema.bicicleta AS b
							WHERE
								cb.id_bicicleta = b.id_bicicleta AND
							    cb.id_clientes = '" . $id . "';";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}

			return $vetor;
		}

		public function buscarPorCPF($valor){
			if(!$valor) return false;

			$sql = "SELECT
										cliente.*,
								    (SELECT count(0) FROM scmb_schema.ordem_de_servico AS os WHERE os.id_cliente = cliente.idCliente) AS 'qtd_os'
								FROM
									scmb_schema.clientes AS cliente
								WHERE
									cliente.cpf_cliente = '" . $valor . "'";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}

			return $vetor;
		}

		public function deslogarUsuario(){
			session_destroy();
			return true;
		}

		public function atualizarPeca($id, $unidade, $valor){
			$sql = "UPDATE `" . MEU_SCHEMA . "`.estoque SET unidade_estoque=unidade_estoque + '" . $unidade . "', valor_estoque='".$valor . "' WHERE id_estoque='" . $id . "'";

			$res = mysql_query($sql);

			if($res != 1)
				return false;

				return true;
		}

		public function selecaoBicicletas($id){

				$sql = "SELECT * FROM `" . MEU_SCHEMA . "`.clientes_bicicletas AS cb,`" . MEU_SCHEMA . "`.bicicleta AS b  WHERE cb.id_bicicleta = b.id_bicicleta AND cb.id_clientes = '" . $id . "'";

				$res = mysql_query($sql);

				while($resultado = mysql_fetch_array($res)){
					$vetor[] = array_map('utf8_encode', $resultado);
				}

				return $vetor;
		}

		public function loginUsuario($usuario, $senha) {
			$sql = "SELECT *
							FROM `" . MEU_SCHEMA . "`.usuarios
							WHERE login = '" . $usuario . "'
							AND senha = '".$senha."'";

			$resultado = mysql_query($sql);


				if (mysql_num_rows($resultado) > 0) {
				    // session_start inicia a sessão
				    $_SESSION['nome'] = $usuario;
						return true;
				} else {
					session_destroy();
					return false;
				}
		}

		public function consultarpeca(){
			$sql = "SELECT est.*, ref.* FROM `" . MEU_SCHEMA . "`.estoque AS est, `" . MEU_SCHEMA . "`.referencia AS ref WHERE est.id_referencia = ref.id_referencia";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}


			return $vetor;
		}

		public function consultarBike(){
			$sql = "SELECT * FROM `" . MEU_SCHEMA . "`.bicicleta";

			$res = mysql_query($sql);

			while($resultado = mysql_fetch_array($res)){
				$vetor[] = array_map('utf8_encode', $resultado);
			}

			return $vetor;
		}
		public function salvarpeca($referencia,$nome,$unidade,$marca,$valor){//Salvar peca tentativas
			if(!$referencia) return false;
			if(!$nome) return false;
			if(!$unidade) return false;
			if(!$marca) return false;
			if(!$valor) return false;


			$sql = "INSERT INTO `" . MEU_SCHEMA . "`.estoque (id_referencia,nome_estoque, unidade_estoque, marca_estoque, valor_estoque) VALUES ('" . $referencia . "','" . $nome . "','" . $unidade ."','" . $marca ."','" . $valor ."')";

			$res = mysql_query($sql);

			if($res != 1)
				return false;

				return true;
			}

		public function salvarordem($tipoServico,$vloServico,$dteServico,$dtsServico,$cliServico,$bikServico, $lista){

			$sql = "INSERT INTO `" . MEU_SCHEMA . "`.ordem_de_servico
			(id_tipo_de_servico,
			valor_ordem_de_servico,
			data_entrada_ordem_de_servico,
			data_saida_ordem_de_servico,
			id_cliente,
			id_bicicleta) VALUES ('"
			. $tipoServico . "','"
			. $vloServico . "','"
			. $dteServico ."','"
			. $dtsServico ."','"
			. $cliServico ."','"
			. $bikServico ."')";

			$res = mysql_query($sql);
			$id = mysql_insert_id();

			if($res != 1)
				return false;

				$resul = salvarController::gerar_pdf($id);

				if($resul != 1)
					return false;

				$resul = salvarController::retirarPeca($lista);

				return $resul;
			}

			public function retirarPeca($lista){
				for($x=0; $x< count($lista); $x++){
					$linha = $lista[$x];
					$linhas = explode("_", $linha);

					$id_est = $linhas[0];
					$qtd = $linhas[1];

					$sql = "UPDATE `" . MEU_SCHEMA . "`.estoque SET unidade_estoque=unidade_estoque - '" . $qtd . "' WHERE id_estoque='" . $id_est . "'";

					$res = mysql_query($sql);

					if($res != 1)
						return false;
				}

				return true;
			}

		public function salvarfornecedor($id_empresa, $fornecedor){
			if(!$id_empresa) return false;

			$sql = "INSERT INTO `" . MEU_SCHEMA . "`.fornecedor (nome_fornecedor, rg_fornecedor, cpf_fornecedor, telefone_fornecedor, celular_fornecedor, email_fornecedor, id_empresa) VALUES ('" . $fornecedor['nome_forn'] . "','" . $fornecedor['rg_forn'] . "','" . $fornecedor['cpf_forn'] ."','" . $fornecedor['telefone_forn'] ."','" . $fornecedor['celular_forn'] ."','" . $fornecedor['email_forn'] ."','" . $id_empresa . "')";
			$res = mysql_query($sql);

			if($res != 1)
				return false;


				return true;
			}
			public function salvarempresa($empresa, $fornecedor){

				$sql = "INSERT INTO `" . MEU_SCHEMA . "`.empresa (nome_empresa, cnpj_empresa, rua_empresa, numero_empresa, complemento_empresa, cep_empresa, bairro_empresa, cidade_empresa, telefone1_empresa, telefone2_empresa, email_empresa, observacao_empresa) VALUES ('" . $empresa['nome_empresa'] . "','" . $empresa['cnpj_empresa'] . "','" . $empresa['rua_empresa'] ."','" . $empresa['numero_empresa'] ."','" . $empresa['complemento_empresa'] ."','" . $empresa['cep_empresa'] ."','" . $empresa['bairro_empresa'] . "','" . $empresa['cidade_empresa'] ."','" . $empresa['telefone1_empresa'] ."','" . $empresa['telefone2_empresa'] ."','" . $empresa['email_empresa'] . "','" . $empresa['observacao_empresa'] . "')";

				$res = mysql_query($sql);

				if($res != 1) {
					return false;
				} else {
					$id_empresa = mysql_insert_id();
					$res = salvarController::salvarfornecedor($id_empresa, $fornecedor);
					return $res;
				}
		}


		public function salvarcliente($nome,$sexo,$data_nasc,$rg,$cpf,$telefone,$celular,$email,$rua,$numero,$bairro,$cidade, $listabike, $cep, $complemento){




			$sql = "INSERT INTO `" . MEU_SCHEMA . "`.clientes (nome_cliente, sexo_cliente,data_nasc_cliente, rg_cliente, cpf_cliente, telefone_cliente, celular_cliente, email_cliente, rua_cliente, numero_cliente, bairro_cliente, cidade_cliente, cep_cliente, complemento_cliente) VALUES ('" . $nome . "','" . $sexo . "','" .$data_nasc . "', '". $rg . "','" . $cpf ."','" . $telefone ."','" . $celular ."','" . $email ."','" . $rua ."','" . $numero . "','" . $bairro . "','" . $cidade .  "','" . $cep . "','" . $complemento . "')";

			$res = mysql_query($sql);

			if($res != 1) {
				return false;
			} else {
				$id_cliente = mysql_insert_id();
				$res = salvarController::salvarBikeCliente($id_cliente, $listabike);
				return $res;
			}

		}
			//Função que faz aparecer as bicicletas no modal mais bike
		public function salvarBikeCliente($id_cliente, $listabike){
			$lista_todas_bikes = split("_", $listabike);

			for($x = 0; $x < count($lista_todas_bikes); $x++) {
				$sql = "INSERT INTO `" . MEU_SCHEMA . "`.clientes_bicicletas (id_clientes, id_bicicleta) VALUES
											('" . $id_cliente . "','" . $lista_todas_bikes[$x] . "')";

				$res = mysql_query($sql);

				if($res != 1)
					return false;
			}
			return true;
		}

		public function salvarBike($marca, $modelo, $aro, $cor){
			if(!$marca) return false;
			if(!$modelo) return false;
			if(!$aro) return false;
			if(!$cor) return false;

			$sql = "INSERT INTO `" . MEU_SCHEMA . "`.bicicleta (cor_bicicleta, marca_bicicleta, modelo_bicicleta, aro_bicicleta) VALUES
										('" . $cor . "','" . $marca . "','" . $modelo . "','" . $aro . "')";

			$res = mysql_query($sql);

			$id = mysql_insert_id();

			if($res != 1)
				return false;

			return $id;
		}

	}
