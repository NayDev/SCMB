<div id="formulario_estoque" class="modal" style="height:auto; width: 537px; border: 1px solid black; z-index: 40; position: absolute; margin-top: 10%; margin-left:530px;background-color:white; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:537px;">
    <font color="fffefe" style="margin-left:240px;float:left;margin-top:10px;">PEÇAS</font>
  </div>
      <div id="formulario3" style="height:auto; width:500px; margin-top:1%; margin-left:20px;"></br>
              <fieldset>
                <legend><b>Peças</b></legend></br>
                <div style="float:left;padding: 18px;">
                  <label>Opção</label>
                  <select name="selectInicialpeca">
                    <option selected="true" value="0" >Selecione uma opcao</option>
                    <option value="1">Consultar peças</option>
                    <option value="2">Inserir peças</option>
                  </select>
                </div>

                <div id="inserirpeca" style="display:none; clear:both;padding-bottom: 40px" >
                  <div style="float:left; margin-left:18px;">
                                <label for="nome">Nome:</label><input type="text" size="55" maxlength="30" name="nome" value=""><br/><br/>
                  </div>
                <div style="float:left;margin-left:24px;">
                    <label>REF: </label>
                        <select name="referencia" >
                        <option value="-1"> Selecione uma referencia ...</option>
                          <?php
                            $conexao = mysql_connect("localhost", "usuario","123mudar") or die ("Conex�o n�o efetuada");

                            $sql = "SELECT * FROM `scmb_schema`.referencia";

                            $res = mysql_query($sql);

                            while($resultado = mysql_fetch_array($res)){
                              echo "<option value=\"". $resultado['id_referencia'] . "\">" . $resultado['nome_referencia'] . "</option>";
                            }

                          ?>
                        </select>
                </div>

                  <div style="float:left;margin-left:41px;">
                                <label  for="nome">UN: </label><input type="text" size="18" maxlength="10"name="unidade" value=""><br/><br/>
                  </div>
                  <div style="float:left; margin-left:18px;">
                                <label for="nome">Marca:</label><input type="text" size="22" maxlength="10" name="marca" value="">
                  </div>
                  <div style="float:left; margin-left:32px;">
                                <label for="nome">Valor:</label><input type="text" size="18" maxlength="10" name="valor" value=""><br/><br/>
                  </div>


                </div>

                <div id="consultarpeca" style="display:none; clear:both;padding-bottom: 55px;" >
                  <div style="float:left;margin-left:18px;">
                        <label  for="nome">Lista de Peças: </label>
                        <select name="listapecas" id="listapecas"></select>
                  </div>
                  <div id="campospeca" style="display: none; clear: both;float:left;margin-left:18px; margin-top: 10px;padding-bottom: 30px;">
                    <hr style="float:left; width: 450px;" />

                    <div style="float:left;  margin-top: 10px;">
                      <label>Unidade</label><br />
                      <input type="text" name="unidade" size="2" maxlength="4" />
                    </div>

                    <div style="float:left; margin-left: 18px;  margin-top: 10px;">
                      <label>Valor Peça</label> <br />
                      <input type="text" name="valor" size="6" />
                    </div>

                  </div>
                </div>

      </div><br/>


<div style="float:right;margin-top:0px;margin-right:10px;">

                <button style="cursor:pointer;width:90px;height:20px;" id="btnSalvarpeca" >Salvar</button>
                <button id="sair-estoque" style="cursor:pointer;width:90px;height:20px;" value="">Sair</button>
</div><br/>
        </fieldset><br/>
</div><!--Div que acaba o formulario novas peças -->
