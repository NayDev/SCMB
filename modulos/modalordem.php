<div id="formularioordemservico" class="modal" style="height:545px; width: 495px; border: 1px solid black; z-index: 20; position: absolute; margin-top: 4%; margin-left:545px;background-color:white; display:none;">
<div style="background-image:url('images/cad.jpg'); height:40px;width:495px;"><font color="fffefe" style="margin-left:100px;float:left;margin-top:10px;">ORDEM DE SERVIÇO E ORÇAMENTO</font>
</div>
<div id="form-ordem" style="height:230px; width:460px; margin-top:1%; margin-left:20px;"></br>
        <fieldset>
          <legend><b>Todos os Dados</b></legend></br>
          <div style="width:100%;margin-left:20px; margin-top:-3px;">
            <label> Cliente </label> <br />
            <select name="cliente" id="listaClientes">
                <option value="-1"> Selecione um cliente ...</option>
              <?php
                $conexao = mysql_connect("localhost", "usuario","123mudar") or die ("Conex�o n�o efetuada");

                $sql = "SELECT * FROM `scmb_schema`.clientes";

          			$res = mysql_query($sql);

          			while($resultado = mysql_fetch_array($res)){
                  echo "<option value=\"". $resultado['idCliente'] . "\">" . $resultado['nome_cliente'] . "</option>";
          			}
              ?>
            </select>
            <hr style="margin: 10px 0px; width: 90%;" />
            <label>Bicicletas</label><br />
            <select id="bicicleta" name="bicicleta">
            </select>
          </div><hr style="margin: 10px 20px; width: 90%;"/>

<div style="float:left;margin-left:17px; margin-top:-2px;">
              <label  for="nome">Tipo de Serviço: </label>
              <select name="tipos_servico" id="servico_tipo">
                  <option>Selecionar o tipo de servico ..</option>
              <?php
                $sql = "SELECT * FROM `scmb_schema`.tipos_servico";

          			$res = mysql_query($sql);

          			while($resultado = mysql_fetch_array($res)){
                  echo "<option value=\"". $resultado['id_tipos_servico'] . "\">" . $resultado['nome_servico'] . "</option>";
          			}

              ?>

              </select></br>
</div><br/><hr style="margin: 20px 20px; width: 90%;"/>
<div  id="serv_os"></div>
<hr style="margin: 13px 20px; width: 90%;"/>

<div style="float:left;margin-left:10px;">
              <label  for="nome">Data Ent: </label><input type="date" id="de"  name="data_entrada" value=""/>
              <label  for="nome">Data Sai: </label><input  type="date" id="ds" name="data_saida" value=""/><br/><br/><hr><br/>
              <label  for="nome">Valor R$: </label><input class="resultadoValorTotal" disabled="true" type="text" id="vlo" size="10" maxlength="10" name="valor" value=""><br/><br/>
</div><br/><br/><br/>
        </fieldset><br/>

</div><!--Div que acaba o formulario de ordem de serviço -->
<div style="float:left;margin-top:245px;margin-left:295px;">
                <button  style="cursor:pointer;width:90px;height:20px" id="btnSalvarordem">Salvar</button>
                <button id="sair-ordem" style="cursor:pointer;width:90px;height:20px;" value="Sair">Sair</button>
</div><br/>
</div>
