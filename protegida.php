<?php 
include_once("classes/Sessao.php"); // para ter acesso ao método estático logoff()
if (isset($_GET['logoff'])){
  Sessao::logoff(); 
  // para criar menos arquivos, chamo o método estático que quebra a sesão
}
   session_start();
   if(isset($_SESSION['login'])) {
?>
<!DOCTYPE html>
<html>
<head>
	<title> acesso restrito </title>
</head>
<body>
      Página com acesso restrito! <br> 

    
    <a href="?logoff">Sair</a> <!-- aqui no href estou passando um valor via get para a prória página -->

</body>
</html>
<?php 
  } // fecha o bloco do if 
  else{
    echo "Você não tem acesso autorizado! <br>";
    echo "<a href='index.php'> Voltar à página de login </a>";
  }
?>