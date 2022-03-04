<?php 
include_once("classes/Sessao.php"); // importa a classe Sessao

$userForm = $_POST['usuario']; // validação do usuário do formulário 
$userPass = $_POST['senha'];  // validação da senha do formulário

$obj = new Sessao; // cria objeto da classe Sessao

$dados = $obj->readUsers(); // chama método da classe Sessão que consulta os usuários do BD

foreach ($dados as $usuario => $valores) {
    if(password_verify($userForm,$valores->usuario) && password_verify($userPass,$valores->senha)){
        Sessao::autorizado(); // usa o método estático para escrever menos linha de código
        break;
    }else{
        $loginNot = true; // se a autenticação falhar, não achar usuários e senhas 
    }   
}
if($loginNot){
    echo "Usuário não encontrado, tente novamente! <br>";
    echo "<a href='index.php'> Voltar à página de login </a>";
}

?>