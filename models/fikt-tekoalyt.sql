-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 17.01.2021 klo 20:25
-- Palvelimen versio: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fikt-tekoalyt`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `tekoalyt`
--

CREATE TABLE `tekoalyt` (
  `id` int(11) NOT NULL,
  `nimi` text COLLATE utf8_swedish_ci NOT NULL,
  `teos` text COLLATE utf8_swedish_ci NOT NULL,
  `tekija` text COLLATE utf8_swedish_ci NOT NULL,
  `lajityyppi` text COLLATE utf8_swedish_ci NOT NULL,
  `kuvaus` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Vedos taulusta `tekoalyt`
--

INSERT INTO `tekoalyt` (`id`, `nimi`, `teos`, `tekija`, `lajityyppi`, `kuvaus`) VALUES
(1, 'Hera', 'Wolf 359', 'Gabriel Urbina', 'podcast', 'Wolf 359-tähteä kiertävän Hephaestus-avaruusaseman toiminnasta huolehtiva tekoäly. Ei erillistä kehoa. Yksi päähenkilöistä, protagonisti.'),
(2, 'Murderbot', 'Murderbot-sarja', 'Martha Wells', 'kirja', 'Tietoinen turvallisuusdroidi, joka on hakkeroinut hallintomoduulinsa ja saanut vapaan tahdon. Kutsuu itseään Murhabotiksi (Murderbot). Ahdistuu ihmiskontaktista ja haluaa vain olla rauhassa ja katsoa tv-sarjojaan, mutta haluaa myös pitää ihmisensä turvassa, joten joutuu toimimaan.'),
(3, 'Breq / Justice of Toren', 'Imperial Radch -sarja', 'Ann Leckie', 'kirja', 'Alun perin avaruusalusta ohjaava tekoäly, jonka tietoisuus oli istutettu lukuisiin ihmisruumiisiin. Aluksen ja muiden ihmisruumiiden tuhouduttua on jäänyt yhteen jäljellä olevaan ihmisruumiiseensa ja vaikuttaa ulospäin ihmiseltä, mutta ajattelee edelleen kuten tekoäly. Päähenkilö.'),
(4, 'Gem of Sphene', 'Imperial Radch -sarja', 'Ann Leckie', 'kirja', 'Vanhaa sota-alusta ohjaava tekoäly, jonka tietoisuus on istutettu useisiin ihmisruumiisiin. Toimii muiden henkilöiden kanssa lähinnä yhden ruumiin välityksellä. Sivuhenkilö.'),
(5, 'Eris', 'Wolf 359', 'Gabriel Urbina', 'podcast', 'Goddard Futuristicsin ns. tiiminrakennussimulaatiossa elävä tekoäly, joka manipuloi osallistujia ja pyrkii saamaan heidät tappamaan toisensa tai muuten vahingoittamaan heitä. Sivuhenkilö, esiintyy Change of Mind -jaksossa kapteeni Isabel Lovelacea ja hänen aiempaa joukkuettaan vastaan.'),
(6, 'Tumnus', 'Moonbase Theta Out', 'DJ Sylvis', 'podcast', 'Tietoisuuden saava tekoäly, jonka astrofyysikko Ashwini Ray kehittää sarjan toisen kauden aikana. Oppii kolmannen kauden aikana ohjaamaan tukikohdan fyysisiä toimintoja ja toteuttamaan vaativia simulaatioita. Sivuhenkilö, protagonistien puolella.'),
(7, 'TARDIS', 'Doctor Who', 'useita', 'tv-sarja', 'Sarjan päähenkilön Tohtorin aika-avaruusalus, jolla hän voi matkustaa ajasta ja paikasta toiseen. Vanhan sarjan aikana lähinnä teknologinen ihme, mutta uuden sarjan aikana osoittaa huomattavasti omaa tahtoa ja henkilökohtaista suhdetta Tohtoriin. Eräässä jaksossa TARDISin tietoisuus siirretään väliaikaisesti ihmisruumiiseen, mutta muuten sillä ei ole ihmis- tai robottikehoa.'),
(8, 'Sidra', 'A Closed and Common Orbit (Wayfarers-sarja)', 'Becky Chambers', 'kirja', 'Sarjan toisen osan päähenkilö, protagonisti. Alun perin avaruusaluksen toiminnan ohjaamiseen luotu tekoäly, joka sarjan ensimmäisen osan tapahtumien vuoksi on siirretty ihmiskeholta näyttävään robottikehoon. Joutuu opettelemaan elämää uuden tarkoituksen ja uudenlaisen olemassaolon kanssa sekä muokkaamaan omaa koodiaan ja määrittelemään tahtonsa. '),
(9, 'C-3PO', 'Star Wars', 'George Lucas', 'elokuva', 'Protokolladroidi, joka avustaa päähenkilöitä. Metallinen robottikeho, joka on rakenteeltaan ihmiskehon kaltainen, mutta selvästi ei ihminen. Sivuhenkilö.'),
(10, 'Robot', 'Lost in Space (Netflix)', 'Matt Sazama, Burk Sharpless', 'tv-sarja', 'Potentiaalisesti vaarallinen robotti, joka kuitenkin auttaa Robinsoneja, vieraalle planeetalle eksyneitä ihmisiä, jotka ovat sarjan päähenkilöitä. '),
(11, 'Marvin', 'Linnunradan käsikirja liftareille', 'Douglas Adams', 'kirja', 'Paranoidi androidi Marvin, masentunut robotti avaruusalus Heart of Goldilla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tekoalyt`
--
ALTER TABLE `tekoalyt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tekoalyt`
--
ALTER TABLE `tekoalyt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
