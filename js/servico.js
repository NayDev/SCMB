function servico(){
  var id = $('#servico_tipo').val();

  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : { action: 'selecaoTipoServico',
                id:id},
      complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";

        $('#serv_os').find('table').remove();

        fields += "<table><tr><td id=\"acs\">Acessório</td><td id=\"na\">Nome do Acessório</td><td id=\"qtd\">Quantidade</td><td id=\"vt\">Valor Total</td></tr>";
        if(resp !== undefined){
          var tamanho = resp.length;

          //console.log(resp);
          for(var x=0; x<tamanho;x++){
            var ref = resp[x]['3'];
            var listaPecas = resp[x]['4'];

            fields += "<tr class=\"linhasInseridas\">";
            fields += "<td id=\"dis\"><select style=\" width:80px\" disabled=\"true\"><option>" + ref + "</option></select></td>";
            fields += "<td id=\"tra\"><select style=\"width:131px\" class=\"selecionarEstoque\"><option value=\"-1\">Selecione a Pecas..</option>";

            for(var y=0; y< listaPecas.length; y++){
              var nome = listaPecas[y].nome_estoque;
              var id = listaPecas[y].id_estoque;

              fields += "<option value=\"" + id + "\">" + nome + "</option>";
            }

            fields += "</select></td>";
            fields += "<td id=\"qt\" class=\"quantidade\"></td>";
            fields += "<td id=\"vl\" class=\"vlr_total\"></td>";
            fields += "</tr>";
          }

          fields += "</table>";
          $(fields).appendTo('#serv_os');
        } else {
          alert('Nenhuma bicicleta encontrada!');
        }

        $('.selecionarEstoque').on('change', filtrarQuantidade);
        return;
        /* FIM DO RETORNO */
      }
    });
}

/* Ordem de Servico Pecas */
function filtrarQuantidade(){
  var me = $(this);
  var id_estoque = me.val();

  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : { action: 'filtrarQuantidade',
                id_estoque:id_estoque},
      complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";
        var celulaVlr = me.parents('tr').find('td.vlr_total');
        var celulaQtd = me.parents('tr').find('td.quantidade');

        celulaQtd.find('select').remove();
        celulaVlr.find('input').remove();

        if(resp !== undefined){
          var id = resp[0].id_estoque;
          var valor = parseFloat(resp[0].valor_estoque);
          var qtd = resp[0].unidade_estoque;

          fields += "<select style=\"width:82px\" class=\"selectQuantidade\" name=\"selectQuantidade\" valor_unidade=\"" + valor + "\"><option value=\"-1\">Qtd</option>";

          for(var x=1; x<=qtd;x++){
            fields += "<option value=\"" + x + "\">" + x + "</option>";
          }

          fields += "</select>";
          $(fields).appendTo(celulaQtd);
        } else {
          alert('Nenhuma quantidade encontrada!');
        }

        $('select.selectQuantidade').on('change', calculoValorTotal);
        return;
        /* FIM DO RETORNO */
      }
    });
}

function calculoValorTotal(){
  var me = $(this);
  var qtd = me.val();
  var valor = me.attr('valor_unidade');
  var celulaValor = me.parents('tr').find('td.vlr_total');
  var valorTotal = qtd * valor;
  valorTotal = parseFloat(valorTotal).toFixed(2);

  celulaValor.find('input').remove();

  var codigo = "<input type=\"text\" disabled=\"true\" style=\"width:82px\" class=\"valor_total_calculado\" name=\"valor_total_calculado\" value=\"" + valorTotal + "\" />";

  $(codigo).appendTo(celulaValor);
  calcularValorFinal();
  return;
}

function calcularValorFinal(){
  var form = $('#form-ordem');
  var campoTotal = form.find('.resultadoValorTotal');
  var total = 0;
  var table = $('#serv_os').find('table');
  campoTotal.val(0);

  table.find('td.vlr_total').find('.valor_total_calculado').each(function(){
    var valor = $(this).val();
    total = total + parseFloat(valor);
  });

  total = parseFloat(total).toFixed(2);
  campoTotal.val(total);
  return;
}
