function buscarPorCPF(){
  var form = $("#formularioconsultar");
  var valor = form.find('input[name=\'cpf\']').val();
  var dados = {
    action: 'buscarporcpf',
    valor: valor
  };

  if(valor){
    $.ajax({
    		type : "POST",
    		dataType : "json",
    		url : "./modulos/salvarConteudo.php",
    		data : dados,
    		complete : function(e) {
          /* INICIO DO RETORNO */
          var resp = e.responseJSON;
          var fields = "";
          var form_consulta = $('#resultado_consulta_cpf');

          form_consulta.find('table#resultado_table_cpf tr').each(function(){
              $(this).remove();
          });

          if(resp !== undefined){
            var tamanho = resp.length;

            fields += "<tr class=\"title_table\">";
            fields += "<td> Nome do Ciclista </td>";
            fields += "<td> Endereço </td>";
            fields += "<td> Telefone </td>";
            fields += "<td> E-mail </td>";
            //fields += "<td> Bicicletas </td>";
          //  fields += "<td> Ordem de Serviço </td>";
            fields += "<tr>";

            for(var x=0; x<tamanho;x++){
              var id_cliente = resp[x].idCliente;
              var nome_reg = resp[x].nome_cliente;
              var end_reg = resp[x].rua_cliente + ", " + resp[x].numero_cliente;
              var telefone_reg = resp[x].telefone_cliente;
              var email_reg = resp[x].email_cliente;

              fields += "<tr class=\"criado\">";
              fields += "<td>" + nome_reg + "</td>";
              fields += "<td>" + end_reg + "</td>";
              fields += "<td>" + telefone_reg + "</td>";
              fields += "<td>" + email_reg + "</td>";
              fields += "</tr>";
              fields += "<td colspan=\"2\"><button class=\"consultarBikeCPF\" id_cliente=\"" + id_cliente + "\"> Consultar Bicicletas </button></td>";
              fields += "<td colspan=\"2\"><button class=\"consultarOsCPF\" id_cliente=\"" + id_cliente + "\"> Consultar Orçamento </button></td>";
              fields += "</tr>";
            }

            $(fields).appendTo('#resultado_consulta_cpf table#resultado_table_cpf');
            form_consulta.fadeIn(1, function(){
              $("#telaNegra").css('z-index','40');
              $('button.consultarBikeCPF').on('click', consultarBikeCPF);
              $('button.consultarOsCPF').on('click', consultarOSCPF);
           });

          return;
          /* FIM DO RETORNO */
    		} else {
          alert('Nenhum registro cadastrado!');
          form.find('input[name=\'cpf\']').val('');
          return;
        }
    	}
    });
  } else {
    alert('Preencha o campo de CPF.');
    return;
  }
}

function consultarOSCPF(){
  var me = $(this);
  var id = me.attr('id_cliente');

  var dados = {
    action: 'consultarOSCPF',
    id: id
  };

  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : dados,
      complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";
        var form_consulta = $('#resultado_consulta_cpf');

        form_consulta.find('table#resultado_table_btnOS tr, h2').each(function(){
            $(this).remove();
        });

        if(resp !== undefined){
          var tamanho = resp.length;

          fields += "<tr class=\"title_table\">";
          fields += "<td > Tipo do Servico </td>";
          fields += "<td> Valor </td>";
          fields += "<td> Data de Entrada </td>";
          fields += "<td> Data de Saída </td>";
          fields += "<tr>";

          for(var x=0; x<tamanho;x++){

            data_entrada_ordem_de_servico = formatarDataNayara(resp[x].data_entrada_ordem_de_servico);
            data_saida_ordem_de_servico = formatarDataNayara(resp[x].data_saida_ordem_de_servico);

            var tip = resp[x].nome_servico;
            var vlt = resp[x].valor_ordem_de_servico;
            var dte = data_entrada_ordem_de_servico;
            var dts = data_saida_ordem_de_servico;


            fields += "<tr class=\"criado\">";
            fields += "<td>" + tip + "</td>";
            fields += "<td>" + vlt + "</td>";
            fields += "<td>" + dte + "</td>";
            fields += "<td>" + dts + "</td>";
            fields += "</tr>";
          }

        $(fields).appendTo('table#resultado_table_btnOS');
        /* FIM DO RETORNO */
      } else {
        $("<h2>Nenhum Orçamento Encontrado!</h2>").appendTo('table#resultado_table_btnOS');
      }

      $('table#resultado_table_btnOS').show('drop', 100);
      return;
    }
  });
}

function consultarBikeCPF(){
  var me = $(this);
  var id = me.attr('id_cliente');

  var dados = {
    action: 'consultarBikeCPF',
    id: id
  };

  $.ajax({
      type : "POST",
      dataType : "json",
      url : "./modulos/salvarConteudo.php",
      data : dados,
      complete : function(e) {
        /* INICIO DO RETORNO */
        var resp = e.responseJSON;
        var fields = "";
        var form_consulta = $('#resultado_consulta_cpf');

        form_consulta.find('table#resultado_table_btnBike tr').each(function(){
            $(this).remove();
        });

        if(resp !== undefined){
          var tamanho = resp.length;

          fields += "<tr class=\"title_table\">";
          fields += "<td> Cor de Bicicleta </td>";
          fields += "<td> Marca </td>";
          fields += "<td> Modelo </td>";
          fields += "<td> Aro </td>";
          fields += "<tr>";

          for(var x=0; x<tamanho;x++){
            var cor_reg = resp[x].cor_bicicleta;
            var marca_reg = resp[x].marca_bicicleta;
            var modelo_reg = resp[x].modelo_bicicleta;
            var aro_reg = resp[x].aro_bicicleta;

            fields += "<tr class=\"criado\">";
            fields += "<td>" + cor_reg + "</td>";
            fields += "<td>" + marca_reg + "</td>";
            fields += "<td>" + modelo_reg + "</td>";
            fields += "<td>" + aro_reg + "</td>";
            fields += "</tr>";
          }

          $(fields).appendTo('table#resultado_table_btnBike');
          $('table#resultado_table_btnBike').show('drop', 100);
        return;
        /* FIM DO RETORNO */
      } else {
        alert('Não foi encontrado nenhuma bicicleta!');
        return;
      }
    }
  });

}
