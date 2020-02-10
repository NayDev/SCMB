<div id="formulariorelatorio" class="modal" style="height: 180px;width: 690px; border: 1px solid black; z-index: 40; position: absolute; margin-top: 5%; margin-left:450px;background-color:white; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:690px;"><font color="fffefe" style="margin-left:300px;float:left;margin-top:10px;">Relatorios</font>
  </div>

  <div id="formulario5" style="margin-top:1%; margin-left:20px;"></br>
    <legend><b>Selecione um Relatório</b></legend>
    <hr/></br>

    <div style="float:left;margin-top:10px;">
          <button id="btnCliente" style="cursor:pointer;width:150px;height:20px;" value="">Relatorio Cliente</button>
          <button id="btnFornecedor" style="cursor:pointer;width:130px;height:20px;" value="">Relatorio Fornecedor</button>
          <button id="btnpeca" style="cursor:pointer;width:130px;height:20px;" value="">Relatorio Peças</button>
          <button id="btnordem" style="cursor:pointer;width:130px;height:20px; margin-left:2px;" value="">Relatorio OS e OR</button>
          <button id="btnSairrelatorio" style="cursor:pointer;width:90px;height:20px; margin-top:-20px; " value="Sair">Sair</button>
    </div>
  </div>
</div>

<div id="relatorios" style=" z-index:42; width :980px; height: 225px; border: 1px solid black; background: white; position:absolute; margin: 5% 20%; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:980px;">
    <font color="fffefe" style="margin-left:380px;float:left;margin-top:10px;">Relatorios</font>

  </div>

  <!-- Listado os registros -->
  <div id="relat" style=" overflow-y:scroll; margin:15px; height:140px; "></div>
  <button id="btnretsai" style="cursor:pointer;width:90px;height:20px; margin-top:-10px; float:right; margin-right:15px;" value="Sair">Sair</button>
</div>

<div id="relatoriosAdicional" style="z-index:43; width :950px; height: 480px; border: 1px solid black; background: white; position:absolute; margin: 5% 16%; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:950px;">
    <font color="fffefe" style="margin-left:315px;float:left;margin-top:10px;">INFORMAÇÕES ADICIONAIS DO CLIENTE</font>
  </div>

  <div id="dadosAdicionais" style="padding:20px;">
    <fieldset style="padding:20px;">
      <legend>Dados Pessoais</legend>
      <span>Nome do Cliente: </span><span id="dadosAdic-nome"></span><br />
      <span>Sexo: </span><span id="dadosAdic-sexo"></span>
      <span style="margin-left: 50px;">Data de Nascimento: </span><span id="dadosAdic-dtanasc"></span><br />
      <span>RG: </span><span id="dadosAdic-rg"></span>
      <span style="margin-left: 50px;">CPF: </span><span id="dadosAdic-cpf"></span>

      <fieldset style="padding:20px; margin-top:20px;">
        <legend>Contato</legend>
        <span>E-mail: </span><span id="dadosAdic-email"></span><br />
        <span>Telefone: </span><span id="dadosAdic-tel"></span>
        <span style="margin-left: 50px;">Celular: </span><span id="dadosAdic-cel"></span>
      </fieldset>

      <fieldset style="padding:20px;margin-top:20px;">
        <legend>Endereço</legend>
        <span>Rua/Av.:</span><span id="dadosAdic-rua"></span><br />
        <span>Complemento: </span><span id="dadosAdic-compl"></span>
        <span style="margin-left: 50px;">CEP: </span><span id="dadosAdic-cep"></span><br />
        <span>Cidade: </span><span id="dadosAdic-cidade"></span>
      </fieldset>
    </fieldset>

    <button style="float:right;margin-top:15px; width: 100px;">Fechar</button>

  </div>

</div>
