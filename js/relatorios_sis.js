function relatorioClienteTable(){
  var relatol = $('#relat');


    $.ajax({
        type : "POST",
        dataType : "json",
        url : "./modulos/salvarConteudo.php",
        data : {
              action:'rel_Cliente'
        }, complete : function(e) {
          /* INICIO DO RETORNO */
          var resp = e.responseJSON;
          var fields = "";

          relatol.find('table').remove();

          fields += "<table style=\"width:930px\"><tr class=\"primeiro_relatorio1\"><th>Cód</th><th>Nome</th><th>CPF</th><th>Telefone</th><th>Celular</th><th>E-mail</th><th>Inf</th></tr>";
          if(resp !== undefined){
            var tamanho = resp.length;

            for(var x=1; x<tamanho;x++){
              //Colocar todas as Variasveis...
              fields += "<tr class=\"title_relatorio1\" >";
              fields += "<td>"+resp[x].idCliente +"</td>";
              fields += "<td>"+resp[x].nome_cliente+"</td>";
              //  fields += "<td>"+ data_nasc +"</td>"; Para vim asdatas corretas
              fields += "<td>"+resp[x].cpf_cliente+"</td>";
              fields += "<td>"+resp[x].telefone_cliente+"</td>";
              fields += "<td>"+resp[x].celular_cliente+"</td>";
              fields += "<td>"+resp[x].email_cliente+"</td>";
              fields += "<td><button style=\"width:95px\"  class=\"butDados\" idDados=\""+resp[x].idCliente +"\">+Inf</button></td>";
              fields += "</tr>";
            }
            fields += "</table>";

            $(fields).appendTo('#relat');
          } else {
            alert('Nenhuma informação encontrada!');
          }

          $("button.butDados").on('click', atribuicaoInformacaoAdicional);
          return;
          /* FIM DO RETORNO */
        }
      });

}

function formatarDataNayara(data_nasc){
  var dia_nasc = data_nasc.substr(8, 2);
  var mes_nasc = data_nasc.substr(5,2);
  var ano_nasc = data_nasc.substr(0,4);

  data_nasc = dia_nasc + "/" + mes_nasc + "/" + ano_nasc;

  return data_nasc;
}

function atribuicaoInformacaoAdicional(){
    var dados = $(this).attr('idDados');

    $.ajax({
        type : "POST",
        dataType : "json",
        url : "./modulos/salvarConteudo.php",
        data : {
              action:'inf_Cliente',dados:dados
        }, complete : function(e) {
          /* INICIO DO RETORNO */
          var resp = e.responseJSON;
          var divDados = $("#dadosAdicionais");

          divDados.find('span.respDados').each(function(){
            $(this).remove();
          });

          if(resp !== undefined){
            var tamanho = resp.length;

            for(var x=1; x<tamanho;x++){
              var codigo = resp[x].idCliente;
              var nome = resp[x].nome_cliente;
              var sexo = resp[x].sexo_cliente;
              var dtanasci = resp[x].data_nasc_cliente;
              dtanasci = formatarDataNayara(dtanasci);

              var rg = resp[x].rg_cliente;
              var cpf = resp[x].cpf_cliente;
              var tel = resp[x].telefone_cliente;
              var cel = resp[x].celular_cliente;
              var email = resp[x].email_cliente;
              var rua = resp[x].rua_cliente;
              var num = resp[x].numero_cliente;
              var bairro = resp[x].bairro_cliente;
              var cidade = resp[x].cidade_cliente;
              var cep = resp[x].cep_cliente;
              var comple = resp[x].complemento_cliente;

              divDados.find('#dadosAdic-nome').append("<span class=\"respDados\">" + nome + "<span>");
              divDados.find('#dadosAdic-sexo').append("<span class=\"respDados\">" + sexo + "<span>");
              divDados.find('#dadosAdic-dtanasc').append("<span class=\"respDados\">" + dtanasci + "<span>");
              divDados.find('#dadosAdic-rg').append("<span class=\"respDados\">" + rg + "<span>");
              divDados.find('#dadosAdic-cpf').append("<span class=\"respDados\">" + cpf + "<span>");
              divDados.find('#dadosAdic-email').append("<span class=\"respDados\">" + email + "<span>");
              divDados.find('#dadosAdic-tel').append("<span class=\"respDados\">" + tel + "<span>");
              divDados.find('#dadosAdic-cel').append("<span class=\"respDados\">" + cel + "<span>");
              divDados.find('#dadosAdic-rua').append("<span class=\"respDados\">" + rua + ", " + num + "<span>");
              divDados.find('#dadosAdic-compl').append("<span class=\"respDados\">" + comple + "<span>");
              divDados.find('#dadosAdic-cep').append("<span class=\"respDados\">" + cep + "<span>");
              divDados.find('#dadosAdic-cidade').append("<span class=\"respDados\">" + bairro + "/" + cidade + "<span>");

            }

            $('#relatoriosAdicional').show(function(){
              $('#relatoriosAdicional button').on('click', function(){
                $('#relatoriosAdicional').hide();
              });
            });
          } else {
            $('#relatoriosAdicional').hide();
          }
        return;
      }
    });
  }

