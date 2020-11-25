<?php

namespace Classes;

require 'conexao.php';
use Classes\Conexao;

class Mangas {
    
    private $conexao;
    
    public function __construct() {
        $con = new Conexao();
        $this->conexao = $con->getConexao();
    }
    
    public function listar() {
        $sql = "select * from manga;";       
        $q = $this->conexao->prepare($sql);
        $q->execute();
        return $q;
    }

    public function validarManga($title){
        $sql = "select * from manga where title = ?;";   
        $q = $this->conexao->prepare($sql);
        $q->bindParam(1, $title);    
        $q->execute();
        return $q;
    }
    
    public function inserir($title, $href, $image) {
        $validar = $this->validarManga($title);
        $encontrou = false;
        foreach($validar as $i){
            $encontrou = true;
        }
        if(!$encontrou){
            $sql = "insert into manga (title,href, image) values (?, ?, ?);";
            $q = $this->conexao->prepare($sql);
            $q->bindParam(1, $title);
            $q->bindParam(2, $href);
            $q->bindParam(3, $image);
            $q->execute();
        }
    }
    
}

?>