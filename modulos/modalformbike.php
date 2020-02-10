<div id="formulariobike" class="modal" style="height:auto; width: 537px; border: 1px solid black; z-index: 20; position: absolute; margin-top: 10%; margin-left:530px;background-color:white; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:537px;">
    <font color="fffefe" style="margin-left:190px;float:left;margin-top:10px;">MAIS BICICLETAS</font>
  </div>
      <div id="formulario2" style="height:auto; width:500px; margin-top:1%; margin-left:20px;"></br>
              <fieldset>
                <legend><b>Bike</b></legend></br>
                <div style="float:left;padding: 18px;">
                  <label>Opção</label>
                  <select name="selectInicialBike">
                    <option selected="true" value="0" >Selecione uma opcao</option>
                    <option value="1">Consultar Bike</option>
                    <option value="2">Inserir Bike</option>
                  </select>
                </div>

                <div id="inserirBike" style="display:none; clear:both;padding-bottom: 40px;" >
                  <div style="float:left;margin-left:18px;">
                                <label  for="nome">Marca: </label><input type="text" size="14" maxlength="10"name="marca"placeholder="Digite aqui... " value="">
                  </div>
                  <div style="float:left; margin-left:43px;">
                                <label for="nome">Modelo:</label><input type="text" size="17" maxlength="10" name="modelo"placeholder="Digite aqui... " value=""><br/><br/>
                  </div>
                  <div style="float:left;margin-left:22px;">
                                <label  for="nome">Cor: </label><input type="text" size="16" maxlength="10"name="cor"placeholder="Digite aqui... " value="">
                  </div>
                  <div style="float:left; margin-left:45px;">
                                <label for="nome">Aro:</label><input type="text" size="20" maxlength="10" name="aro"placeholder="Digite aqui... " value=""><br/><br/>
                  </div>
                </div>

                <div id="consultarBike" style="display:none; clear:both;padding-bottom: 55px;" >
                  <div style="float:left;margin-left:18px;">
                        <label  for="nome">Lista de Bicicletas: </label>
                        <select name="listaBike" id="listaBicicletas"></select>
                  </div>
                </div>

      </div><br/>


<div style="float:right;margin-top:0px;margin-right:20px;">

                <button style="cursor:pointer;width:90px;height:20px;" id="btnSalvarBike" >Salvar</button>
                <button id="sair-bike" style="cursor:pointer;width:90px;height:20px;" value="Sai">Sair</button>
</div><br/>
        </fieldset><br/>
</div><!--Div que acaba o formulario novas bike -->
