$(document).ready(function(){

		//servico();
		//Cada uma dessas funções faz a abertura de um modal ou outra função com o click
		$('#listaClientes').on('change', selecaoBicicletas);
		$('#btnSalvarBike').on('click', opcaoBotaoSalvar);
		$('#btnLogin').on('click', logar);
		$('#deslogarUsuario').on('click', deslogar);
		$('#btnSalvarcliente').on('click' , opcaoSalvar );
		$('#btnSalvarfornecedor').on('click' , opcaofornecedor );
		$('#btnSalvarordem').on('click' , opcaoordem );
		$("#formulario2").find('select[name=\'selectInicialBike\']').on('change', opcaoBike);
		$("#formulario3").find('select[name=\'selectInicialpeca\']').on('change', opcaopeca);
		$("#consultarpeca").on('change', selecaopeca);
		$("#btnSalvarpeca").on('click', salvarPeca);
		$("#btnBuscarCPF").on('click', buscarPorCPF);

		$("#btnCliente").on('click', relatorioCliente);

		$("#btnFornecedor").on('click', relatorioFornecedor);
		$("#btnpeca").on('click', relatorioPeca);
		$("#btnordem").on('click', relatorioOrdem);
		$("#servico_tipo").on('change', servico);

		$("#consulta").on('click', Abrir_consulta);//para afunção de abrir para consultar
		$("#rel").on('click', Abrir_relatorio);//função para abrir relatorio

		$("#minhas-ordens").on('click', Abrir_ordem);
		$("#minhas-pecas").on('click', Abrir_peca);
		$("#meus-fornecedores").on('click', Abrir_fornecedores);
		$("#meus-clientes").on('click', Abrir_clientes);
		$("#incluir-bike").on('click', Abrir_bike);
		$("#pecas").on('click', Abrir_estoque);
		//Cada uma dessas funções faz o fechamento de um modal ou outra função com o click
		$("#sairConsultaCPF").on("click", fechar_Consulta_CPF);
		$("#sai").on("click", Fechar_consulta);
	//	$("#rell").on("click", Fechar_relatorio);
		$("#sair-ordem").on("click", Fechar_ordem);
		$("#sair-pecas").on("click", Fechar_pecas);
		$("#sair-fornecedor").on("click", Fechar_fornecedores);
		$("#sair-cliente").on("click", Fechar_clientes);
		$("#sair-bike").on("click", Fechar_bike);
		$("#sair-estoque").on("click", Fechar_estoque);
		$("#btnSairrelatorio").on("click", Sair_relatorio);
		$("#btnretsai").on("click", FechaRelatorioCliente);

	/*	$(".data").datepicker({//função para a data //
			dateFormat: "dd/mm/yy"
		});*/
	});
