function Fechar_consulta(){ // Fechar um modal no modal tera o bnt sair que sera fechado a função
	$("#formularioconsultar").fadeOut(2, function(){
		$("#telaNegra").fadeOut(2);
	});
}
function Fechar_ordem(){ // Fechar um modal no modal tera o bnt sair que sera fechado a função
	$("#formularioordemservico").fadeOut(2, function(){
		$("#telaNegra").fadeOut(2);
	});
}
function Fechar_estoque(){ // Fecha a função se o segundo modal tiver aberto ele fecha e abri o segundo se não ele já fecha tudo

		$("#telaNegra").css('z-index','19');

			$("#formulario_estoque").fadeOut(2, function(){
				$("#formulariopecas").fadeIn(2, function(){
						$("#telaNegra").fadeIn(2);
		});
	});
}

function Fechar_pecas(){ // Fechar um modal no modal tera o bnt sair que sera fechado a função
	$("#formulariopecas").fadeOut(2, function(){
		$("#telaNegra").fadeOut(2);
	});
}
function Fechar_fornecedores(){ // Fechar um modal no modal tera o bnt sair que sera fechado a função
	$("#formulariofornecedor").fadeOut(2, function(){
		$("#telaNegra").fadeOut(2);
	});
}
function Fechar_clientes(){ // Fechar um modal no modal tera o bnt sair que sera fechado a função
	$("#formularioCliente").fadeOut(2, function(){
		$("#telaNegra").fadeOut(2);
	});
}

function Fechar_bike(){ // Fecha a função se o segundo modal tiver aberto ele fecha e abri o segundo se não ele já fecha tudo
	$("#telaNegra").css('z-index','19');

	$("#formulariobike").fadeOut(2, function(){
		$("#formularioCliente").fadeIn(2, function(){
				$("#telaNegra").fadeIn(2);
});
});
}
function fechar_Consulta_CPF(){
			$("#resultado_consulta_cpf").fadeOut(2, function(){
				$("#telaNegra").css('z-index','19');
 		});

}
function Sair_relatorio(){
			$("#formulariorelatorio").fadeOut(2, function(){
					$("#telaNegra").fadeOut(2);
				});
}

function FechaRelatorioCliente(){

	$("#formulariorelatorio").fadeIn(2, function(){
		$("#relatorios").fadeOut(2, function(){
			$("#telaNegra").css('z-index','19');
	});
});
}
