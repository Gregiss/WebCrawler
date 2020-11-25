<?php 
        require './class/Mangas.php';
       // require './class/Manga.php';

        use Classes\Mangas;
        
        $mangaDB = new Mangas();
        $top10 = $mangaDB->listar();
        $array = [];    

        foreach ($top10 as $key => $value) {
            $array[] = $value;
        }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
    <title>Top mangas</title>
</head>
<body>
    <style>
        a{
            text-decoration: none;
        }

        #app{
            padding: 20px;
        }

        .mangaImage{
            width: 50px;
            height: 90px;
            position: absolute;
            object-fit: cover;
        }

        .manga_title{
            position: absolute;
            left: 80px;
            top: 45px;
        }

        .v-list-item{
            margin: 10px;
            margin-bottom: 50px;
        }

        .v-card{
            padding: 20px;
            padding-bottom: 40px;
        }
    </style>
    <div id="app">
    <v-app>
    <v-main>
    <br>
    <template>
        <v-card
            class="mx-auto"
            max-width="700"
            tile
        >
        <v-alert
        border="left"
        color="indigo"
        dark
        >
        TOP MANGAS
        </v-alert>
            <v-list-item v-for="manga in mangas">
            <a target="_blank" :href="manga.href">
                <v-list-item-content>
                    <v-list-item-title>
                    <img class="mangaImage" :src="manga.image"/>
                    <p class="manga_title">{{ manga.title }}</p>
                    </v-list-item-title>
                </v-list-item-content>
            </a>
            </v-list-item>
        </v-card>
    </template>
      </v-main>
    </v-app>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/vue@2.x/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vuetify@2.x/dist/vuetify.js"></script>

    <script>
    const arrayManga = <?php echo json_encode($array);?>;
    
    const app = new Vue({
        el: '#app',
        data: {
            mangas: arrayManga
        },
        mounted(){
            for(let i = 0; i < this.mangas.length; i++){
                this.mangas[i].title = this.mangas[i].title.replace("_", " ")
                this.mangas[i].title = this.mangas[i].title.replace("__", " ")
                this.mangas[i].title = this.mangas[i].title.replace("_", " ")
            }
        },
        vuetify: new Vuetify(),
        })
    </script>
   
</body>
</html>