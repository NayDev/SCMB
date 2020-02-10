<div id="formularioconsultar" class="modal" style="height:435px; width: 280px; border: 1px solid black; z-index: 40; position: absolute; margin-top: 5%; margin-left:650px;background-color:white; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:280px;"><font color="fffefe" style="margin-left:100px;float:left;margin-top:10px;">CONSULTA</font>
  </div><br/>
  <div style="background-image:url('images/30.gif'); border: solid 1px grey;height:270px;width:230px; float:left;margin-left:25px;"><br/><br/>
  </div><br/>
  <div style="float:left; margin-left: 39px;margin-top:10px;">
                  <label for="nome">Informe seu CPF:</label><br/>
                  <input type="text" style="padding:5px;" size="25" maxlength="30" name="cpf">
  </div>
  <div style="float:left;margin-top:10px;margin-left:163px;">
                    <button id="sai" style="cursor:pointer;width:95px;height:30px;" >Sair</button>
  </div>
  <div style="float:left;margin-top:-30px;margin-left:40px;">
                    <button id="btnBuscarCPF" style="cursor:pointer;width:95px;height:30px;" value="buscar";>Buscar</button>
  </div><br/>
</div>

<div id="resultado_consulta_cpf" style=" z-index:42; width: 850px; height: 388px; border: 1px solid black; background: white; position:absolute; margin: 5% 24%; display:none;">
  <div style="background-image:url('images/cad.jpg'); height:40px;width:850px;">
    <font color="fffefe" style="margin-left:380px;float:left;margin-top:10px;">CONSULTA</font>
  </div>
<fieldset id="fil">
  <fieldset >
    <fieldset >
      <table id="resultado_table_cpf"></table> <!-- NAO MUDAR -->
    </fieldset>
    <div id=bikes>
    <table id="resultado_table_btnBike" style="margin-top: 1px; display:none;"></table> <!-- NAO MUDAR -->
  </div>
  </fieldset>
  <div id=ordem_os>
  <table id="resultado_table_btnOS" style="display:none;"></table> <!-- NAO MUDAR -->
</div>
</fieldset>
  <button id="sairConsultaCPF" style="cursor:pointer;width:80px;height:20px; margin-left:768px; margin-top:2px;" >Sair</button>
</div>
