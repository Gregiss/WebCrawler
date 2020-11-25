<?php
ini_set('max_execution_time', 100000);
require './class/manga.php';
$manga = new manga;
$mangas = $manga->getAllMangas();
require './class/Mangas.php';
use Classes\Mangas;

$mangaDB = new Mangas();

foreach($mangas as $manga){
    $mangaDB->inserir($manga['title'], $manga['href'], $manga['image']);
}