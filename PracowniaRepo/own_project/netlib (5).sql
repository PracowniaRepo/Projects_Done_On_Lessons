-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Mar 2023, 00:35
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `netlib`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`category`) VALUES
('horror'),
('sci-fi'),
('Western'),
('Romance'),
('Thriller'),
('Fantasy'),
('Historical'),
('Crime'),
('Drama'),
('Animation'),
('Action'),
('Comedy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `movie_id` text NOT NULL,
  `comment` text NOT NULL,
  `user_id` text NOT NULL,
  `add_date` datetime NOT NULL,
  `comment_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`movie_id`, `comment`, `user_id`, `add_date`, `comment_id`) VALUES
('Movie640e4414e7f81', 'dobrze leci ', 'user63ff71fga2v57', '2023-03-12 22:30:14', 'comment640e44661bc1b');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movie`
--

CREATE TABLE `movie` (
  `vid_link` text NOT NULL,
  `decs` text NOT NULL,
  `movie_id` text NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `category` text NOT NULL,
  `add_date` datetime NOT NULL,
  `img_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `movie`
--

INSERT INTO `movie` (`vid_link`, `decs`, `movie_id`, `title`, `date`, `category`, `add_date`, `img_link`) VALUES
('https://sbchill.com/e/yw3ukccaem95.html', 'Po ponad 30 latach w s??u??bie ameryka??skiej marynarki wojennej Pete \"Maverick\" Mitchell (Tom Cruise) jest tam, gdzie powinien by?? - na szczycie. Jest mistrzowskim pilotem, testuj??cym najnowocze??niejsze maszyny. Kiedy staje na czele pilockiej spec-grupy szkol??cej jej uczestnik??w do udzia??u w misji, jakiej dot??d nie by??o, przychodzi mu spotka?? si?? z porucznikiem Bradleyem Bradshawem (Miles Teller) o kryptonimie \"Rooster\", synem jego przyjaciela oficera Nicka Bradshawa, kryptonim \"Goose\", kt??ry przed laty zgin???? podczas jednej z misji. Maverick musi stawi?? czo??a niepewnej przysz??o??ci oraz duchom przesz??o??ci. Mierzy si?? ze swymi l??kami i demonami, czego kulminacj?? b??dzie ostateczne po??wi??cenie tych, kt??rzy zostan?? wybrani do misji.', 'Movie640e4bb6e9e6e', 'Top Gun: Maverick', '2023-03-23', 'Action', '2023-03-12 23:01:26', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e4bb6e9e6e.png'),
('https://sbchill.com/e/dw6wa94gg9wb.html', 'Batman i James Gordon stawiaj?? czo??a nieobliczalnemu Cz??owiekowi-Zagadce w skorumpowanym Gotham City.', 'Movie640e5b4635315', 'The Batman', '2022-04-16', 'Action', '2023-03-13 00:07:50', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5b4635315.png'),
('https://sbchill.com/e/e0w9ckt32jk8.html', 'Podr????uj??ca po kraju pisarka oraz model z ok??adki jej ksi????ki zostaj?? uprowadzeni. Porwanie okazuje si?? przygod?? ich ??ycia.', 'Movie640e5bfcd7b64', 'The Lost City', '2022-04-01', 'Action', '2023-03-13 00:10:52', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5bfcd7b64.png'),
('https://sbchill.com/e/il69l1f0ss7l.html', 'Szlachetny r??d Atryd??w przybywa na Diun??, b??d??c?? jedynym ??r??d??em najcenniejszej substancji we wszech??wiecie.', 'Movie640e5c444dbf9', 'Dune', '2021-07-08', 'sci-fi', '2023-03-13 00:12:04', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5c444dbf9.png'),
('https://sbchill.com/e/5wo8qw2pyek5.html', 'Opowie???? o Eternals - przedwiecznej rasie nie??miertelnych istot, kt??re zamieszkiwa??y Ziemi?? i ukszta??towa??y jej histori??.', 'Movie640e5c81d9bd2', 'Eternals', '2021-08-29', 'sci-fi', '2023-03-13 00:13:05', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5c81d9bd2.png'),
('https://sbchill.com/e/lidrx3gj0wnr.html', 'Po blisko pi??ciu tysi??cleciach obdarzony boskimi mocami Black Adam zostaje uwolniony ze swojego ziemskiego grobowca.', 'Movie640e5e4163e25', 'Black Adam', '2022-04-01', 'sci-fi', '2023-03-13 00:20:33', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5e4163e25.png'),
('https://sbchill.com/e/h3r6hvaxn5wc.html', 'Na pro??b?? swojego starego przyjaciela, Felixa Leitera z CIA, James Bond bierze udzia?? w misji odbicia porwanego naukowca. Trop prowadzi do niebezpiecznego z??oczy??cy.', 'Movie640e5e816477d', 'No Time to Die', '2021-09-03', 'Action', '2023-03-13 00:21:37', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5e816477d.png'),
('https://sbchill.com/e/4brn227i2j41.html', 'Po znalezieniu cia??a gospodarza u reportera ??ledczego Eddiego Brocka obcy symbiont musi stawi?? czo??a nowemu wrogowi, Carnage, alter ego seryjnego mordercy Cletusa Kasady.', 'Movie640e5ee512320', 'Venom 2: Carnage', '2021-02-18', 'sci-fi', '2023-03-13 00:23:17', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5ee512320.png'),
('https://sbchill.com/e/2txqcqt5ss0u.html', '\"Thor: Mi??o???? i grom\" wytw??rni Marvel ukazuje Boga Piorun??w w obliczu wyzwania, z jakim dot??d si?? nie zetkn???? - konieczno??ci znalezienia wewn??trznego spokoju. Jednak na emerytur?? nie pozwoli Thorowi przej???? galaktyczny zab??jca Gorr Rze??nik B??stw pragn??cy wymordowa?? wszystkich bog??w. Aby si?? mu przeciwstawi??, Thor wzywa na pomoc Kr??lewsk?? Walkiri??, Korga oraz swoj?? by????, Jane Foster, kt??ra - ku jego zdziwieniu - pos??uguje si?? jego magicznym m??otem, Mjolnirem, nie gorzej ni?? on sam. Razem wyruszaj?? w pe??n?? niebezpiecze??stw kosmiczn?? podr????, by rozwi??za?? zagadk?? zemsty Rze??nika B??stw i powstrzyma?? go, nim b??dzie za p????no.', 'Movie640e5f5636cb1', 'Thor: Love and Thunder', '2022-02-24', 'Fantasy', '2023-03-13 00:25:10', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e5f5636cb1.png'),
('https://sbchill.com/e/2yw44chrpjd3.html', 'Pod????aj za Neo, kt??ry prowadzi zwyczajne ??ycie w San Francisco, gdzie jego terapeuta przepisuje mu niebieskie pigu??ki. Jednak Morfeusz oferuje mu czerwon?? pigu??k?? i ponownie otwiera jego umys?? na ??wiat Matrix.', 'Movie640e60ba738c5', 'The Matrix Resurrections', '2021-04-18', 'sci-fi', '2023-03-13 00:31:06', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/Movie640e60ba738c5.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `nick` text NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL,
  `user_id` text NOT NULL,
  `role` text NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`nick`, `mail`, `password`, `user_id`, `role`, `picture`) VALUES
('admin', 'admin@admin.com', 'admin', 'user63ff71fga2v57', 'admin', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/user63ff71fga2v57.png'),
('smalo', 'samlo@gmail.com', 'smalo', 'user640e470305ce4', 'user', '/Projects_Done_On_Lessons/PracowniaRepo/own_project/assets/img/user640e470305ce4.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
