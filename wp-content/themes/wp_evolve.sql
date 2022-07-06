-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 06, 2022 alle 10:13
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_evolve`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `acconto`
--

CREATE TABLE `acconto` (
  `id_acconto` int(11) NOT NULL,
  `id_rata` int(11) DEFAULT NULL,
  `somma` decimal(8,2) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `metodo_pagamento` int(11) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `acconto`
--

INSERT INTO `acconto` (`id_acconto`, `id_rata`, `somma`, `data_pagamento`, `metodo_pagamento`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 1, '4500.00', '2022-07-13', 1, 'pòoli,kuytgf', 'ttyhrbgfvdscax', '2022-07-10 17:11:00', '2022-07-30 17:11:00', 'htyrgvecwjy564y53432qqt43');

-- --------------------------------------------------------

--
-- Struttura della tabella `allegati`
--

CREATE TABLE `allegati` (
  `id` int(11) NOT NULL,
  `nome_file` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `percorso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `estensione_file` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `codice_tipo_file` int(11) DEFAULT NULL,
  `eliminato` bit(1) DEFAULT NULL,
  `data_caricamento` datetime DEFAULT NULL,
  `acconto` int(11) DEFAULT NULL,
  `rata` int(11) DEFAULT NULL,
  `pagamento` int(11) DEFAULT NULL,
  `referente` int(11) DEFAULT NULL,
  `fascicolo` int(11) DEFAULT NULL,
  `gestito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `allegati`
--

INSERT INTO `allegati` (`id`, `nome_file`, `percorso`, `estensione_file`, `codice_tipo_file`, `eliminato`, `data_caricamento`, `acconto`, `rata`, `pagamento`, `referente`, `fascicolo`, `gestito`) VALUES
(1, 'JDMFGRFN', 'fbdrfSVscsc', 'js', 32, b'1', '2022-07-28 17:22:56', 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `appuntamenti`
--

CREATE TABLE `appuntamenti` (
  `id` int(11) NOT NULL,
  `id_prospective` int(11) DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `data_chiamata` datetime DEFAULT NULL,
  `stato` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `appuntamenti`
--

INSERT INTO `appuntamenti` (`id`, `id_prospective`, `numero_telefono`, `data_chiamata`, `stato`, `note`) VALUES
(1, 1, '878856745', '2022-07-20 17:23:31', 1, 'Y54T43RQEgsfresd');

-- --------------------------------------------------------

--
-- Struttura della tabella `caso`
--

CREATE TABLE `caso` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caso`
--

INSERT INTO `caso` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'cv vdcvb v', 'dvbaf', 'fadadadad', '2022-07-21 14:29:13', '2022-07-29 14:29:13', 'wadadadadadad');

-- --------------------------------------------------------

--
-- Struttura della tabella `chiamata`
--

CREATE TABLE `chiamata` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `chiamata`
--

INSERT INTO `chiamata` (`id`, `nome`) VALUES
(1, 'htregrsefawdtneb');

-- --------------------------------------------------------

--
-- Struttura della tabella `fascicolo`
--

