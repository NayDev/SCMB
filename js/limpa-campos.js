
function limparCampos(form){ // função apara limpar os campos após o preencimento de todos os campos
	form.find('input, textarea').each(function(){
		$(this).val('');
	});

	form.find('tr.remover').each(function(){
		$(this).remove();
	});
}
