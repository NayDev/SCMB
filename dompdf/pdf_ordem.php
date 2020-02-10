
<?php
  require_once("dompdf_config.inc.php");
  define('MEU_SCHEMA', 'scmb_schema');

  $conexao = mysql_connect("localhost", "root","123mudar") or die ("Conex�o n�o efetuada");
  $dompdf = new DOMPDF();

  $sql = "SELECT texto FROM `" . MEU_SCHEMA . "`.gerar_pdf ORDER BY id_gerar_pdf DESC LIMIT 1";
  $res = mysql_query($sql);

  while($resultado = mysql_fetch_array($res)){
    $html = utf8_decode($resultado[0]);
  }

  $dompdf->load_html($html);
  ob_clean();
  $dompdf->render();

  $dompdf->stream(
    "ORDEM_SERVICO.pdf",
    array(
      "Attachment" => true
    )
  );

?>
