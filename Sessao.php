<?php 
include_once("Conexao.php"); // importa a classe que realiza a conexão com o banco de dados

class Sessao extends Conexao{ // Herda a classe Conexao que faz a conexão com o banco de dados

    private $stmt; // atributo para ser usado nas consultas ao bd
    
    public function readUsers(){ // busca todos os usuários cadastrados
        // o método conect() retorna a variável $PDO
        $this->stmt = $this->Conect()->prepare("SELECT * FROM login"); 
        $this->stmt->execute(); 
        $result = $this->stmt->fetchAll(PDO::FETCH_OBJ);
        return $result;  
    }

// fazer o logoff, destruindo os dados da sessão e voltando para página de login(index.php)
    public static function logoff(){  
        session_start();
        session_destroy();
        header("location:index.php");
        exit; 
    }

//se o usuário e senha coicidir cria sessão e direciona para página privada
    public static function autorizado(){
        session_start();
        $_SESSION['login'] = session_id();
        header("location:protegida.php");
       }
}
?>