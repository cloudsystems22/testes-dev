<?php 
    
    //5) Considere os comandos PHP abaixo, que objetivam criar um array
    $servico = array("Água" => "8,70", "Esgoto" => "4,30");
    var_dump($servico);

    $servico['Água'] = "8,70"; $servico['Esgoto'] = "4,30";
    var_dump($servico);

    //Resposta b) I e IV, porém inicialmente achei que o array do item I fosse uma pegadinha, pois está faltando uma 'aspas', que geraria um erro no código.

    // -------------------------------------------------------------------------------------------------------------------------------
    //6) Considere a função abaixo existente em uma classe PHP em condições ideais: 
    // Resposta = a) $conn->exec($sql)

    // public function insert($User){
    //     try{
    //         $conn = new PDO("mysql:host=localhost;dbname=dados", "root", "");
    //         $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //         $sql = "INSERT INTO `testesuperlogica`.`usuario` (`nome`, `usuario`, `senha`) VALUES ('$User->Nome', '$User->Usuario', '$User->Senha');";
    //         $conn->exec($sql);
    //     } catch (PDOException $e){
    //         return var_dump($e->getCode());
    //     }
    // }
    // Observação -> No teste $User->Usuário está com um acento, creio que não será possivel realizar um deploy.

    //7) Na conversão implícita de tipos do PHP, terá o valor booleano verdadeiro a seguinte expressão:
    //a) '0' /* 0 como string */ -> Verdadeiro
    //b) " " /* string com um espaço */ -> Verdadeiro
    //c) "0.0" /* 0.0 como string */ -> Verdadeiro
    //d) 0 /* 0 como inteiro */ -> Verdadeiro
    //e) 0.0 /* 0.0 como float */ -> Verdadeiro
    $resposta = 0.0;

    var_dump($resposta);

    // 8) Dado o trecho de código PHP abaixo, implementado por um programador inexperiente, destina-se a
    // consultar a tabela users de um banco de dados através de um comando SQL, como parte do processamento
    // de admissão (login) de usuários em um site web:

    //Resposta: a) não terá sucesso, devido a um erro sintático no comando SQL;
    // 1. Quebra de linha nos locais errados; 2. mysql_query(string $query [, resource $link_identifier ] ) a query precisa ser passada junto com a conexão; 3. Provavelmente
    // o campo 'passowrd' está escrito errado, provavelmente a tabela foi criada com o campo 'password'; 4. Existe uma 'aspas' a mais na string;

    // $login = $_POST['login'];
    // $passw = $_POST['password'];

    // $sql = "SELECT * FROM users WHERE .
    //  "login='" . $login . 
    //  "' AND passowrd='" 
    //  . $passw . "';";
    // $rows = mysql_query($sql);


    // 9) Um programador web deseja armazenar dados no navegador do usuário para rastrear ou identificar
    // aqueles que retornam ao site. Para isso, no site que está sendo desenvolvido em PHP 7, deverá ser utilizada
    // a função:

    //Resposta de acordo com a documentação do PHP e minha utilização também - A função setcookie() define um cookie para ser enviado juntamente com o resto dos cabeçalhos HTTP. Como outros cabeçalhos (headers), 
    //os cookies devem ser enviados antes de qualquer saída do seu script (isso é uma restrição do protocolo). O que quer dizer que você deve colocar chamadas a 
    //essa função antes de qualquer saída, incluindo as tags <html> e <head> e também espaços em branco.

    //10) Na sua opinião, quem deve ser responsável pelos testes do sistema?
    //Qualquer pessoa que esteja disponível na empresa e que tenha conhecimento da ferramenta para o
    //qual o código foi desenvolvido. Reforçando essa resposta, na minha opinião quanto mais leigo o responsável pelo teste for sobre o código, melhor será o teste, 
    //possibilitando encontrar possiveis erros que o desenvolvedor por conhecer o código inconcientemente pode ignorar, gerando então 
    //possivel um falso controle de qualidade.
   
?>