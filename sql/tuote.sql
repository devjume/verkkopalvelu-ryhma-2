-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09.04.2022 klo 19:01
-- Palvelimen versio: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verkkopalvelu`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `tuote`
--

CREATE TABLE `tuote` (
  `tuote_id` int(11) NOT NULL,
  `tuotenimi` varchar(255) NOT NULL,
  `hinta` decimal(10,2) NOT NULL,
  `alehinta` decimal(10,2) DEFAULT NULL,
  `kuvaus` varchar(255) NOT NULL,
  `valmistaja` varchar(40) DEFAULT NULL,
  `tuoteryhma_id` int(11) NOT NULL,
  `kuvatiedosto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vedos taulusta `tuote`
--

INSERT INTO `tuote` (`tuote_id`, `tuotenimi`, `hinta`, `alehinta`, `kuvaus`, `valmistaja`, `tuoteryhma_id`, `kuvatiedosto`) VALUES
(1, 'Peliläppäri', '199.99', NULL, 'Aikansa elänyt peliläppäri jollekkin haluavalle, speksejä nyt ei jaksa ettiä', 'Acer', 1, NULL),
(2, 'ASUS GeForce GTX 1660 TI 6GB TUF EVO GAMING', '429.00', NULL, 'ASUS TUF Gaming GeForce® GTX 1660 Ti EVO 6GB GDDR6 on kyllä ihan jees näyttis, suosittelen :D!.', 'Asus', 2, NULL),
(3, 'Muumi läppäri', '25.00', '20.00', 'Ei muumitaloa lukita yöksi, hei muumit.\nKiva lelu lapsille. Opettaa kirjaimia ja numeroita, toistaa ääniä ja musiikkia.', 'Moomin', 1, 'https://www.leikkien.fi/tuotekuvat/1200x1200/Lasten-Muumi-lappari.jpg'),
(4, 'IdeaPad 3 17,3\"', '650.00', '0.00', 'IdeaPad 3 17 tarjoaa ison 17,3 tuumaisen näytön Full HD -resoluutiolla. Isoa ja kirkasta 300 nitin kuvaa on miellyttävä katsella. Stereokaiuttimet sekä Dolby Audio -äänet tarjoavat hyvän äänentoiston. Kannettavasta löytyy myös fyysinen kamerasuljin webkam', 'Lenovo', 1, 'https://cdn.verk.net/cdn-cgi/image/w=500,h=500,fit=scale-down,q=75,f=auto,sharpen=0.5/images/40/2_707240-3998x3177.jpg'),
(5, 'Legion 5 17,3\" -pelikannettava', '1300.00', '1250.00', 'Lenovo Legion 5 on pelaajan kannettava minimalistisella ulkonäöllä ja maksimaalisella suorituskyvyllä. AMD:n nopeat Ryzen H-sarjan suorittimet, NVIDIA GeForce RTX -näytönohjain, hyvä jäähdytys, nopea ja tarkka 144hz näyttö sekä erinomainen näppäimistö tar', 'Lenovo', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/36/2_735902-3999x3338.jpg'),
(6, 'ROG Strix SCAR 17 17,3\"', '4200.00', '0.00', 'Upouuden vuoden 2022 Strix SCAR 17 -pelikannettavan suorituskyvyn taustalla vaikuttavat Intel Core i9-12900H-prosessori, NVIDIA 3080 Ti -näytönohjain, 150 W:n enimmäis-TGP-arvo ja signaalikytkin (MUX). Huippuluokan 32 Gt DDR5-muisti puolestaan varmistaa k', 'Asus', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/73/2_775834-4000x2736.jpg'),
(7, 'Laptop 17-cn0005no (461Y0EA) 17,3\"', '420.00', '419.99', 'HP 17 -kannettava on suunniteltu huolellisesti ja sen suorituskykyisyyden varmistavat Intel-prosessori, nopea Wi-Fitekniikka ja runsas tallennustila. Nauti luonnollisesta ja mukavasta kirjoitusasennosta nousevan saranarakenteen ja laajennetun kosketusalus', 'HP', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/84/2_730097-2937x2442.jpeg'),
(8, 'Katana GF76 12UD 17,3”', '1600.00', '0.00', 'Katana GF -sarjan laitteet ovat tehokkaita ja lujia kuin terä, ja ne on optimoitu todellista pelisuorituskykyä ajatellen. Suorituskyvyltään optimoitu Katana GF76 on varustettu ainutlaatuisella punaisesti taustavalaistulla näppäimistöllä, jolla voit loista', 'MSI', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/16/2_759130-4000x2703.jpg'),
(9, 'MacBook Pro 16” M1 Pro 512 Gt -kannettava', '2850.00', '0.00', 'Uusi MacBook Pro tarjoaa käänteentekevää suorituskykyä ammattikäyttäjille. M1 Pro tai vieläkin nopeampi M1 Max lataavat ammattitason työnkulkuun huipputason tehot. Ja vaikuttava akunkesto, loistava 16 tuuman Liquid Retina XDR ‐näyttö ja pro-luokan porttiv', 'Apple', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/13/2_741754-3310x2023.jpeg'),
(10, 'Blade 15 15,6\" -pelikannettava', '5100.00', '0.00', 'Razer Blade on upea ilmestys joka on pakattu täyteen tehoa ja tyyliä. Näyttö on varustettu vain 4,9 mm ohuilla reunoilla ja 100% sRGB väriavaruus pitää väritoiston tarkkana. 12. sukupolven 14-ytiminen Intel Core i9 -suoritin piiskaa koneen täyteen vauhtii', 'Razer', 1, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/69/2_785149-2600x1386.jpg'),
(11, 'Air Duster 400ml -paineilmatölkki', '10.00', '8.00', 'Pölyt veks tietskarista', 'Mr. Muskelknutte', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/5/2_77850-680x1104.jpeg'),
(12, 'Force MP510 M.2 SSD 4 Tt SSD', '1000.00', '920.00', '4 teran NVMe M.2 SSD.\n3480/2000 Mt/s luku ja kirjoitusnopeus. Tämän kun ostaa niin ei tarvitse päivittää tallennustilaa vuosiin.\n', 'Corsair', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/19/2_659935-1151x540.jpg'),
(13, 'KC3000 512 Gt M.2 SSD', '125.00', '0.00', 'Puolen teran (512Gt) SSD\n7000 Mt/s lukunopeus\n3900 Mt/s kirjoitusnopeus', 'Kingston', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/80/2_743248-2066x570.jpeg'),
(14, 'WD Blue SN570 500 Gt M.2 NVMe SSD', '70.00', '0.00', '3500 Mt/s lukunopeus\n2300 Mt/s kirjoitusnopeus', 'Western Digital', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/3/2_754972-1302x362.jpg'),
(15, 'A400 240 Gt SATA3 2,5\" -SSD', '35.00', '0.00', 'Hyvä SSD, hieman hitaampi kuin NVMe M.2 SSD kovalevyt.\nLukunopeus 500 Mt/s\nKirjoitusnopeus 350 Mt/s', 'Kingston', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/9/2_395522-1114x705.jpeg'),
(16, 'UB400 Bluetooth 4.0 Nano USB-adapteri', '12.00', '0.00', 'Erittäin pienikokoinen Bluetooth 4.0 -adapteri USB-väylään.', 'TP-Link', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/70/2_631945-649x647.jpeg'),
(17, 'NT-H1 lämpötahna', '9.00', '0.00', '1.4 ml lämpötahna. Sopii käytettäväksi esimerkiksi suorittimen ja jäähdytyssiilen väliin.', 'Noctua', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/55/2_58448-366x500.jpg'),
(18, 'FURY Beast DDR4 3200 MHz CL16 8 Gt', '40.00', '0.00', 'Kingston FURY Beast DDR4 antaa lisätehoa pelaamiseen, videoiden muokkaamiseen ja renderöintiin jopa 3733 MHz:n nopeudella. Tämä kustannustehokas päivitys on saatavilla 2666–3733 MHz:n nopeuksilla, latenssiluokilla 15–19, yksittäisen moduulin kapasiteeteil', 'Kingston', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/43/2_721508-2075x533.jpeg'),
(19, 'FURY Renegade DDR4 3600 MHz CL16 32 Gt', '158.00', '0.00', 'Anna AMD- tai Intel-pohjaiselle järjestelmällesi lisätehoa, jota tarvitset pysyäksesi pelin kärjessä – hanki ultranopea Kingston FURY Renegade DDR4. Voit lisätä kehysnopeutta, pitää sisältöjen suoratoistot sujuvina ja muokata suosikkitallenteitasi jopa 53', 'Kingston', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/99/2_720425-2071x1251.jpeg'),
(20, 'PCI Express x4 - M.2 NVMe -adapteri', '35.00', '0.00', 'DeLOCK PCI Express x4 - M.2 NVMe -adapterilla voit kytkeä M.2 NVMe (SSD 2280, 2260, 2242 format) -laitteen PCI Express x4 -liitäntään. DeLOCK PCI Express x4 - M.2 NVMe -ohjainkortin avulla voit käyttää M.2 NVMe -standardin SSD-kovalevyä, vaikka emolevystä', 'DeLOCK', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/49/2_291809-688x487.jpeg'),
(21, 'TUF GAMING B550-PLUS AM4 ATX-emolevy', '135.00', '0.00', 'Asus TUF GAMING B550-PLUS on AMD B550 -piirisarjalla varustettu AM4-kantainen emolevy 3. sukupolven AMD Ryzen prosessoreille. Emolevy tukee myös BIOS-päivityksellä tulevan sukupolven AMD Ryzen prosessoreita. B550 piirisarjan PCIe 4.0 -tuki tarjoaa tarvitt', 'Asus', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/93/2_633934-1355x1094.jpg'),
(22, 'B450-A PRO MAX AM4 ATX-emolevy', '76.00', '0.00', 'Perustason AMD B450 -piirisarjalla ja AM4-prosessorikannalla varustettu ATX-emolevy AMD Ryzen -suorittimille. MAX-malli, tukee myös 3000-sarjan Ryzen suorittimia.', 'MSI', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/43/2_572488-1024x818.jpg'),
(23, 'PRIME H610M-A D4 LGA 1700 mATX-emolevy', '120.00', '0.00', 'Asus PRIME H610M-A D4 on Intel H610 -piirisarjalla varustettu Intel LGA 1700-kantainen emolevy 12. sukupolven Intel prosessoreille.\nPRIME H610 sarjan emolevyt tarjoavat tärkeimmät ominaisuudet laadukkaan kokoonpanon kokoamiseen edulliseen hintaan. PRIME-e', 'Asus', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/55/2_757402-2058x1655.jpg'),
(24, 'GeForce TUF-RTX3070TI-O8G-GAMING', '900.00', '0.00', 'Asus TUF Gaming GeForce RTX 3080 Ti suunnittelussa on karsittu pois ylimääriset ominaisuudet ja keskitytty luomaan tuote, joka käyttää mahdollisimman laadukkaita komponentteja ja huippuluokan jäähdytystekniikkaa. Uusi kokonaan metallinen ulkokuori sisältä', 'Asus', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/72/2_715670-2236x2339.jpg'),
(25, 'GeForce GTX 1060 OC edition 6GB GDDR5', '350.00', '0.00', '1809 MHz boostauskello OC-tilassa uskomattomaan suorituskykyyn ja pelikokemukseen.\nKiva näyttis.', 'Asus', 2, 'https://www.asus.com/media/global/products/gdO3Gfjah8uWeavq/P_setting_xxx_0_90_end_500.png'),
(26, 'GT 710 1GD3H LP GeForce GT710 1024 Mt DDR3', '55.00', '0.00', 'Vähän tämmönen huonompi näyttis, mutta voittaa suurimman osan integroiduista näytönohjaimista.', 'MSI', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/59/2_313554-590x401.jpg'),
(27, 'DUAL-RX580-O8G Radeon RX 580 OC 8 Gt', '300.00', '275.00', 'näyttis. Radeon RX 580 8 Gt muistilla.', 'Asus', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/86/2_399341-3928x2712.jpeg'),
(28, 'Core i5-12600K -suoritin', '333.00', '0.00', '12. sukupolven Intel Core i5-12600K on 10-ytiminen LGA1700-kantaan suunniteltu kerroinlukoton suoritin integroidulla näytönohjaimella. Intel Core i5-12600K tarjoaa PCIe Gen 5.0- ja 4.0 -tuen sekä DDR5- ja DDR4 -tuen.\n12. sukupolven Intel Core -prosessorit', 'Intel', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/97/2_728189-2000x1334.jpeg'),
(29, 'Core i9-12900K -suoritin', '666.00', '0.00', '12. sukupolven Intel Core i9-12900K on kerroinlukoton suoritin näytönohjaimella. Mukana Intel Turbo Boost Max Technology 3.0, PCIe Gen 5.0/4.0 -tuki sekä DDR5- ja DDR4-tuki.\n12. sukupolven Intel Core -prosessorit on optimoitu intohimoisille pelaajille ja ', 'Intel', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/55/2_728201-785x934.jpg'),
(30, 'Ryzen 5 5600X -prosessori AM4', '275.00', '260.00', 'AMD Ryzen 5000 -sarjan suorittimet tarjoavat edistyksellisen prosessoriarkkitehtuurin pelaajille ja sisällöntuottajille. Pelaatpa uusimpia pelejä, suunnittelet pilvenpiirtäjiä tai analysoit dataa, tarvitset prosessorin, joka mahdollistaa tarvitsemasi suor', 'AMD', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/52/2_661639-860x935.jpg'),
(31, 'Ryzen 7 3700X -prosessori AM4', '370.00', '0.00', 'Suorituskykyä tarjoava AMD:n 7 nanometrin valmistusprosessilla valmistettu 8-ydinprosessori.\nKellotaajuus: 3,6 - 4,4 GHz', 'AMD', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/29/2_556840-1094x909.jpg'),
(32, 'Ryzen 5 3600 -prosessori AM4', '245.00', '0.00', 'Suorituskykyä tarjoava AMD:n 7 nanometrin valmistusprosessilla valmistettu 6-ydinprosessori.\nKellotaajuus: 3,6 - 4,2 GHz', 'AMD', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/19/2_556846-984x959.jpg'),
(33, 'Ryzen 5 4500 -prosessori AM4', '150.00', '0.00', 'Edullinen AMD prosessori kuudella ytimellä ja seitsemän nanometrin valmistusprosessilla joka tarjoaa edistyksellisen prosessoriarkkitehtuurin pelaamiseen ja työntekoon.', 'AMD', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/18/2_778357-1729x1852.jpg'),
(34, 'PRIME PX-1300 ATX-virtalähde, 1300W', '275.00', '0.00', 'Seasonicin PRIME-sarja on aina osoittanut erinomaista suorituskykyä ja niistä on vuosien saatossa tullut teknologisen huippuosaamisen ja laadun ruumiillistuma.\nTämä kolmas PRIME-sarjan sukupolvi otettiin käyttöön yhtenäisen nimeämis-linjan lisäksi päivite', 'Seasonic', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/34/2_747295-1192x1088.jpeg'),
(35, 'HX1000, 80 PLUS Platinum - ATX-virtalähde, 1000 W', '250.00', '225.00', 'Erittäin hiljainen ja luotettava modulaarinen virtalähde 80 PLUS Platinum -sertifioinnilla. Erinomaisen hyötysuhteen ansiosta virtalähde kuluttaa vähemmän sähköä ja tuottaa vähemmän lämpöä.\nJatkuva 1000 W teho.', 'Corsair', 2, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/10/2_393845-756x549.jpg'),
(36, '20 W USB-C laturi', '25.00', '20.00', 'Applen 20 W USB-C-virtalähde lataa nopeasti ja tehokkaasti kotona, toimistossa tai liikkeellä oltaessa. Virtalähde toimii minkä tahansa USB‑C-yhteensopivan laitteen kanssa, mutta Apple suosittelee sen käyttämistä 11 tuuman iPad Pron tai 12,9 tuuman iPad P', 'Apple', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/52/2_663670-436x869.jpeg'),
(37, 'Galaxy S21 5G -Android-puhelin, 8/128Gt', '620.00', '600.00', 'Ikuista täydelliset hetket Galaxy S21 5G:n avulla. Suunniteltu mullistamaan valokuvasi ja videosi: 8K-tarkkuus on suurempi kuin elokuvateattereissa, joten voit nyt tallentaa valokuvia suoraan videolta. 64 Mp:n kamera, kaikkien aikojen nopein suorittimemme', 'Samsung', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/11/2_679144-1055x2631.jpeg'),
(38, '25W -pikalaturi, USB-C pikalaturi', '30.00', '25.00', 'Laitteesi ansaitsevat tehokasta latausta. Wall Charger for Super Fast Charging (25 W) on seinälaturi, joka mahdollistaa Super Fast Charging -pikalatauksen jopa 25 watin teholla yhteensopiville laitteille. Parhaisiin tuloksiin päästään, kun Wall Charger -l', 'Samsung', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/85/2_680203-609x322.jpg'),
(39, 'Galaxy Xcover 5 Enterprise Edition -Android-puhelin, Dual-SIM, 64 Gt', '300.00', '0.00', 'Samsung Galaxy XCover 5 on kestävä puhelin kaikille, jotka tarvitsevat hyvin mukana menossa kestävän puhelimen. Se kestää iskuja, vettä, pölyä ja likaa, joten se selviää juuri niin monesta haasteesta kuin sinäkin. Ainutlaatuisten ominaisuuksiensa ansiosta', 'Samsung', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/31/2_691879-1297x2891.jpeg'),
(40, '8T -Android-puhelin, 128/8Gt', '430.00', '0.00', 'OnePlus 8T on ensimmäinen OxygenOS 11 laitteemme. Android 11:een perustuvassa käyttöjärjestelmässä on uusi raikas design käyttöjärjestelmässä on uusi raikas design sekä käyttäjiemme pyytämiä, ja heidän kanssaan yhdessä luotuja hyödyllisiä toimintoja.', 'OnePlus', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/64/2_656383-509x1089.jpg'),
(41, 'Speak 510 MS USB/BT-konferenssikaiutin', '130.00', '0.00', 'Jabra Speak on suunniteltu erityisesti kaksinkeskeisten puheluiden tai pienen ryhmäpuhelun hoitamiseen. Kompaktin koon ansiosta Jabra Speak kulkee helposti myös mukana minne ikinä menetkin. Yhdistä helposti PC, tablet tai älypuhelin joko käyttämällä USB-l', 'Jabra', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/81/2_160564-2500x2168.jpeg'),
(42, 'Extrapower -varavirtalähde, 20 000 mAh', '50.00', '40.00', 'Wave Extrapower lisävirtalaturi tarjoaa extra-paljon lataustehoa tyylikkäässä ja helppokäyttöisessä paketissa. Lisävirtalaturilla lataat puhelimet, tabletit ja muut mobiililaitteet missä ja milloin tahansa.\n\nSOPII MOBIILILAITTEILLE\nWave lisävirtalaturin j', 'Wave', 3, 'https://cdn.verk.net/cdn-cgi/image/w=816,h=510,fit=scale-down,q=75,f=auto,sharpen=0.5/images/88/2_721406-528x1027.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tuote`
--
ALTER TABLE `tuote`
  ADD PRIMARY KEY (`tuote_id`),
  ADD KEY `tuoteryhma_id` (`tuoteryhma_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tuote`
--
ALTER TABLE `tuote`
  MODIFY `tuote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `tuote`
--
ALTER TABLE `tuote`
  ADD CONSTRAINT `tuote_ibfk_1` FOREIGN KEY (`tuoteryhma_id`) REFERENCES `tuoteryhma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
