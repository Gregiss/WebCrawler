-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2020 às 13:57
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crawler`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `myanimelist` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `manga`
--

INSERT INTO `manga` (`id`, `title`, `href`, `myanimelist`, `image`, `date`) VALUES
(1, 'Berserk', 'https://myanimelist.net/manga/2/Berserk', '', 'https://cdn.myanimelist.net/images/manga/1/157931.jpg', '2020-11-26 14:50:41'),
(2, 'JoJo_no_Kimyou_na_Bouken_Part_7__Steel_Ball_Run', 'https://myanimelist.net/manga/1706/JoJo_no_Kimyou_na_Bouken_Part_7__Steel_Ball_Run', '', 'https://cdn.myanimelist.net/images/manga/3/179882.jpg', '2020-11-26 14:50:41'),
(3, 'Fullmetal_Alchemist', 'https://myanimelist.net/manga/25/Fullmetal_Alchemist', '', 'https://cdn.myanimelist.net/images/manga/1/27600.jpg', '2020-11-26 14:50:41'),
(4, 'One_Piece', 'https://myanimelist.net/manga/13/One_Piece', '', 'https://cdn.myanimelist.net/images/manga/3/55539.jpg', '2020-11-26 14:50:41'),
(5, 'Monster', 'https://myanimelist.net/manga/1/Monster', '', 'https://cdn.myanimelist.net/images/manga/3/54525.jpg', '2020-11-26 14:50:41'),
(6, 'Vagabond', 'https://myanimelist.net/manga/656/Vagabond', '', 'https://cdn.myanimelist.net/images/manga/2/181787.jpg', '2020-11-26 14:50:41'),
(7, 'Oyasumi_Punpun', 'https://myanimelist.net/manga/4632/Oyasumi_Punpun', '', 'https://cdn.myanimelist.net/images/manga/3/164420.jpg', '2020-11-26 14:50:41'),
(8, 'Grand_Blue', 'https://myanimelist.net/manga/70345/Grand_Blue', '', 'https://cdn.myanimelist.net/images/manga/2/166124.jpg', '2020-11-26 14:50:41'),
(9, 'Slam_Dunk', 'https://myanimelist.net/manga/51/Slam_Dunk', '', 'https://cdn.myanimelist.net/images/manga/2/157904.jpg', '2020-11-26 14:50:41'),
(10, 'Kingdom', 'https://myanimelist.net/manga/16765/Kingdom', '', 'https://cdn.myanimelist.net/images/manga/2/171872.jpg', '2020-11-26 14:50:41'),
(11, 'Made_in_Abyss', 'https://myanimelist.net/manga/91941/Made_in_Abyss', '', 'https://cdn.myanimelist.net/images/manga/3/161645.jpg', '2020-11-26 14:54:21'),
(12, 'Yotsuba_to', 'https://myanimelist.net/manga/104/Yotsuba_to', '', 'https://cdn.myanimelist.net/images/manga/3/57369.jpg', '2020-11-26 14:54:21'),
(13, 'Kaze_no_Tani_no_NausicaÃƒÂ¤', 'https://myanimelist.net/manga/651/Kaze_no_Tani_no_NausicaÃƒÂ¤', '', 'https://cdn.myanimelist.net/images/manga/3/156624.jpg', '2020-11-26 14:54:21'),
(14, 'Ashita_no_Joe', 'https://myanimelist.net/manga/1303/Ashita_no_Joe', '', 'https://cdn.myanimelist.net/images/manga/4/75029.jpg', '2020-11-26 14:54:21'),
(15, 'Koe_no_Katachi', 'https://myanimelist.net/manga/56805/Koe_no_Katachi', '', 'https://cdn.myanimelist.net/images/manga/1/120529.jpg', '2020-11-26 14:54:21'),
(16, 'Akatsuki_no_Yona', 'https://myanimelist.net/manga/21525/Akatsuki_no_Yona', '', 'https://cdn.myanimelist.net/images/manga/3/153249.jpg', '2020-11-26 14:54:21'),
(17, '3-gatsu_no_Lion', 'https://myanimelist.net/manga/1224/3-gatsu_no_Lion', '', 'https://cdn.myanimelist.net/images/manga/1/52281.jpg', '2020-11-26 14:54:21'),
(18, 'Uchuu_Kyoudai', 'https://myanimelist.net/manga/14483/Uchuu_Kyoudai', '', 'https://cdn.myanimelist.net/images/manga/3/166256.jpg', '2020-11-26 14:54:22'),
(19, 'Utsuro_no_Hako_to_Zero_no_Maria', 'https://myanimelist.net/manga/55215/Utsuro_no_Hako_to_Zero_no_Maria', '', 'https://cdn.myanimelist.net/images/manga/2/175662.jpg', '2020-11-26 14:54:22'),
(20, 'Monogatari_Series__Final_Season', 'https://myanimelist.net/manga/44227/Monogatari_Series__Final_Season', '', 'https://cdn.myanimelist.net/images/manga/1/181554.jpg', '2020-11-26 14:54:22'),
(21, 'Overlord', 'https://myanimelist.net/manga/81669/Overlord', '', 'https://cdn.myanimelist.net/images/manga/1/160558.jpg', '2020-11-26 14:54:45'),
(22, 'Nana', 'https://myanimelist.net/manga/28/Nana', '', 'https://cdn.myanimelist.net/images/manga/1/163191.jpg', '2020-11-26 14:54:45'),
(23, 'Hunter_x_Hunter', 'https://myanimelist.net/manga/26/Hunter_x_Hunter', '', 'https://cdn.myanimelist.net/images/manga/2/192445.jpg', '2020-11-26 14:54:45'),
(24, 'Shinyaku_Toaru_Majutsu_no_Index', 'https://myanimelist.net/manga/24875/Shinyaku_Toaru_Majutsu_no_Index', '', 'https://cdn.myanimelist.net/images/manga/2/221675.jpg', '2020-11-26 14:54:45'),
(25, 'Hajime_no_Ippo', 'https://myanimelist.net/manga/7/Hajime_no_Ippo', '', 'https://cdn.myanimelist.net/images/manga/1/15282.jpg', '2020-11-26 14:54:45'),
(26, 'Beck', 'https://myanimelist.net/manga/145/Beck', '', 'https://cdn.myanimelist.net/images/manga/3/171795.jpg', '2020-11-26 14:54:45'),
(27, 'Re_Zero_kara_Hajimeru_Isekai_Seikatsu', 'https://myanimelist.net/manga/74697/Re_Zero_kara_Hajimeru_Isekai_Seikatsu', '', 'https://cdn.myanimelist.net/images/manga/1/129447.jpg', '2020-11-26 14:54:45'),
(28, 'ReLIFE', 'https://myanimelist.net/manga/78523/ReLIFE', '', 'https://cdn.myanimelist.net/images/manga/2/171573.jpg', '2020-11-26 14:54:45'),
(29, 'Kono_Subarashii_Sekai_ni_Shukufuku_wo', 'https://myanimelist.net/manga/60553/Kono_Subarashii_Sekai_ni_Shukufuku_wo', '', 'https://cdn.myanimelist.net/images/manga/1/174932.jpg', '2020-11-26 14:54:45'),
(30, 'Umineko_no_Naku_Koro_ni_Chiru_-_Episode_8__Twilight_of_the_Golden_Witch', 'https://myanimelist.net/manga/34053/Umineko_no_Naku_Koro_ni_Chiru_-_Episode_8__Twilight_of_the_Golden_Witch', '', 'https://cdn.myanimelist.net/images/manga/3/206205.jpg', '2020-11-26 14:54:45'),
(31, 'Aria', 'https://myanimelist.net/manga/81/Aria', '', 'https://cdn.myanimelist.net/images/manga/2/202644.jpg', '2020-11-26 14:55:10'),
(32, 'Dorohedoro', 'https://myanimelist.net/manga/1133/Dorohedoro', '', 'https://cdn.myanimelist.net/images/manga/2/143111.jpg', '2020-11-26 14:55:10'),
(33, 'Song_of_the_Long_March', 'https://myanimelist.net/manga/42001/Song_of_the_Long_March', '', 'https://cdn.myanimelist.net/images/manga/2/168139.jpg', '2020-11-26 14:55:10'),
(34, 'Bastard', 'https://myanimelist.net/manga/111213/Bastard', '', 'https://cdn.myanimelist.net/images/manga/1/205549.jpg', '2020-11-26 14:55:10'),
(35, 'Who_Made_Me_a_Princess', 'https://myanimelist.net/manga/121269/Who_Made_Me_a_Princess', '', 'https://cdn.myanimelist.net/images/manga/1/222587.jpg', '2020-11-26 14:55:10'),
(36, 'Tower_of_God', 'https://myanimelist.net/manga/122663/Tower_of_God', '', 'https://cdn.myanimelist.net/images/manga/2/223694.jpg', '2020-11-26 14:55:10'),
(37, 'Spy_x_Family', 'https://myanimelist.net/manga/119161/Spy_x_Family', '', 'https://cdn.myanimelist.net/images/manga/3/219741.jpg', '2020-11-26 14:55:10'),
(38, 'Kono_Oto_Tomare', 'https://myanimelist.net/manga/45143/Kono_Oto_Tomare', '', 'https://cdn.myanimelist.net/images/manga/3/116653.jpg', '2020-11-26 14:55:10'),
(39, 'Skip_Beat', 'https://myanimelist.net/manga/610/Skip_Beat', '', 'https://cdn.myanimelist.net/images/manga/2/26110.jpg', '2020-11-26 14:55:10'),
(40, 'Violet_Evergarden', 'https://myanimelist.net/manga/98930/Violet_Evergarden', '', 'https://cdn.myanimelist.net/images/manga/1/190961.jpg', '2020-11-26 14:55:10'),
(41, 'One_Outs', 'https://myanimelist.net/manga/11327/One_Outs', '', 'https://cdn.myanimelist.net/images/manga/3/169329.jpg', '2020-11-26 14:55:32'),
(42, 'Here_U_Are', 'https://myanimelist.net/manga/119072/Here_U_Are', '', 'https://cdn.myanimelist.net/images/manga/1/226061.jpg', '2020-11-26 14:55:32'),
(43, 'Suzumiya_Haruhi_Series', 'https://myanimelist.net/manga/3083/Suzumiya_Haruhi_Series', '', 'https://cdn.myanimelist.net/images/manga/1/186142.jpg', '2020-11-26 14:55:32'),
(44, 'Ginga_Eiyuu_Densetsu', 'https://myanimelist.net/manga/6978/Ginga_Eiyuu_Densetsu', '', 'https://cdn.myanimelist.net/images/manga/5/155231.jpg', '2020-11-26 14:55:32'),
(45, 'Sakamichi_no_Apollon', 'https://myanimelist.net/manga/28393/Sakamichi_no_Apollon', '', 'https://cdn.myanimelist.net/images/manga/3/62627.jpg', '2020-11-26 14:55:32'),
(46, 'Chikan_Otoko', 'https://myanimelist.net/manga/46282/Chikan_Otoko', '', 'https://cdn.myanimelist.net/images/manga/4/155148.jpg', '2020-11-26 14:55:32'),
(47, 'No_Game_No_Life', 'https://myanimelist.net/manga/48399/No_Game_No_Life', '', 'https://cdn.myanimelist.net/images/manga/2/188186.jpg', '2020-11-26 14:55:32'),
(48, 'Baccano', 'https://myanimelist.net/manga/1342/Baccano', '', 'https://cdn.myanimelist.net/images/manga/2/172736.jpg', '2020-11-26 14:55:32'),
(49, 'Otoyomegatari', 'https://myanimelist.net/manga/11514/Otoyomegatari', '', 'https://cdn.myanimelist.net/images/manga/2/188950.jpg', '2020-11-26 14:55:32'),
(50, 'Ohayou_Ibarahime', 'https://myanimelist.net/manga/88639/Ohayou_Ibarahime', '', 'https://cdn.myanimelist.net/images/manga/3/164641.jpg', '2020-11-26 14:55:32'),
(51, 'Hi_no_Tori_1967', 'https://myanimelist.net/manga/1325/Hi_no_Tori_1967', '', 'https://cdn.myanimelist.net/images/manga/3/159419.jpg', '2020-11-26 14:55:54'),
(52, 'Kamisama_Hajimemashita', 'https://myanimelist.net/manga/8157/Kamisama_Hajimemashita', '', 'https://cdn.myanimelist.net/images/manga/1/167521.jpg', '2020-11-26 14:55:54'),
(53, 'Gekkan_Shoujo_Nozaki-kun', 'https://myanimelist.net/manga/29211/Gekkan_Shoujo_Nozaki-kun', '', 'https://cdn.myanimelist.net/images/manga/3/208752.jpg', '2020-11-26 14:55:54'),
(54, 'Diamond_no_Ace_Act_II', 'https://myanimelist.net/manga/92559/Diamond_no_Ace_Act_II', '', 'https://cdn.myanimelist.net/images/manga/3/167576.jpg', '2020-11-26 14:55:54'),
(55, 'Bakemonogatari', 'https://myanimelist.net/manga/113010/Bakemonogatari', '', 'https://cdn.myanimelist.net/images/manga/2/210355.jpg', '2020-11-26 14:55:54'),
(56, 'Eyeshield_21', 'https://myanimelist.net/manga/43/Eyeshield_21', '', 'https://cdn.myanimelist.net/images/manga/2/165586.jpg', '2020-11-26 14:55:54'),
(57, 'The_Breaker', 'https://myanimelist.net/manga/8586/The_Breaker', '', 'https://cdn.myanimelist.net/images/manga/2/55867.jpg', '2020-11-26 14:55:54'),
(58, 'Juuni_Kokuki', 'https://myanimelist.net/manga/3807/Juuni_Kokuki', '', 'https://cdn.myanimelist.net/images/manga/3/157938.jpg', '2020-11-26 14:55:54'),
(59, 'Kami_nomi_zo_Shiru_Sekai', 'https://myanimelist.net/manga/7519/Kami_nomi_zo_Shiru_Sekai', '', 'https://cdn.myanimelist.net/images/manga/2/188974.jpg', '2020-11-26 14:55:54'),
(60, 'Umineko_no_Naku_Koro_ni', 'https://myanimelist.net/manga/66517/Umineko_no_Naku_Koro_ni', '', 'https://cdn.myanimelist.net/images/manga/1/185819.jpg', '2020-11-26 14:55:54'),
(61, 'Noragami', 'https://myanimelist.net/manga/24692/Noragami', '', 'https://cdn.myanimelist.net/images/manga/2/90899.jpg', '2020-11-26 14:56:35'),
(62, 'Steins_Gate', 'https://myanimelist.net/manga/39859/Steins_Gate', '', 'https://cdn.myanimelist.net/images/manga/3/72649.jpg', '2020-11-26 14:56:35'),
(63, 'Kimi_no_Suizou_wo_Tabetai', 'https://myanimelist.net/manga/104538/Kimi_no_Suizou_wo_Tabetai', '', 'https://cdn.myanimelist.net/images/manga/2/191611.jpg', '2020-11-26 14:56:35'),
(64, 'Golden_Kamuy', 'https://myanimelist.net/manga/85968/Golden_Kamuy', '', 'https://cdn.myanimelist.net/images/manga/3/149257.jpg', '2020-11-26 14:56:35'),
(65, 'Horimiya', 'https://myanimelist.net/manga/42451/Horimiya', '', 'https://cdn.myanimelist.net/images/manga/2/162128.jpg', '2020-11-26 14:56:35'),
(66, 'Sousou_no_Frieren', 'https://myanimelist.net/manga/126287/Sousou_no_Frieren', '', 'https://cdn.myanimelist.net/images/manga/3/232121.jpg', '2020-11-26 14:56:35'),
(67, 'Kuroshitsuji', 'https://myanimelist.net/manga/3866/Kuroshitsuji', '', 'https://cdn.myanimelist.net/images/manga/1/28128.jpg', '2020-11-26 14:56:35'),
(68, 'Onanie_Master_Kurosawa', 'https://myanimelist.net/manga/8967/Onanie_Master_Kurosawa', '', 'https://cdn.myanimelist.net/images/manga/3/212092.jpg', '2020-11-26 14:56:35'),
(69, 'Kimi_no_Na_wa', 'https://myanimelist.net/manga/99314/Kimi_no_Na_wa', '', 'https://cdn.myanimelist.net/images/manga/1/182270.jpg', '2020-11-26 14:56:35'),
(70, 'Umineko_no_Naku_Koro_ni_Chiru_-_Episode_5__End_of_the_Golden_Witch', 'https://myanimelist.net/manga/21498/Umineko_no_Naku_Koro_ni_Chiru_-_Episode_5__End_of_the_Golden_Witch', '', 'https://cdn.myanimelist.net/images/manga/1/76083.jpg', '2020-11-26 14:56:35'),
(71, 'The_Breaker__New_Waves', 'https://myanimelist.net/manga/22651/The_Breaker__New_Waves', '', 'https://cdn.myanimelist.net/images/manga/1/62105.jpg', '2020-11-26 14:56:35'),
(72, 'Ookami_to_Koushinryou', 'https://myanimelist.net/manga/3299/Ookami_to_Koushinryou', '', 'https://cdn.myanimelist.net/images/manga/3/153861.jpg', '2020-11-26 14:56:35'),
(73, 'Nodame_Cantabile', 'https://myanimelist.net/manga/419/Nodame_Cantabile', '', 'https://cdn.myanimelist.net/images/manga/2/153962.jpg', '2020-11-26 14:56:35'),
(74, '21st_Century_Boys', 'https://myanimelist.net/manga/743/21st_Century_Boys', '', 'https://cdn.myanimelist.net/images/manga/2/54415.jpg', '2020-11-26 14:56:35'),
(75, 'Bakuman', 'https://myanimelist.net/manga/9711/Bakuman', '', 'https://cdn.myanimelist.net/images/manga/1/208974.jpg', '2020-11-26 14:56:35'),
(76, 'Hoshi_no_Samidare', 'https://myanimelist.net/manga/10552/Hoshi_no_Samidare', '', 'https://cdn.myanimelist.net/images/manga/3/56421.jpg', '2020-11-26 14:56:35'),
(77, 'Barakamon', 'https://myanimelist.net/manga/17051/Barakamon', '', 'https://cdn.myanimelist.net/images/manga/1/216099.jpg', '2020-11-26 14:56:35'),
(78, 'Beastars', 'https://myanimelist.net/manga/103701/Beastars', '', 'https://cdn.myanimelist.net/images/manga/2/189832.jpg', '2020-11-26 14:56:35'),
(79, 'Blade_of_the_Immortal', 'https://myanimelist.net/manga/658/Blade_of_the_Immortal', '', 'https://cdn.myanimelist.net/images/manga/1/157919.jpg', '2020-11-26 14:56:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
