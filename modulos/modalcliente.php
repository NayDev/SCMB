<div id="formularioCliente" class="modal" style="height:630px; width: 537px; border: 1px solid black; z-index: 20; position: absolute; margin-top: 1%; margin-left:530px;background-color:white; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:537px;"><font color="fffefe" style="margin-left:190px;float:left;margin-top:10px;">CADASTRO CLIENTE</font></div>
  <div id="form-cliente" style="height:160px; width:500px; margin-top:-2%; margin-left:20px;"></br>
          <fieldset>
            <legend><b>Dados Pessoais</b></legend></br>
  <div style="width:100%;margin-left: 8px; margin-top:-3px;">
            <label  for="nome">Nome Completo: </label><input type="text" size="47" maxlength="48" name="Nome_completo"placeholder="Digite aqui... " value=""></br></br>
            <label for="Sexo">Sexo: </label><input type="radio" name="optsexo" value="M"> Masculino	<input type="radio" name="optsexo" value="F"> Feminino
        <div style="float:right; margin-right: 20px;">
            <label  for="nome">Data Nascimento:</label><input type="date"  name="data_nasc" value="">
        </div><br/><br/>

          <div style="float:left;">
            <label  for="nome">RG: </label><input type="text" id= "rg" size="20" maxlength="12" name="RG"placeholder="Digite aqui... " value="">
          </div>
  <div style="float:left; margin-left: 65px;">
            <label for="nome">CPF:</label><input type="text" size="20" maxlength="14" name="Cpf"placeholder="Digite aqui... " value=""></br></br>
  </div>
  </div>
  <div style="float:left;margin-left:10px;">
            <label  for="nome">Telefone: </label><input type="text" id="telefone"  size="15" maxlength="14"name="tel"  placeholder="Digite aqui... " value="">

  </div>
  <div style="float:left; margin-left:60px;">
            <label for="nome">Celular:</label><input type="text" size="18" maxlength="15" name="Celular"placeholder="Digite aqui... " value="">
  </div>
  <div style="float:left;margin-left:14px; margin-top:12px;">
            <label  for="nome">E-mail: </label><input type="text" size="55" maxlength="40" name="Email"placeholder="Digite aqui... " value=""></br></br>
  </div>
          </fieldset><br/>
            <fieldset>
              <legend><b>Endereço</b></legend>
  <div style="float:left;margin-left:12px;margin-top:2%;">
            <label  for="nome">Rua/Av: </label><input type="text" size="34" maxlength="40"name="rua" placeholder="Digite aqui... " value="">
            <label for="nome">Número:</label><input type="text" size="7" maxlength="10" name="numero"placeholder="Digite aqui... " value="">
  </div><br/>
  <div style="float:left;margin-left:10px;"><br/>
            <label  for="nome">Complemento: </label><input type="text" size="28" maxlength="40"name="complemento"placeholder="Digite aqui... " value="">
            <label for="nome">Cep:</label><input type="text" size="11" maxlength="10" name="cep"placeholder="Digite aqui... " value="">
  </div><br/><br/>
  <div style="float:left;margin-left:12px;"><br/>
            <label  for="nome">Bairro: </label><input type="text" size="35" maxlength="40"name="bairro"placeholder="Digite aqui... " value="">
            <label for="nome">Cidade:</label><input type="text" size="8" maxlength="10" name="cidade"placeholder="Digite aqui... " value=""></br><br/>
  </div>
          </fieldset><br/>
            <fieldset>
              <legend><b>Dados Bike</b></legend>

  <div id="lista-bike" style="width: 93%; margin-left:20px; margin-top:12px; border:1px solid grey; height: 80px;overflow: scroll;">
    <table style="width:100%;">
        <tr style="font-weight: bolder;">
          <td>Modelo</td>
          <td>Marca</td>
          <td>Cor</td>
          <td>Aro</td>
        </tr>
    </table>
  </div>

  <div style="float:left;margin-top:5px;margin-left:20px;">
                <button id="incluir-bike" style="cursor:pointer;width:70px;height:20px" name="b2" value="">+Incluir</button><br/><br/>
  </div>
          </fieldset><br/><br/>
  </div>
  <div style="float:right;margin-top:410px;margin-right:18px;">

                <button  style="cursor:pointer;width:90px;height:20px" id="btnSalvarcliente">Salvar</button>
                <button id="sair-cliente" style="cursor:pointer;width:90px;height:20px;" value="Sair">Sair</button>
  </div>
</div>
