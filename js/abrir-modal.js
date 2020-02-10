function Abrir_consulta(){ // Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
	$("#telaNegra").fadeIn(2, function(){
		$("#formularioconsultar").fadeIn(2);//fadeIN aparece fadeOut fecha
	});
}
function Abrir_relatorio(){// Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
	$("#telaNegra").fadeIn(2, function(){
		$("#formulariorelatorio").fadeIn(2);//fadeIN aparece fadeOut fecha
	});
}
function Abrir_ordem(){ // Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
	$("#telaNegra").fadeIn(2, function(){
		$("#formularioordemservico").fadeIn(2);//fadeIN aparece fadeOut fecha
	});
}
function Abrir_peca(){ // Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
	$("#telaNegra").fadeIn(2, function(){
		$("#formulariopecas").fadeIn(2);//fadeIN aparece fadeOut fecha

	});
}
function Abrir_estoque(){ // Abrir uma função mas essa função coloca que temos 2 modal por tanto ela abrira a tela nega
	                       // com o primeiro modal após o click depois cliando no bnt indicado ira abrir outro modal com
												 //tela negra primeiro e depois  que tudo estiver preenchido e salvo será fechara e retornara a o primeiro modal com tela negra por tras dele.
	$("#telaNegra").css('z-index','40');
	$("#formulario_estoque").css('z-index','41');

		$("#telaNegra").fadeIn(2, function(){
				$("#formulario_estoque").fadeIn(2, function(){
					$("#formulario_estoque").find('select[name=\'selectInicialpeca\']').val('0');
					$('#formulario3').find('#consultarpeca').hide(1);
					$('#formulario3').find('#inserirpeca').hide(1);
	});
		});
}

function Abrir_fornecedores(){ // Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
	$("#telaNegra").fadeIn(2, function(){
		$("#formulariofornecedor").fadeIn(2);//fadeIN aparece fadeOut fecha
	});
}
function Abrir_clientes(){ // Abrir uma função mas primeiro ira aparecer a tela nega e por cima aparecer o formulario a ser preenchido
		//$("#formularioCliente").css('display','blocked');

		$("#telaNegra").fadeIn(2, function(){
		$("#formularioCliente").fadeIn(2);//fadeIN aparece fadeOut fecha

	});
}

function Abrir_bike(){ // Abrir uma função mas essa função coloca que temos 2 modal por tanto ela abrira a tela nega
	                       // com o primeiro modal após o click depois cliando no bnt indicado ira abrir outro modal com
												 //tela negra primeiro e depois  que tudo estiver preenchido e salvo será fechara e retornara a o primeiro modal com tela negra por tras dele.
	$("#telaNegra").css('z-index','20');
	$("#formulariobike").css('z-index','21');

	$("#telaNegra").fadeIn(2, function(){
		$("#formulariobike").fadeIn(2, function(){
			$("#formulariobike").find('select[name=\'selectInicialBike\']').val('0');
			$('#formulario2').find('#consultarBike').hide(1);
			$('#formulario2').find('#inserirBike').hide(1);
	});
	});
}

function relatorioCliente(){
	$("#telaNegra").fadeIn(2, function(){
		$("#relatorios").fadeIn(2, function(){
			relatorioClienteTable();
		});//fadeIN aparece fadeOut fecha
	});
}
function relatorioFornecedor(){
	$("#telaNegra").fadeIn(2, function(){
		$("#relatorios").fadeIn(2, function(){
			relatorioFornecedorTable();
		});//fadeIN aparece fadeOut fecha
	});
}
function relatorioPeca(){
	$("#telaNegra").fadeIn(2, function(){
		$("#relatorios").fadeIn(2, function(){
			relatorioPecaTable();
		});//fadeIN aparece fadeOut fecha
	});
}
function relatorioOrdem(){
	$("#telaNegra").fadeIn(2, function(){
		$("#relatorios").fadeIn(2, function(){
			relatorioOrdemTable();
		});//fadeIN aparece fadeOut fecha
	});
}
