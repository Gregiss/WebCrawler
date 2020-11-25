<?php
class manga{
    public $array;
    private $html;
    private $proxy;
    public $page;
    public function __construct(){
        $this->page = 5;
        $this->apiCrawler = "https://myanimelist.net/topmanga.php?limit=180";
        $this->proxy = '10.1.21.254:3128';
    }

    public function searchAnimeImage($link){
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $link,
            CURLOPT_PROXY => $this->proxy
        ]);
        $html = curl_exec($curl);
        $dom = new DOMDocument();
        libxml_use_internal_errors(true);
        //transforma o html em objeto
        $dom->loadHTML($html);
        libxml_clear_errors();
        $dados = $dom->getElementsByTagName("meta");
        $srcImage = null;
        foreach($dados as $a){
            $prop = $a->getAttribute("property");
            if($prop == "og:image"){
                return $a->getAttribute("content");
            }
        }
        return $srcImage;
    }

    public function curlAnimes(){
        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $this->apiCrawler,
            CURLOPT_PROXY => $this->proxy
        ]);
        $this->html = curl_exec($curl);
        $this->crawlerMangas();
    }

    private function crawlerMangas(){
        $count = 0;
        $dom = new DOMDocument();
        libxml_use_internal_errors(true);
        //transforma o html em objeto
        $dom->loadHTML($this->html);
        libxml_clear_errors();
        $tds = $dom->getElementsByTagName("td");
        $manga = null;
        foreach($tds as $td){
            $as = $td->getElementsByTagName("a");
            foreach($as as $a){
                $classe = $a->getAttribute("class");
                if($count < 40){
                    if(strpos($classe, "hoverinfo_trigger") !== false){
                        $href = $a->getAttribute("href");
                        $array = explode("/", $href);
                        $manga['title'] = $array[5];
                        $manga['href'] = $href;
                        $manga['image'] = $this->searchAnimeImage((string) $href);
                        $this->array[] = $manga;
                        $count++;
                    }
                } else{
                    return;
                }
            }
        }
    }
    
    public function getAllMangas(){
        $this->curlAnimes();
        print_r($this->array);
        return $this->array;
    }
}