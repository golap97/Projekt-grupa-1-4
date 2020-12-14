-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lis 2020, 17:54
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr_dokumentow_sprzedazy`
--

CREATE TABLE `rejestr_dokumentow_sprzedazy` (
  `Numer_dokumentu` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Typ_dokumentu` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Data_wygenerowania` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rejestr_dokumentow_sprzedazy`
--

INSERT INTO `rejestr_dokumentow_sprzedazy` (`Numer_dokumentu`, `Typ_dokumentu`, `Data_wygenerowania`) VALUES
('F/VA/11/2020/0001', 'Faktura VAT', '2020-11-02'),
('F/VA/11/2020/0002', 'Faktura VAT', '2020-11-04'),
('F/VA/11/2020/0003', 'Faktura VAT', '2020-11-10'),
('F/VA/11/2020/0004', 'Faktura VAT', '2020-11-12'),
('F/VA/11/2020/0005', 'Faktura VAT', '2020-11-13'),
('PA/FIS/0000001', 'Paragon', '2020-11-02'),
('PA/FIS/0000002', 'Paragon', '2020-11-05'),
('PA/FIS/0000003', 'Paragon', '2020-11-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr_klientow`
--

CREATE TABLE `rejestr_klientow` (
  `ID_klienta` int(10) NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Adres_e-mail` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Numer_telefonu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rejestr_klientow`
--

INSERT INTO `rejestr_klientow` (`ID_klienta`, `Imie`, `Nazwisko`, `Adres_e-mail`, `Numer_telefonu`) VALUES
(1, 'Jan', 'Kowalski', 'jankowalski@gmail.com', 123456789),
(2, 'Maria', 'Nowak', 'marianowak@gmail.com', 987654321),
(3, 'Tomasz', 'Bąk', 'tomek.bak@poczta.pl', 654892312),
(4, 'Ksawery', 'Brzeziński', 'ksawery.brzezinski@onet.pl', 312165448),
(5, 'Patryk', 'Andrzejewski', 'patryk.andrzejewski@op.pl', 231648328);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr_pracownikow`
--

CREATE TABLE `rejestr_pracownikow` (
  `ID_prac` int(10) NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Adres` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `Numer_konta` int(26) NOT NULL,
  `Numer_telefonu` int(11) NOT NULL,
  `Adres_e-mail` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Data_zatrudnienia` date NOT NULL,
  `Wynagrodzenie` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rejestr_pracownikow`
--

INSERT INTO `rejestr_pracownikow` (`ID_prac`, `Imie`, `Nazwisko`, `Adres`, `Numer_konta`, `Numer_telefonu`, `Adres_e-mail`, `Data_zatrudnienia`, `Wynagrodzenie`) VALUES
(1, 'Łukasz', 'Januszewski', 'Staszów, ul. Rynek 1', 21315242, 542251254, 'lukas245@op.pl', '2020-11-15', 4500),
(2, 'Maciej', 'Bąk', 'Nowa Słupia, ul. Klasztorna 1', 5484121, 231645648, 'maciej.bak@poczta.pl', '2020-11-15', 4500),
(3, 'Patryk', 'Gola', 'Kielce, ul. Długa 17', 121644852, 894123165, 'patryk.gola@gmail.com', '2020-11-15', 5200),
(4, 'Piotr', 'Doropowicz', 'Kajetanów, ul. Najdłuższa 35', 31654612, 453434434, 'nunek1234@gmail.com', '2020-11-15', 3800),
(5, 'Marcin', 'Cieszkowski', 'Ćmielów, ul. Jana Pawła II 21/37', 211564865, 343457521, 'marcin.cieszkowski@gmail.com', '2020-11-15', 2137),
(6, 'Igor', 'Arabas', 'Kielce, ul. Klonowa 98', 15468461, 65456489, 'igor.arabas@gmail.com', '2020-11-15', 4700),
(7, 'Daniel', 'Cyran', 'Kielce, ul. Wysoka 112/10', 564812121, 356484122, 'daniel.cyran@gmail.com', '2020-11-15', 3650),
(8, 'Wojciech', 'Stolicki', 'Kielce, ul. Warszawska 123', 516541233, 32684223, 'wojciech.stolicki@gmail.com', '2020-11-15', 3850),
(9, 'Dawid', 'Dziedzic', 'Kielce, ul. Tarnowska 134', 2113351132, 351646862, 'dawid.dziedzic@gmail.com', '2020-11-15', 4700);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr_zlecen`
--

CREATE TABLE `rejestr_zlecen` (
  `ID_zlecenia` int(10) NOT NULL,
  `Nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `Data_przyjecia` date NOT NULL,
  `Status` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Opis_zlecenia` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rejestr_zlecen`
--

INSERT INTO `rejestr_zlecen` (`ID_zlecenia`, `Nazwa`, `Data_przyjecia`, `Status`, `Opis_zlecenia`) VALUES
(1, 'Nagranie wesela', '2020-11-08', 'W realizacji', 'Klient zamówił nagranie wesela w dniu 31.12.2020 w pakiecie z trailerami.'),
(2, 'Nagranie studniówki', '2020-11-12', 'W realizacji', 'Nagranie studniówki w XII Liceum Ogólnokształcącym w Kielcach w dniu 12.02.2021 + trailery'),
(3, 'Drukowanie zdjęc', '2020-11-16', 'W realizacji', 'Klientka zleciła wydrukowanie w formacie A6, ilość 550 zdjęć, papier połyskujący.'),
(4, 'Drukowanie zdjęć', '2020-11-02', 'Zrealizowano', 'Klient zlecił wydrukowanie 87 zdjęć na papierze matowym, format A4.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rejestr_dokumentow_sprzedazy`
--
ALTER TABLE `rejestr_dokumentow_sprzedazy`
  ADD PRIMARY KEY (`Numer_dokumentu`);

--
-- Indeksy dla tabeli `rejestr_klientow`
--
ALTER TABLE `rejestr_klientow`
  ADD PRIMARY KEY (`ID_klienta`);

--
-- Indeksy dla tabeli `rejestr_pracownikow`
--
ALTER TABLE `rejestr_pracownikow`
  ADD PRIMARY KEY (`ID_prac`);

--
-- Indeksy dla tabeli `rejestr_zlecen`
--
ALTER TABLE `rejestr_zlecen`
  ADD PRIMARY KEY (`ID_zlecenia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