function relatorioFornecedorTable(){
  var relatol = $('#relat');
  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : {
            action:'rel_Fornecedor'
      }, complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";

        relatol.find('table').remove();

        fields += "<table style=\"width:930px\"><tr class=\"segundo_relatorio2\"><th>Cód</th><th>Nome</th><th>CPF</th><th>Telefone</th><th>Celular</th><th>E-mail</th></tr>";
        if(resp !== undefined){
          var tamanho = resp.length;

          for(var x=1; x<tamanho;x++){
            //Colocar todas as Variasveis...

            fields += "<tr class=\"title_relatorio2\" >";
            fields += "<td>"+resp[x].id_fornecedor +"</td>";
            fields += "<td>"+resp[x].nome_fornecedor+"</td>";
            fields += "<td>"+resp[x].cpf_fornecedor+"</td>";
            fields += "<td>"+resp[x].telefone_fornecedor+"</td>";
            fields += "<td>"+resp[x].celular_fornecedor+"</td>";
            fields += "<td>"+resp[x].email_fornecedor+"</td>";
            fields += "</tr>";
          }
          fields += "</table>";

              $(fields).appendTo('#relat');
        } else {
          alert('Nenhuma informação encontrada!');
        }

        return;
        /* FIM DO RETORNO */
      }
    });

}
    function relatorioPecaTable(){
      var relatol = $('#relat');
      $.ajax({
          type : "POST",
          dataType : "json",
          url : "./modulos/salvarConteudo.php",
          data : {
                action:'rel_Peca'
          }, complete : function(e) {
            /* INICIO DO RETORNO */
            var resp = e.responseJSON;
            var fields = "";

            relatol.find('table').remove();

            fields += "<table style=\"width:930px\"><tr class=\"terceiro_relatorio3\"><th>Cód</th><th>Nome</th><th>Un</th><th>Marca</th><th>Valor</th></tr>";
            if(resp !== undefined){
              var tamanho = resp.length;

              for(var x=1; x<tamanho;x++){
                //Colocar todas as Variasveis...

                fields += "<tr class=\"title_relatorio3\" >";
                fields += "<td>"+resp[x].id_estoque +"</td>";
                fields += "<td>"+resp[x].nome_estoque+"</td>";
                fields += "<td>"+resp[x].unidade_estoque +"</td>";
                fields += "<td>"+resp[x].marca_estoque+"</td>";
                fields += "<td>"+resp[x].valor_estoque+"</td>";
                fields += "</tr>";
              }
              fields += "</table>";

                  $(fields).appendTo('#relat');
            } else {
              alert('Nenhuma informação encontrada!');
            }

            return;
            /* FIM DO RETORNO */
          }
        });
}
function relatorioOrdemTable(){
  var relatol = $('#relat');
  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : {
            action:'rel_Ordem'
      }, complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";

        relatol.find('table').remove();

        fields += "<table style=\"width:930px\"><tr class=\"terceiro_relatorio4\"><th>Cód</th><th>Nome</th><th>Data de Entrada</th><th>Data de Saída</th><th>Valor</th></tr>";
        if(resp !== undefined){
          var tamanho = resp.length;

          for(var x=1; x<tamanho;x++){
            //Colocar todas as Variasveis...

            data_entrada_ordem_de_servico = formatarDataNayara(resp[x].data_entrada_ordem_de_servico);
            data_saida_ordem_de_servico = formatarDataNayara(resp[x].data_saida_ordem_de_servico);

            fields += "<tr class=\"title_relatorio4\" >";
            fields += "<td>"+resp[x].id_ordem_de_servico +"</td>";
            fields += "<td>"+resp[x].nome_servico+"</td>";
            fields += "<td>"+data_entrada_ordem_de_servico+"</td>";
            fields += "<td>"+data_saida_ordem_de_servico+"</td>";
            fields += "<td>"+resp[x].valor_ordem_de_servico+"</td>";
            fields += "</tr>";
          }
          fields += "</table>";

              $(fields).appendTo('#relat');
        } else {
          alert('Nenhuma informação encontrada!');
        }

        return;
        /* FIM DO RETORNO */
      }
    });relatorioOrdemTable
}