CREATE TABLE `fascicolo` (
  `id` int(11) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `data_apertura` date DEFAULT NULL,
  `data_chiusura` date DEFAULT NULL,
  `stato` int(11) DEFAULT NULL,
  `id_ufficio` int(11) DEFAULT NULL,
  `persone_gestite` int(11) DEFAULT NULL,
  `referente` int(11) DEFAULT NULL,
  `caso` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `fascicolo`
--

INSERT INTO `fascicolo` (`id`, `nickname`, `data_apertura`, `data_chiusura`, `stato`, `id_ufficio`, `persone_gestite`, `referente`, `caso`, `link`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(3, 'gsfdhfj', '2022-07-01', '2022-07-14', 1, 1, 1, 1, 1, 'rsftgyrhte', 'gg', 'f', '2022-07-06 00:00:00', '2022-06-30 16:47:50', 'prova2twaad'),
(5, 'prova orario', '2022-07-08', '2022-07-29', 1, 1, 563, 1, 1, 'rfrdqew2e1', 'dwdd', 'awdawdad', '2022-07-15 11:15:20', '2022-07-23 16:48:08', 'adawdad2awdadaw');

-- --------------------------------------------------------

--
-- Struttura della tabella `fascicolo_specialista`
--

CREATE TABLE `fascicolo_specialista` (
  `id_fascicolo` int(11) DEFAULT NULL,
  `id_specialista` int(11) DEFAULT NULL,
  `data_assegnazione` date DEFAULT NULL,
  `data_conclusione` date DEFAULT NULL,
  `numero_specialista` int(11) DEFAULT NULL,
  `accettato` bit(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `fascicolo_specialista`
--

INSERT INTO `fascicolo_specialista` (`id_fascicolo`, `id_specialista`, `data_assegnazione`, `data_conclusione`, `numero_specialista`, `accettato`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(3, 1, '2022-07-01', '2022-07-22', 968372, b'1', 'ikujyhtgdrse', 'fdsdsgdhjtr65e', '2022-06-05 17:20:25', '2022-08-24 17:20:25', 'ujtrfewqawdd');

-- --------------------------------------------------------

--
-- Struttura della tabella `gestito`
--

CREATE TABLE `gestito` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `indirizzo` text DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` bit(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `gestito`
--

INSERT INTO `gestito` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `indirizzo`, `numero_telefono`, `mail`, `id_fascicolo`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(3, 'evolveeee', 'hasbulla', 'scipolla', '2022-07-20', '45drtyfvubhnijk', '87459852', 'dada@gmail.com', 5, 'htgrfedawa', 'adafsrfad', '2022-07-10 17:15:39', '2022-07-23 17:15:39', b'1', 'rseaqdawd');

-- --------------------------------------------------------

--
-- Struttura della tabella `metodo_pagamento`
--

CREATE TABLE `metodo_pagamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `metodo_pagamento`
--

INSERT INTO `metodo_pagamento` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'frgfdafersea', 'wdsfawefeadaq', 'rgfeadwwefqw', '2022-07-12 17:09:29', '2022-07-15 17:09:29', 'wdadbfvadw');

-- --------------------------------------------------------

--
-- Struttura della tabella `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `creazione` date DEFAULT NULL,
  `totale` decimal(8,2) DEFAULT NULL,
  `totale_vero` decimal(8,2) DEFAULT NULL,
  `accettato` bit(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `id_fascicolo`, `creazione`, `totale`, `totale_vero`, `accettato`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 3, '2022-07-05', '500.00', '1500.00', b'0', 'jyhrtgefredws', 'mnhggfbvfdcsd', '2022-07-14 17:06:28', '2022-07-08 17:19:37', 'awfnhbvdcsxasdfdsfddwrefacs');

-- --------------------------------------------------------

--
-- Struttura della tabella `prospective`
--

CREATE TABLE `prospective` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cognome` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `middle_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` bit(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prospective`
--

INSERT INTO `prospective` (`id`, `nome`, `cognome`, `middle_name`, `numero_telefono`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'w3rrwd', 'ddqdqd', 'h312432d', '12345432r2', 'jyhtrg', 'ryhtbegrfsad', '2022-07-17 17:21:58', '2022-07-22 17:21:58', b'1', 'therweq4g');

-- --------------------------------------------------------

--
-- Struttura della tabella `rata`
--

CREATE TABLE `rata` (
  `id_rata` int(11) NOT NULL,
  `id_pagamento` int(11) DEFAULT NULL,
  `somma` decimal(8,2) DEFAULT NULL,
  `pagata` bit(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `rata`
--

INSERT INTO `rata` (`id_rata`, `id_pagamento`, `somma`, `pagata`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 1, '8000.00', b'0', 'afdbbfadwweegr', 'aeqfDQDFDWADADAD', '2022-07-11 17:10:30', '2022-07-22 17:10:30', 'anwsbdsdnfwwfsrdngw');

-- --------------------------------------------------------

--
-- Struttura della tabella `referente`
--

CREATE TABLE `referente` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `indirizzo` text DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sponsor` int(11) DEFAULT NULL,
  `perc_sponsor` decimal(5,2) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` bit(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `referente`
--

INSERT INTO `referente` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `indirizzo`, `numero_telefono`, `mail`, `sponsor`, `perc_sponsor`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'hihihiha', 'hasbulla', 'wdadaddd', '2022-07-04', 'dngbvfdcsxcvb', '123 654 0987', 'bfvdsa@gmail.com', 1, '2.00', 'fgbvdd', 'jmhngbfdvc', '2022-07-05 14:28:00', '2022-07-31 14:28:00', b'1', '2efcedscdwa');

-- --------------------------------------------------------

--
-- Struttura della tabella `specialista`
--

CREATE TABLE `specialista` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `codice_fiscale` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` bit(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `specialista`
--

INSERT INTO `specialista` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `codice_fiscale`, `numero_telefono`, `mail`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'hihihiha', 'dadadad', 'adadaSzvds', '2022-07-13', '4trqdwvge4', '123456765432', 'fd@gmail.com', 'k6y24rfw', '3werf2w3r2', '2022-07-18 17:17:11', '2022-07-23 17:17:11', b'0', 'htgrefedqdqdq');

-- --------------------------------------------------------

--
-- Struttura della tabella `spese`
--

CREATE TABLE `spese` (
  `id_fascicolo` int(11) DEFAULT NULL,
  `somma` decimal(8,2) DEFAULT NULL,
  `rimborso` bit(1) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `spese`
--

INSERT INTO `spese` (`id_fascicolo`, `somma`, `rimborso`, `note`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`) VALUES
(3, '21312.00', b'1', 'sorpresa', 'awdadad', 'adwadad', '2022-07-18 17:21:10', '2022-07-27 17:21:10');

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsor`
--

CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `sponsor`
--

INSERT INTO `sponsor` (`id`, `nome`) VALUES
(1, 'gg zanna2i'),
(2, 'wowowo'),
(3, 'okwadand'),
(4, 'provaaa'),
(5, 'fggsfcw'),
(6, 'siummm'),
(7, 'ma che'),
(8, 'vuoi'),
(9, 'mmmmmm'),
(10, 'però'),
(11, 'hihihiihihihih');

-- --------------------------------------------------------

--
-- Struttura della tabella `stato`
--

CREATE TABLE `stato` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `stato`
--

INSERT INTO `stato` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'sospeso1', 'wdgfbb', 'rtrtvfc', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'dgbgvgrbgbtg');

-- --------------------------------------------------------

--
-- Struttura della tabella `ufficio`
--

CREATE TABLE `ufficio` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ufficio`
--

INSERT INTO `ufficio` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'evolveeee', 'wadwafawd', 'adadad', '2022-07-03 14:26:17', '2022-07-30 14:26:17', 'adcdxzsa');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `acconto`
--
ALTER TABLE `acconto`
  ADD PRIMARY KEY (`id_acconto`),
  ADD KEY `id_rata` (`id_rata`),
  ADD KEY `metodo_pagamento` (`metodo_pagamento`);

--
-- Indici per le tabelle `allegati`
--
ALTER TABLE `allegati`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `appuntamenti`
--
ALTER TABLE `appuntamenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prospective` (`id_prospective`),
  ADD KEY `stato` (`stato`);

--
-- Indici per le tabelle `caso`
--
ALTER TABLE `caso`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `chiamata`
--
ALTER TABLE `chiamata`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `fascicolo`
--
ALTER TABLE `fascicolo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stato` (`stato`),
  ADD KEY `referente` (`referente`),
  ADD KEY `id_ufficio` (`id_ufficio`),
  ADD KEY `caso` (`caso`);

--
-- Indici per le tabelle `fascicolo_specialista`
--
ALTER TABLE `fascicolo_specialista`
  ADD KEY `id_fascicolo` (`id_fascicolo`),
  ADD KEY `id_specialista` (`id_specialista`);

--
-- Indici per le tabelle `gestito`
--
ALTER TABLE `gestito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `metodo_pagamento`
--
ALTER TABLE `metodo_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `prospective`
--
ALTER TABLE `prospective`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `rata`
--
ALTER TABLE `rata`
  ADD PRIMARY KEY (`id_rata`),
  ADD KEY `id_pagamento` (`id_pagamento`);

--
-- Indici per le tabelle `referente`
--
ALTER TABLE `referente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sponsor` (`sponsor`);

--
-- Indici per le tabelle `specialista`
--
ALTER TABLE `specialista`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `spese`
--
ALTER TABLE `spese`
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `stato`
--
ALTER TABLE `stato`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `ufficio`
--
ALTER TABLE `ufficio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `acconto`
--
ALTER TABLE `acconto`
  MODIFY `id_acconto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `allegati`
--
ALTER TABLE `allegati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `appuntamenti`
--
ALTER TABLE `appuntamenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `caso`
--
ALTER TABLE `caso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `chiamata`
--
ALTER TABLE `chiamata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `fascicolo`
--
ALTER TABLE `fascicolo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `gestito`
--
ALTER TABLE `gestito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `metodo_pagamento`
--
ALTER TABLE `metodo_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `prospective`
--
ALTER TABLE `prospective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `rata`
--
ALTER TABLE `rata`
  MODIFY `id_rata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `referente`
--
ALTER TABLE `referente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `specialista`
--
ALTER TABLE `specialista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `stato`
--
ALTER TABLE `stato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `ufficio`
--
ALTER TABLE `ufficio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `acconto`
--
ALTER TABLE `acconto`
  ADD CONSTRAINT `acconto_ibfk_1` FOREIGN KEY (`id_rata`) REFERENCES `rata` (`id_rata`),
  ADD CONSTRAINT `acconto_ibfk_2` FOREIGN KEY (`metodo_pagamento`) REFERENCES `metodo_pagamento` (`id`);

--
-- Limiti per la tabella `appuntamenti`
--
ALTER TABLE `appuntamenti`
  ADD CONSTRAINT `appuntamenti_ibfk_1` FOREIGN KEY (`id_prospective`) REFERENCES `prospective` (`id`),
  ADD CONSTRAINT `appuntamenti_ibfk_2` FOREIGN KEY (`stato`) REFERENCES `chiamata` (`id`);

--
-- Limiti per la tabella `fascicolo`
--
ALTER TABLE `fascicolo`
  ADD CONSTRAINT `fascicolo_ibfk_1` FOREIGN KEY (`stato`) REFERENCES `stato` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_2` FOREIGN KEY (`referente`) REFERENCES `referente` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_3` FOREIGN KEY (`id_ufficio`) REFERENCES `ufficio` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_4` FOREIGN KEY (`caso`) REFERENCES `caso` (`id`);

--
-- Limiti per la tabella `fascicolo_specialista`
--
ALTER TABLE `fascicolo_specialista`
  ADD CONSTRAINT `fascicolo_specialista_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `fascicolo` (`id`),
  ADD CONSTRAINT `fascicolo_specialista_ibfk_2` FOREIGN KEY (`id_specialista`) REFERENCES `specialista` (`id`);

--
-- Limiti per la tabella `gestito`
--
ALTER TABLE `gestito`
  ADD CONSTRAINT `gestito_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `fascicolo` (`id`);

--
-- Limiti per la tabella `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `fascicolo` (`id`);

--
-- Limiti per la tabella `rata`
--
ALTER TABLE `rata`
  ADD CONSTRAINT `rata_ibfk_1` FOREIGN KEY (`id_pagamento`) REFERENCES `pagamento` (`id_pagamento`);

--
-- Limiti per la tabella `referente`
--
ALTER TABLE `referente`
  ADD CONSTRAINT `referente_ibfk_1` FOREIGN KEY (`sponsor`) REFERENCES `sponsor` (`id`);

--
-- Limiti per la tabella `spese`
--
ALTER TABLE `spese`
  ADD CONSTRAINT `spese_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `fascicolo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
