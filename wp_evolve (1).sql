-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Lug 25, 2022 alle 14:13
-- Versione del server: 10.7.3-MariaDB
-- Versione PHP: 7.4.29

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
-- Struttura della tabella `ACCONTO`
--

CREATE TABLE `ACCONTO` (
  `id_acconto` int(11) NOT NULL,
  `id_rata` int(11) DEFAULT NULL,
  `somma_euro` decimal(8,2) DEFAULT NULL,
  `somma_dollari` decimal(8,2) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `metodo_pagamento` int(11) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ACCONTO`
--

INSERT INTO `ACCONTO` (`id_acconto`, `id_rata`, `somma_euro`, `somma_dollari`, `data_pagamento`, `metodo_pagamento`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 1, '50.00', NULL, '2022-07-20', 1, NULL, NULL, NULL, NULL, ''),
(2, 3, '20.00', NULL, '2022-07-20', 3, NULL, NULL, NULL, NULL, ''),
(3, 1, NULL, '450.00', '2022-07-20', 2, NULL, NULL, NULL, NULL, ''),
(4, 3, '35.00', NULL, '2022-07-20', 3, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `ALLEGATI`
--

CREATE TABLE `ALLEGATI` (
  `id` int(11) NOT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `file_name` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `oggetto` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `descrizione` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ALLEGATI`
--

INSERT INTO `ALLEGATI` (`id`, `id_fascicolo`, `file_name`, `upload_date`, `oggetto`, `descrizione`) VALUES
(1, 2, '2_gestiti – Evolve Test.pdf', '2022-07-20 23:25:15', 'prova', 'prova'),
(3, 2, '2_gestiti2 – Evolve Test.pdf', '2022-07-20 23:38:41', 'prova 2', 'prova 2'),
(4, 2, '2_Diario_colloqui_5E.pdf', '2022-07-20 23:40:02', 'cwcwc', 'wcd'),
(5, 1, '1_Diario_colloqui_5E.pdf', '2022-07-20 23:41:02', 'fvvfs', 'vfve');

-- --------------------------------------------------------

--
-- Struttura della tabella `APPUNTAMENTI`
--

CREATE TABLE `APPUNTAMENTI` (
  `id` int(11) NOT NULL,
  `id_prospective` int(11) DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `data_chiamata` datetime DEFAULT NULL,
  `stato` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `CASO`
--

CREATE TABLE `CASO` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `CASO`
--

INSERT INTO `CASO` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'RICHIESTA CITTADINANZA', NULL, NULL, NULL, NULL, NULL),
(2, 'RICHIESTA PASSAPORTO', NULL, NULL, NULL, NULL, NULL),
(3, 'CITTADINANZA PER MATRIMONIO', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `CHIAMATA`
--

CREATE TABLE `CHIAMATA` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_cf7db`
--

CREATE TABLE `evo_cf7db` (
  `id` int(11) UNSIGNED NOT NULL,
  `form` int(11) NOT NULL,
  `data` text NOT NULL,
  `submitted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_commentmeta`
--

CREATE TABLE `evo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_comments`
--

CREATE TABLE `evo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_links`
--

CREATE TABLE `evo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_options`
--

CREATE TABLE `evo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_options`
--

INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://ica.test', 'yes'),
(2, 'home', 'https://ica.test', 'yes'),
(3, 'blogname', 'Evolve Test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'massimiliano.raspa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=85&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:37:\"database-for-cf7/database-for-cf7.php\";i:4;s:31:\"wp-migrate-db/wp-migrate-db.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:92:\"/var/www/vhosts/evolvetest.it/httpdocs/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'sage_2/resources', 'yes'),
(41, 'stylesheet', 'sage_2/resources', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '85', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1671370054', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'evo_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '2', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"sidebar-primary\";a:0:{}s:14:\"sidebar-footer\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1658359655;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1658366855;a:3:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1658369600;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1658396211;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1658410055;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658412800;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658412801;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1658928455;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', 'Z8 2@i{2Q8vwu<v5sf*K!*kH$F^R}/g;(,su)-f%vt)C:1)+L/5sIJ;,T5SDR63-', 'no'),
(116, 'nonce_salt', 'Dq4xfYaytx!qKa1u8R|0VU/ ?[rL7%:o<7Ab_pkTd+>FY]r>E(/4)G-HzSE{o/4;', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'WPLANG', 'it_IT', 'yes'),
(129, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1655821253;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(132, 'recovery_keys', 'a:0:{}', 'yes'),
(133, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:21:\"Verifica SSL fallita.\";}}', 'yes'),
(145, 'can_compress_scripts', '1', 'no'),
(166, 'finished_updating_comment_type', '1', 'yes'),
(184, 'current_theme', 'Sage Starter Theme', 'yes'),
(185, 'theme_mods_my-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1657178944;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(186, 'theme_switched', '', 'yes'),
(193, 'recently_activated', 'a:0:{}', 'yes'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(200, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'category_children', 'a:0:{}', 'yes'),
(238, 'acf_version', '5.12.2', 'yes'),
(248, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1655822946;s:7:\"version\";s:3:\"5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(490, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":3,\"critical\":2}', 'yes'),
(1253, 'theme_mods_sage/resources', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1657228508;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"sidebar-primary\";a:0:{}s:14:\"sidebar-footer\";a:0:{}}}}', 'yes'),
(1257, 'theme_mods_themeEditor', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1366, 'theme_mods_sage_2/resources', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:0;}}', 'yes'),
(1371, 'theme_switch_menu_locations', 'a:1:{s:18:\"primary_navigation\";i:0;}', 'yes'),
(1372, 'theme_switched_via_customizer', '', 'yes'),
(1373, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(1914, 'wpmdb_settings', 'a:14:{s:3:\"key\";s:40:\"1qaNyBrHaBM7o7NsenuVU+7MCqebjgT+uPKXaWyh\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:18:\"compatibility_mode\";b:1;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}', 'no'),
(1915, 'wpmdb_saved_profiles', '', 'no'),
(1916, 'wpmdb_recent_migrations', 'a:2:{i:0;a:4:{s:4:\"name\";s:6:\"Export\";s:5:\"value\";s:1364:\"{\"current_migration\":{\"connected\":false,\"intent\":\"savefile\",\"tables_option\":\"all\",\"tables_selected\":[],\"backup_option\":\"none\",\"backup_tables_selected\":[],\"post_types_option\":\"all\",\"post_types_selected\":[],\"advanced_options_selected\":[\"gzip_file\",\"replace_guids\",\"exclude_transients\"],\"profile_name\":\"Export\",\"selected_existing_profile\":null,\"profile_type\":null,\"status\":\"\",\"stages\":[],\"current_stage\":\"\",\"stages_complete\":[],\"running\":false,\"migration_enabled\":false,\"migration_id\":null,\"source_prefix\":\"\",\"destination_prefix\":\"\",\"preview\":false,\"selectedComboOption\":\"preview\",\"twoMultisites\":false,\"localSource\":true,\"databaseEnabled\":true},\"search_replace\":{\"standard_search_replace\":{\"domain\":{\"search\":\"\",\"replace\":\"\"},\"path\":{\"search\":\"\",\"replace\":\"\"}},\"standard_options_enabled\":[\"domain\",\"path\"],\"standard_search_visible\":true,\"custom_search_replace\":[{\"replace_old\":\"//ica.test\",\"replace_new\":\"//evolvetest.it\",\"focus\":false,\"regex\":false,\"isValidRegex\":null,\"replace_old_placeholder\":\"\",\"replace_new_placeholder\":\"\",\"id\":\"6109d480-ed1e-46a0-8271-6446c417f2f4\"},{\"replace_old\":\"/Users/davide/Desktop/wordpress\",\"replace_new\":\"/var/www/vhosts/evolvetest.it/httpdocs\",\"focus\":false,\"regex\":false,\"isValidRegex\":null,\"replace_old_placeholder\":\"\",\"replace_new_placeholder\":\"\",\"id\":\"2988be99-9507-4c20-9b40-57b6303caefb\"}],\"custom_search_domain_locked\":false}}\";s:4:\"date\";i:1657652543;s:4:\"guid\";s:36:\"9459bf55-cda9-459d-9459-993d027b15d6\";}i:1;a:4:{s:4:\"name\";s:6:\"Export\";s:5:\"value\";s:1364:\"{\"current_migration\":{\"connected\":false,\"intent\":\"savefile\",\"tables_option\":\"all\",\"tables_selected\":[],\"backup_option\":\"none\",\"backup_tables_selected\":[],\"post_types_option\":\"all\",\"post_types_selected\":[],\"advanced_options_selected\":[\"gzip_file\",\"replace_guids\",\"exclude_transients\"],\"profile_name\":\"Export\",\"selected_existing_profile\":null,\"profile_type\":null,\"status\":\"\",\"stages\":[],\"current_stage\":\"\",\"stages_complete\":[],\"running\":false,\"migration_enabled\":false,\"migration_id\":null,\"source_prefix\":\"\",\"destination_prefix\":\"\",\"preview\":false,\"selectedComboOption\":\"preview\",\"twoMultisites\":false,\"localSource\":true,\"databaseEnabled\":true},\"search_replace\":{\"standard_search_replace\":{\"domain\":{\"search\":\"\",\"replace\":\"\"},\"path\":{\"search\":\"\",\"replace\":\"\"}},\"standard_options_enabled\":[\"domain\",\"path\"],\"standard_search_visible\":true,\"custom_search_replace\":[{\"replace_old\":\"//ica.test\",\"replace_new\":\"//evolvetest.it\",\"focus\":false,\"regex\":false,\"isValidRegex\":null,\"replace_old_placeholder\":\"\",\"replace_new_placeholder\":\"\",\"id\":\"8bdc96a2-c83d-460c-b5c9-996339629711\"},{\"replace_old\":\"/Users/davide/Desktop/wordpress\",\"replace_new\":\"/var/www/vhosts/evolvetest.it/httpdocs\",\"focus\":false,\"regex\":false,\"isValidRegex\":null,\"replace_old_placeholder\":\"\",\"replace_new_placeholder\":\"\",\"id\":\"22286f46-18d7-40c7-bd52-90e03eecc735\"}],\"custom_search_domain_locked\":false}}\";s:4:\"date\";i:1657855997;s:4:\"guid\";s:36:\"d7fa760a-3d1c-49e5-9bd4-5d1a4f6a987d\";}}', 'no'),
(1920, 'wpmdb_remote_migration_state', '', 'no'),
(1921, 'wpmdb_schema_version', '3.5', 'no'),
(1925, 'wpmdb_usage', 'a:2:{s:6:\"action\";s:8:\"savefile\";s:4:\"time\";i:1657855997;}', 'no'),
(2335, '_transient_timeout_acf_plugin_updates', '1658508449', 'no'),
(2336, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";}}', 'no'),
(2345, '_site_transient_timeout_php_check_3a6f2a803f99347534e67553ed67d1ad', '1658940453', 'no'),
(2346, '_site_transient_php_check_3a6f2a803f99347534e67553ed67d1ad', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2351, '_site_transient_timeout_available_translations', '1658346803', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2352, '_site_transient_available_translations', 'a:129:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-19 20:18:07\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-14 22:54:15\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.0/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-30 20:47:16\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.20/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-10 19:34:56\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-25 09:39:54\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-12 12:44:59\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-12 07:59:05\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-11 11:10:19\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-27 09:48:50\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-11 08:13:43\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-24 09:00:33\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-24 08:57:04\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.0/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-03-17 12:58:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-11 08:17:49\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.0/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 18:40:12\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.0/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 18:29:18\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-04 04:03:07\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 17:05:41\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-09 10:19:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-19 15:14:54\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-07 20:37:41\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 15:13:59\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-25 04:48:06\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-17 18:49:06\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-24 20:32:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.15/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-12 15:36:23\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-25 04:48:45\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-09 11:26:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-11 21:11:12\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-25 06:34:05\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-23 18:39:08\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 16:56:22\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-25 17:36:24\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-07 04:27:49\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.27\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.27/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-10 09:13:56\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 17:59:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 18:14:16\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.0/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-09 19:59:16\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-17 00:59:11\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 19:05:42\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-01 13:15:11\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-08 19:36:41\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-09 09:53:03\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.0/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.15/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-26 09:11:31\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-11 03:06:59\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-25 11:55:56\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-04-12 12:32:07\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"5.5.9\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.9/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 23:14:19\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-23 18:01:54\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-05 20:10:22\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-02 21:03:02\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.0/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-12 14:34:34\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-23 06:23:26\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.28\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.28/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-08 16:02:18\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-04 15:59:17\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 08:35:45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 10:04:56\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.10/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-06 04:43:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-28 09:31:32\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.0/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-02-01 10:20:40\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-26 14:20:57\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-07 18:28:35\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.12\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.12/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.19/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-07 22:28:45\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-05-24 11:42:59\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.10/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-15 08:04:07\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.0/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 17:43:38\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-06-16 05:31:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-12 07:42:16\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2353, '_site_transient_timeout_browser_d3d4068a11f4e0f44e4527b12fc4b98f', '1658940878', 'no'),
(2354, '_site_transient_browser_d3d4068a11f4e0f44e4527b12fc4b98f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2355, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1658379284', 'no'),
(2356, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:73:\"MODIFICATO: 27/07 WordPress Meetup in presenza (e di fronte a una pizza!)\";s:3:\"url\";s:64:\"https://www.meetup.com/wordpress-meetup-vicenza/events/287016462\";s:6:\"meetup\";s:24:\"WordPress Meetup Vicenza\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/WordPress-Meetup-Vicenza/\";s:4:\"date\";s:19:\"2022-07-27 20:00:00\";s:8:\"end_date\";s:19:\"2022-07-27 22:00:00\";s:20:\"start_unix_timestamp\";i:1658944800;s:18:\"end_unix_timestamp\";i:1658952000;s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Vicenza, Italy\";s:7:\"country\";s:2:\"it\";s:8:\"latitude\";d:45.561413;s:9:\"longitude\";d:11.556126;}}}}', 'no'),
(2357, '_transient_timeout_feed_dbc574053cccd058bc63a08b9c8e458e', '1658379285', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2358, '_transient_feed_dbc574053cccd058bc63a08b9c8e458e', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Italia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://it.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 May 2022 08:57:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"it-IT\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.1-alpha-53725\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Italia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://it.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:82:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Maggio 2022\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 May 2022 07:34:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3269\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:247:\"Torino IN PRESENZA https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/ Roma IN PRESENZA https://www.meetup.com/it-IT/RomaWordPress/events/285612524/ Vicenza ONLINE https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Cristiano Zanca\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1072:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano le community di </strong></p>\n\n\n\n<p>Torino IN PRESENZA</p>\n\n\n\n<p><a href=\"https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/\">https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/</a></p>\n\n\n\n<p></p>\n\n\n\n<p>Roma IN PRESENZA</p>\n\n\n\n<p><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/285612524/\">https://www.meetup.com/it-IT/RomaWordPress/events/285612524/</a></p>\n\n\n\n<p></p>\n\n\n\n<p>Vicenza ONLINE</p>\n\n\n\n<p><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222/\">https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"WordCamp Italia 2022: non c’è 2 senza 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Mar 2022 13:49:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Eventi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3249\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"Ciao! Che ne dici? Organizziamo il terzo WordCamp Italia online? Scherzo!! Ho una fantastica notizia per te: quest&#8217;anno il WordCamp Italia si farà a Milano.Hai capito bene: a Milano, IN PRESENZA! Io sono super carica e non vedo l&#8217;ora di iniziare: vuoi partecipare anche tu all&#8217;organizzazione?Il periodo indicativo per l’evento è&#160;fine settembre 2022. L’organizzatore del [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Giorgia Castro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5005:\"\n<h4>Ciao! Che ne dici? Organizziamo il terzo WordCamp Italia online?</h4>\n\n\n\n<p>Scherzo!! Ho una fantastica notizia per te: quest&#8217;anno il WordCamp Italia si farà a Milano.<br>Hai capito bene: a Milano, <strong>IN PRESENZA!</strong></p>\n\n\n\n<p>Io sono super carica e non vedo l&#8217;ora di iniziare: vuoi partecipare anche tu all&#8217;organizzazione?<br>Il periodo indicativo per l’evento è&nbsp;<strong>fine settembre 2022</strong>.</p>\n\n\n\n<h2><strong>L’organizzatore del WordCamp Italia</strong></h2>\n\n\n\n<p>è un appassionato sostenitore di WordPress e contribuisce volontariamente alla sua diffusione e al suo sviluppo anche partecipando attivamente alla vita della sua Community.</p>\n\n\n\n<p><strong>Conosce bene le&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/\"><strong>linee guida</strong></a><strong>&nbsp;che regolano l’organizzazione di un WordCamp e aderisce al&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/code-of-conduct/\"><strong>Codice di Condotta</strong></a><strong>&nbsp;della Community</strong></p>\n\n\n\n<p>Inoltre:</p>\n\n\n\n<ul><li><strong>deve aver organizzato almeno un altro WordCamp&nbsp;</strong>(o avere un ruolo attivo nella Community di WordPress)<strong>;</strong></li><li>è entusiasta, disponibile e cordiale;</li><li>sa lavorare in team e portare avanti i suoi compiti anche sotto stress e in autonomia;</li><li>è orientato alla soluzione dei problemi e in caso di necessità, interviene a supporto dei compagni di squadra;</li><li>sa affrontare gli imprevisti in modo collaborativo ed efficace;</li><li>è affidabile e quando si prende un impegno lo porta avanti fino al raggiungimento dell’obiettivo;</li><li><strong>se ha bisogno di aiuto, chiede.</strong></li></ul>\n\n\n\n<h2><strong>Compiti e organizzazione</strong></h2>\n\n\n\n<p>Ogni organizzatore ha un suo compito specifico. Le cose di cui occuparsi sono tante, tra cui:</p>\n\n\n\n<ul><li><strong style=\"color: initial;, sans-serif\">documentazione e amministrazione</strong><span style=\"color: initial;, sans-serif\">&nbsp;(gestione e report riunioni, email, …)</span></li><li><strong>sponsor</strong>: ricerca, fatturazione, richiesta materiale</li><li><strong>speaker</strong>: selezione e supporto</li><li><strong>sito internet</strong>: creazione, gestione e manutenzione, è sufficiente conoscere CSS.</li><li><strong>comunicazione</strong>&nbsp;(contenuti e social)</li><li><strong>grafica</strong>: realizzazione di materiali vari (badge, roll-up, programma, slide, elementi per il sito e i social, …).</li><li><strong>accessibilità</strong>&nbsp;per creare un evento inclusivo: ricerca fornitori per trascrizioni, supporto a sito, comunicazione e grafica per creare materiali accessibili con un linguaggio inclusivo</li><li><strong>volontari</strong>:&nbsp;coordinamento dei volontari durante l&#8217;evento</li><li><strong>contributor day</strong>:&nbsp;organizzazione dei team di lavoro</li><li><strong>location + after party</strong>:&nbsp;ricerca della location per l&#8217;evento e per l&#8217;after party</li><li><strong>catering:&nbsp;</strong>dovremo pur mangiare&#8230;</li><li><strong>area tecnica</strong>: pubblicazione dei video su WPTV</li></ul>\n\n\n\n<p>Gli strumenti utilizzati saranno principalmente&nbsp;<strong>Drive</strong>&nbsp;per l’archiviazione dei documenti e&nbsp;<strong>Slack</strong>&nbsp;per la riunione settimanale e le comunicazioni fra i team.</p>\n\n\n\n<h2><strong>Non so se avrò tempo da dedicare all’organizzazione</strong></h2>\n\n\n\n<p>Siamo tutti volontari e tutti abbiamo un lavoro che ci serve per vivere. Quindi,&nbsp;<strong>l’organizzazione sarà compatibile con il nostro lavoro.</strong></p>\n\n\n\n<p>Ciò detto, non è semplice quantificare il tempo richiesto, perché dipende dal tipo di compito: per alcuni compiti l’impegno maggiore è all’inizio dell’organizzazione, per altri è a ridosso dell’evento. Potremmo stimare una media di 2-3 ore alla settimana (ma può essere anche un po’ di più) per tutta la durata dell’organizzazione.</p>\n\n\n\n<p>Di sicuro tutta la squadra è chiamata a:</p>\n\n\n\n<ul><li>partecipare all’organizzazione nei tempi e modi che il team deciderà</li><li>partecipare interamente alle giornate dell’evento</li></ul>\n\n\n\n<h2><strong>QUINDI, SARAI CON ME?</strong></h2>\n\n\n\n<h4><strong>Se l’idea ti entusiasma e vuoi far parte della squadra,&nbsp;presenta la tua candidatura</strong></h4>\n\n\n\n<div class=\"wp-container-3 wp-block-columns\">\n<div class=\"wp-container-2 wp-block-column\" style=\"flex-basis:100%\">\n<div class=\"wp-container-1 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://forms.gle/3RfGX9FEHRkWPA389\">Compila il modulo</a></div>\n</div>\n</div>\n</div>\n\n\n\n<h3><strong>ENTRO il 27 marzo 2022.</strong></h3>\n\n\n\n<h4><strong><em>Aspetto la tua candidatura!</em><br><em>Giorgia</em></strong></h4>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Discussione: Diversità agli eventi di WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Feb 2022 10:46:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3242\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Il post originale è stato scritto in inglese da @angelajin e pubblicato sul blog del team community di Make WordPress. Questo post è stato anche tradotto in indonesiano, cinese tradizionale, giapponese e portoghese. I commenti aggiunti qui sotto saranno condivisi con il team internazionale di WordPress. Recentemente, sono sorte delle domande sulla diversità agli eventi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Lidia Pellizzaro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5161:\"\n<blockquote class=\"wp-block-quote\"><p>Il post originale è stato scritto in inglese da @angelajin e <a href=\"https://make.wordpress.org/community/2022/02/08/discussion-diversity-in-wordpress-events/\">pubblicato sul blog del team community di Make WordPress</a>. Questo post è stato anche tradotto in indonesiano, cinese tradizionale, giapponese e portoghese.</p><p>I commenti aggiunti qui sotto saranno condivisi con il team internazionale di WordPress.</p></blockquote>\n\n\n\n<p>Recentemente, sono sorte delle domande sulla diversità agli eventi di WordPress, in particolare ai WordCamp. Per il team Community, la diversità è fondamentale e prioritaria, poiché più la nostra comunità è diversificata, più diventa forte, innovativa e resiliente.&nbsp;</p>\n\n\n\n<p>Aumentare la diversità agli eventi di WordPress non è responsabilità di un solo continente, comunità, evento o team. Tutti possono fare la differenza. Parlare di diversità non è una novità per la comunità di WordPress, ma sono particolarmente felice di avere questa conversazione in questo momento.&nbsp;</p>\n\n\n\n<p>Innanzitutto, a causa della pandemia, sono sorti nuovi ostacoli alla partecipazione che potrebbero non essere stati considerati. In secondo luogo, gli organizzatori stanno cautamente riattivando gli eventi in persona. Questo è potenzialmente un momento chiave per comprendere meglio quali ostacoli i membri della comunità sottorappresentati affrontano, cosa permette alle persone di partecipare agli eventi di WordPress, e come sostenere gli organizzatori nella creazione di spazi più inclusivi.</p>\n\n\n\n<p>Inoltre, per le comunità globali come WordPress, onorare la diversità nelle aree e culture locali E celebrare la diversità della nostra comunità globale nel suo complesso è un&#8217;opportunità unica e, allo stesso tempo, una sfida.&nbsp;</p>\n\n\n\n<p>Dal canto mio, ho solo la mia prospettiva ed esperienza, e mi mancano informazioni per comprendere meglio la diversità nella nostra grande comunità globale. Quindi, mi piacerebbe sapere il vostro punto di vista.&nbsp;</p>\n\n\n\n<h2 id=\"discussione-aperta\">Discussione aperta</h2>\n\n\n\n<p>Nel corso degli anni, ho sentito molte soluzioni e suggerimenti su come affrontare le sfide che riguardano la diversità, il che è fantastico! Ma poiché la situazione globale è cambiata così tanto, mi piacerebbe sentire prima l’esperienza di ognuno di voi per quanto riguarda la diversità ai WordCamp e Meetup di WordPress, in modo che il team Community abbia una comprensione più approfondita di dove le esperienze coincidono e dove divergono.</p>\n\n\n\n<p>Parlare di diversità può essere molto intimo, quindi per favore non sentitevi in dovere di partecipare se non siete a vostro agio. Potete lasciare un commento sotto questo post, o se preferite, siete i benvenuti per parlarne in privato e potete mandarmi un DM sullo Slack di Making WordPress.</p>\n\n\n\n<p>Mi piacerebbe sentire la vostra risposta alle seguenti domande, potete rispondere a tutte o solo quelle che vi fanno sentire a vostro agio:</p>\n\n\n\n<ul><li>In quale paese vivi?</li><li>Partecipi a WordCamp o Meetups, e se sì, in che modo partecipi? (per partecipazione si intende assistere, tenere una presentazione, sponsorizzare o organizzare)</li><li>Cosa ti impedisce di partecipare ai WordCamp o ai Meetup?</li><li>Quali sfide vedi oggi per quanto riguarda la diversità?</li><li>Come viene definita la diversità nella tua comunità?</li><li>Che cosa hai visto o sperimentato che ha aumentato la diversità nella tua comunità?</li><li>Che cosa hai visto o sperimentato che ha diminuito la diversità nella tua comunità?</li></ul>\n\n\n\n<p>Dalla condivisione delle nostre storie, spero di imparare di più su di voi, e che chiunque legga questa discussione possa conoscere l&#8217;esperienza delle altre persone!</p>\n\n\n\n<p>Per favore, condividete la vostra storia nei commenti qui sotto entro lunedì 28 febbraio 2022, dopo di che chiuderò i commenti a questo post con un riassunto delle conclusioni e degli insegnamenti principali. Poiché l&#8217;obiettivo di questa discussione è quello di imparare di più sulle esperienze individuali riguardo la diversità nelle varie parti del mondo, è difficile dire quali saranno i prossimi passi o i risultati della discussione stessa! Tuttavia, questa è un’opportunità importante e utile per identificare in che modo il team Community possa rafforzare il programma degli eventi di WordPress, e sicuramente ci sarà un riscontro nelle future proposte di discussione.&nbsp;</p>\n\n\n\n<p>Una nota per questo post in particolare</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Vi prego di condividere solo le vostre esperienze dirette &#8211; so che i WordPressers hanno tutti idee eccellenti e svariate sulla diversità, ma il post non riguarda questo! Quello verrà dopo <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />&nbsp;</p></blockquote>\n\n\n\n<p><strong>Traduzione a cura di <a href=\'https://profiles.wordpress.org/peiraisotta/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>peiraisotta</a>.</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordCamp Italia online 2021: lo organizziamo insieme? \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 Jun 2021 16:34:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Eventi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3207\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"Finalmente la situazione dovuta all’emergenza sanitaria COVID-19 sta migliorando, a breve si potrà tornare ad organizzare eventi dal vivo in piena sicurezza. Sono sicura che quando ci rivedremo saremo davvero in tanti e avremo voglia di stare insieme, abbracciarci, confrontarci e condividere le nostre esperienze con WordPress.&#160; Ma per quest’anno è ancora il caso di [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Giorgia Castro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5069:\"\n<p>Finalmente la situazione dovuta all’emergenza sanitaria COVID-19 sta migliorando, a breve si potrà tornare ad organizzare eventi dal vivo in piena sicurezza.</p>\n\n\n\n<p>Sono sicura che quando ci rivedremo saremo davvero in tanti e avremo voglia di stare insieme, abbracciarci, confrontarci e condividere le nostre esperienze con WordPress.&nbsp;</p>\n\n\n\n<p>Ma per quest’anno è ancora il caso di aspettare. Dunque che si fa?<strong> Facciamo il bis di WordCamp Italia online!</strong></p>\n\n\n\n<p>Uniamo le forze e organizziamo un magnifico WordCamp Italia online! Il periodo indicativo per l’evento è&nbsp;<strong>ottobre-novembre 2021</strong>.</p>\n\n\n\n<p><strong>Io mi candido a guidare l’organizzazione: mi aiuti?</strong></p>\n\n\n\n<h2><strong>L’organizzatore del WordCamp Italia online</strong></h2>\n\n\n\n<p>è un appassionato sostenitore di WordPress e contribuisce volontariamente alla sua diffusione e al suo sviluppo anche partecipando attivamente alla vita della sua Community.</p>\n\n\n\n<p><strong>Conosce bene le&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/\"><strong>linee guida</strong></a><strong>&nbsp;che regolano l’organizzazione di un WordCamp e aderisce al&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/code-of-conduct/\"><strong>Codice di Condotta</strong></a><strong>&nbsp;della Community</strong></p>\n\n\n\n<p>Inoltre:</p>\n\n\n\n<ul><li><strong>deve aver organizzato almeno un altro WordCamp&nbsp;</strong>(o avere un ruolo attivo nella Community di WordPress)<strong>;</strong></li><li>è entusiasta, disponibile e cordiale;</li><li>sa lavorare in team e portare avanti i suoi compiti anche sotto stress e in autonomia;</li><li>è orientato alla soluzione dei problemi e in caso di necessità, interviene a supporto dei compagni di squadra;</li><li>sa affrontare gli imprevisti in modo collaborativo ed efficace;</li><li>è affidabile e quando si prende un impegno lo porta avanti fino al raggiungimento dell’obiettivo;</li><li><strong>se ha bisogno di aiuto, chiede.</strong></li></ul>\n\n\n\n<h2><strong>Compiti e organizzazione</strong></h2>\n\n\n\n<p>Ogni organizzatore ha un suo compito specifico. Le aree da coprire sono:</p>\n\n\n\n<ul><li><strong>area tecnica&nbsp;</strong>(supporto nella predisposizione e gestione della trasmissione streaming dei video, gestione delle aree online, pubblicazione dei video su WPTV)</li><li><strong>documentazione e amministrazione</strong>&nbsp;(gestione e report riunioni, email, …)</li><li>gestione degli&nbsp;<strong>sponsor</strong>: ricerca, fatturazione, richiesta materiale</li><li>gestione degli&nbsp;<strong>speaker</strong>: selezione e supporto</li><li>creazione, gestione e manutenzione del&nbsp;<strong>sito internet</strong>: è sufficiente conoscere CSS.</li><li><strong>comunicazione</strong>&nbsp;(contenuti e social)</li><li><strong>grafica</strong>&nbsp;per la realizzazione di materiali vari (slide, elementi per il sito e i social, …).</li><li><strong>accessibilità</strong>&nbsp;per creare un evento inclusivo: ricerca piattaforma accessibile, ricerca fornitori per trascrizioni, supporto a sito, comunicazione e grafica per creare materiali accessibili con un linguaggio inclusivo</li></ul>\n\n\n\n<p>Gli strumenti utilizzati saranno principalmente&nbsp;<strong>Drive</strong>&nbsp;per l’archiviazione dei documenti e&nbsp;<strong>Slack</strong>&nbsp;per la riunione settimanale e le comunicazioni fra i team.</p>\n\n\n\n<h2><strong>Non so se avrò tempo da dedicare all’organizzazione</strong></h2>\n\n\n\n<p>Siamo tutti volontari e tutti abbiamo un lavoro che ci serve per vivere. Quindi,&nbsp;<strong>l’organizzazione sarà compatibile con il nostro lavoro.</strong></p>\n\n\n\n<p>Ciò detto, non è semplice quantificare il tempo richiesto, perché dipende dal tipo di compito: per alcuni compiti l’impegno maggiore è all’inizio dell’organizzazione, per altri è a ridosso dell’evento. Potremmo stimare una media di 2-3 ore alla settimana (ma può essere anche un po’ di più) per tutta la durata dell’organizzazione.</p>\n\n\n\n<p>Di sicuro tutta la squadra è chiamata a:</p>\n\n\n\n<ul><li>partecipare all’organizzazione nei tempi e modi che il team deciderà</li><li>partecipare interamente alle giornate dell’evento</li></ul>\n\n\n\n<h2><strong>QUINDI, SARAI CON ME?</strong></h2>\n\n\n\n<h4><strong>Se l’idea ti entusiasma e vuoi far parte della squadra,&nbsp;presenta la tua candidatura</strong></h4>\n\n\n\n<div class=\"wp-container-6 wp-block-columns\">\n<div class=\"wp-container-5 wp-block-column\" style=\"flex-basis:100%\">\n<div class=\"wp-container-4 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://forms.gle/ZAb6q44rzuQrWY6bA\" target=\"_blank\" rel=\"noreferrer noopener\">Compila il modulo</a></div>\n</div>\n</div>\n</div>\n\n\n\n<h3><strong>ENTRO il 10 luglio 2021.</strong></h3>\n\n\n\n<h4><strong><em>Aspetto la tua candidatura!</em><br><em>Giorgia</em></strong></h4>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:106:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Maggio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 May 2021 10:52:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:12:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"brescia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"novara\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"padova\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:13:\"reggio emilia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:6:\"teramo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:10;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:11;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3191\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"Torino Giovedì 20 maggio 2021 &#8220;TORINO &#124; ONLINE &#124; 20 Mag: A.M.A. Domande libere&#8221;-&#62; info e iscrizioni su meetup Novara Martedì 25 maggio 2021 &#8220;ONLINE &#124; 25Mag &#8211; Novara A.M.A. WordPress + WooCommerce&#8221;-&#62; info e iscrizioni su meetup Reggio Emilia Martedì 25 maggio 2021 &#8220;Filtrare quando non ci sono filtri &#8211; Reggio Emilia e Teramo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3257:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano le community di </strong></p>\n\n\n\n<h2>Milano</h2>\n\n\n\n<p>Martedì 11 maggio 2021 &#8220;WPMI Maggio 2021 | Funnel e Marketing Automation con WordPress&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/277539130/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Brescia</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Brescia &#8211; La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Brescia/events/278236241/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Padova</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Padova: La visione olistica della Seo&#8221;<br><a href=\"https://www.meetup.com/it-IT/Padova-WordPress-Meetup/events/278214218/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/278136210/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Terni</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Terni #17 &#8211; La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/278178411/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Verona #46: La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/278094973/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p> Giovedì 20 maggio 2021 &#8220;TORINO | ONLINE | 20 Mag: A.M.A. Domande libere&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/278122588/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Novara</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;ONLINE | 25Mag &#8211; Novara A.M.A. WordPress + WooCommerce&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Novara/events/278138935/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Reggio Emilia</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;Filtrare quando non ci sono filtri &#8211; Reggio Emilia e Teramo WordPress Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Reggio-Emilia-WordPress-Meetup/events/278240000/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Teramo</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;[Online] Filtrare quando non ci sono filtri&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Teramo/events/278253182/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:94:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Aprile 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 08:03:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"novara\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3183\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:401:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di&#160; Torino Giovedì 15 Aprile 2021 &#8220;WPMeetup Torino &#124; ONLINE &#124; 15 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3158:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p id=\"block-9f9ef2d2-5134-42d3-80e4-90356e0fccf3\"><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p id=\"block-2f1a59db-de78-4329-a730-1edead40c9d8\">Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p id=\"block-d864571e-e8cb-4146-85da-bc62b8f741b7\"><strong>Nei prossimi giorni si incontrano ONLINE le community di&nbsp;</strong></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Torino</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Giovedì 15 Aprile 2021 &#8220;WPMeetup Torino | ONLINE | 15 Apr &#8211; Come ottenere e fornire un supporto efficace&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/277518574/\" target=\"_blank\" data-type=\"URL\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Novara</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Martedì 20 Aprile 2021 &#8220;ONLINE | 20Apr &#8211; Novara A.M.A. WordPress&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Novara/events/277415733/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Vicenza</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Martedì 27 Aprile 2021 &#8220;AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/277710776/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Roma</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/277650827/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Terni</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;WordPress Meetup Terni #16 &#8211; AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/277662435/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Verona</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;WordPress Meetup Verona #45: AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/277642584/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:151:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Meetup di Marzo 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Mar 2021 12:11:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:27:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"ancona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"arezzo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"bologna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"bolzano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:7:\"brescia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:8:\"cagliari\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:7:\"catania\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:6:\"cesena\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:7:\"Firenze\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:10;a:5:{s:4:\"data\";s:5:\"lecce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:11;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:12;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:13;a:5:{s:4:\"data\";s:6:\"napoli\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:14;a:5:{s:4:\"data\";s:6:\"padova\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:15;a:5:{s:4:\"data\";s:7:\"palermo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:16;a:5:{s:4:\"data\";s:5:\"pavia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:17;a:5:{s:4:\"data\";s:8:\"Piacenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:18;a:5:{s:4:\"data\";s:13:\"reggio emilia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:19;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:20;a:5:{s:4:\"data\";s:6:\"teramo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:21;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:22;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:23;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:24;a:5:{s:4:\"data\";s:5:\"udine\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:25;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:26;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3160\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di  Torino Giovedì 11 Marzo 2021 &#8220;11Mar &#8211; Personal branding nell&#8217;era post [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8401:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di </strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 11 Marzo 2021 &#8220;11Mar &#8211; Personal branding nell&#8217;era post Covid-19??&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276733756/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Ancona</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup: scopri come viene tradotto WordPress &#8211; Live su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Meetup-WordPress-Ancona/events/276846653/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Arezzo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup: scopri come viene tradotto WordPress &#8211; Live su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Arezzo-WordPress-Meetup/events/276813975/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bologna</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Bologna/events/276846307/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bolzano</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Bolzano-WordPress-Meetup/events/276812683/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bari</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Bari/events/276811179/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Brescia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Brescia &#8211; Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Brescia/events/276875483/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Cagliari</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Cagliari-WordPress-Meetup/events/276834198/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Catania</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Tradurre WP &#8211; Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Bologna/events/276846307/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Cesena</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Cesena/events/276983452/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Firenze</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Firenze/events/276867866/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Lecce</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Lecce/events/276813031/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Milano</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/276811539/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Napoli</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Napoli-Meetup/events/276894288/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Padova</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/Padova-WordPress-Meetup/events/276925259/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Palermo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Palermo-WordPress-Meetup/events/276810927/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Pavia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/Pavia-WordPress-Meetup/events/276866482\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Piacenza</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Piacenza-WordPress-Meetup/events/276911476/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Reggio Emilia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Reggio-Emilia-WordPress-Meetup/events/276811833/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/276811476/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Teramo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Teramo/events/276818323/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Terni</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup &#8211; Scopri il lavoro di traduzione di WordPress!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/276811391/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276967498/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup App. ONLINE il 24 MARZO alle 19:00 su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/276845927/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Udine</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Verona #44: Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Udine-WordPress-Meetup/events/277013913/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Verona #44: Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/276796645/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Meetup Vicenza: ONLINE MERCOLEDÌ 24/03 a gruppi unificati!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/276813042/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:85:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Meetup di Febbraio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Feb 2021 12:14:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"catania\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3179\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:407:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di&#160; Torino Giovedì 11 Febbraio 2021 &#8220;ONLINE &#124; 11Feb &#8211; Chiacchiera: un [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1427:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di&nbsp;</strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 11 Febbraio 2021 &#8220;ONLINE | 11Feb &#8211; Chiacchiera: un tema per Gutenberg e FSE&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276190052\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Catania</h2>\n\n\n\n<p>Giovedì 18 Febbraio 2021 &#8220;WordPress Meetup Catania ONLINE &#8211; Febbraio 2021&#8221;<br><a href=\"https://www.meetup.com/it-IT/Meetup-WordPress-Catania/events/276166420/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Milano (WordPress Meetup Day)</h2>\n\n\n\n<p>Sabato 20 Febbraio 2021 &#8220;WordPress Meetup Day Milano (Online) 2021&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/275590402/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:91:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Meetup di Gennaio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jan 2021 10:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3151\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:387:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di  Torino Giovedì 21 Gennaio 2021 &#8220;ONLINE &#124; 21 Gen: PHP 8, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2083:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di </strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 21 Gennaio 2021 &#8220;ONLINE | 21 Gen: PHP 8, le novità che ci attendono!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/275820096/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Giovedì 21 Gennaio 2021 &#8220;Landing page con WordPress, come crearle al meglio &#8211; 21 Gen 2021 Meetup ONLINE!&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/274968307/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Martedì 26 Gennaio 2021 &#8220;26/01 ONLINE &#8211; 1. Un catalogo con WordPress e WooCommerce &#8211; 2. Slot libero&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/275807038/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 27 Gennaio 2021 &#8220;WordPress Meetup Roma &amp; Verona: WP e WooCommerce al servizio delle aziende&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/275931232/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 27 Gennaio 2021 &#8220;WordPress Meetup Verona #43 e Roma: WP e WooCommerce al servizio delle aziende&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:91:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Meetup di Dicembre 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Dec 2020 07:15:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"palermo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3144\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:390:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di: Roma Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2069:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di</strong>:</p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; Roma + Verona WordPress Meetup&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/274549503/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona </h2>\n\n\n\n<p>Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; Roma + Verona WordPress Meetup&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/274548985/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Mercoledì 23 Dicembre 2020 &#8220;Landing page con WordPress, come crearle al meglio &#8211; 21 Gen 2021 Meetup ONLINE!&#8221;<br><a href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/274968307/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Palermo</h2>\n\n\n\n<p>Mercoledì 23 Dicembre 2020 &#8220;Advanced Custom Fields per WordPress&#8221;<br><a href=\"https://www.meetup.com/it-IT/Palermo-WordPress-Meetup/events/275304725/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Martedì 29 Dicembre 2020 &#8220;29/12 ONLINE &#8211; Chiedi &amp; rispondi: serata di auto-aiuto natalizio su WordPress!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/275249746/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://it.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 20 Jul 2022 16:54:45 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 18 May 2022 11:41:40 GMT\";s:4:\"link\";s:61:\"<https://it.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20220706140350\";}', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2359, '_transient_timeout_feed_mod_dbc574053cccd058bc63a08b9c8e458e', '1658379285', 'no'),
(2360, '_transient_feed_mod_dbc574053cccd058bc63a08b9c8e458e', '1658336085', 'no'),
(2361, '_transient_timeout_feed_13e268f84d68a386face41f0af9b3e48', '1658379286', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2362, '_transient_feed_13e268f84d68a386face41f0af9b3e48', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress.org Italia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://it.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 May 2022 08:57:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"it-IT\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.1-alpha-53725\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress.org Italia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://it.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:82:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Maggio 2022\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 May 2022 07:34:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3269\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:247:\"Torino IN PRESENZA https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/ Roma IN PRESENZA https://www.meetup.com/it-IT/RomaWordPress/events/285612524/ Vicenza ONLINE https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Cristiano Zanca\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1072:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano le community di </strong></p>\n\n\n\n<p>Torino IN PRESENZA</p>\n\n\n\n<p><a href=\"https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/\">https://www.meetup.com/WordPress-Meetup-Torino/events/285691706/</a></p>\n\n\n\n<p></p>\n\n\n\n<p>Roma IN PRESENZA</p>\n\n\n\n<p><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/285612524/\">https://www.meetup.com/it-IT/RomaWordPress/events/285612524/</a></p>\n\n\n\n<p></p>\n\n\n\n<p>Vicenza ONLINE</p>\n\n\n\n<p><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222/\">https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/285588222</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"WordCamp Italia 2022: non c’è 2 senza 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Mar 2022 13:49:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Eventi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3249\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"Ciao! Che ne dici? Organizziamo il terzo WordCamp Italia online? Scherzo!! Ho una fantastica notizia per te: quest&#8217;anno il WordCamp Italia si farà a Milano.Hai capito bene: a Milano, IN PRESENZA! Io sono super carica e non vedo l&#8217;ora di iniziare: vuoi partecipare anche tu all&#8217;organizzazione?Il periodo indicativo per l’evento è&#160;fine settembre 2022. L’organizzatore del [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Giorgia Castro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5005:\"\n<h4>Ciao! Che ne dici? Organizziamo il terzo WordCamp Italia online?</h4>\n\n\n\n<p>Scherzo!! Ho una fantastica notizia per te: quest&#8217;anno il WordCamp Italia si farà a Milano.<br>Hai capito bene: a Milano, <strong>IN PRESENZA!</strong></p>\n\n\n\n<p>Io sono super carica e non vedo l&#8217;ora di iniziare: vuoi partecipare anche tu all&#8217;organizzazione?<br>Il periodo indicativo per l’evento è&nbsp;<strong>fine settembre 2022</strong>.</p>\n\n\n\n<h2><strong>L’organizzatore del WordCamp Italia</strong></h2>\n\n\n\n<p>è un appassionato sostenitore di WordPress e contribuisce volontariamente alla sua diffusione e al suo sviluppo anche partecipando attivamente alla vita della sua Community.</p>\n\n\n\n<p><strong>Conosce bene le&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/\"><strong>linee guida</strong></a><strong>&nbsp;che regolano l’organizzazione di un WordCamp e aderisce al&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/code-of-conduct/\"><strong>Codice di Condotta</strong></a><strong>&nbsp;della Community</strong></p>\n\n\n\n<p>Inoltre:</p>\n\n\n\n<ul><li><strong>deve aver organizzato almeno un altro WordCamp&nbsp;</strong>(o avere un ruolo attivo nella Community di WordPress)<strong>;</strong></li><li>è entusiasta, disponibile e cordiale;</li><li>sa lavorare in team e portare avanti i suoi compiti anche sotto stress e in autonomia;</li><li>è orientato alla soluzione dei problemi e in caso di necessità, interviene a supporto dei compagni di squadra;</li><li>sa affrontare gli imprevisti in modo collaborativo ed efficace;</li><li>è affidabile e quando si prende un impegno lo porta avanti fino al raggiungimento dell’obiettivo;</li><li><strong>se ha bisogno di aiuto, chiede.</strong></li></ul>\n\n\n\n<h2><strong>Compiti e organizzazione</strong></h2>\n\n\n\n<p>Ogni organizzatore ha un suo compito specifico. Le cose di cui occuparsi sono tante, tra cui:</p>\n\n\n\n<ul><li><strong style=\"color: initial;, sans-serif\">documentazione e amministrazione</strong><span style=\"color: initial;, sans-serif\">&nbsp;(gestione e report riunioni, email, …)</span></li><li><strong>sponsor</strong>: ricerca, fatturazione, richiesta materiale</li><li><strong>speaker</strong>: selezione e supporto</li><li><strong>sito internet</strong>: creazione, gestione e manutenzione, è sufficiente conoscere CSS.</li><li><strong>comunicazione</strong>&nbsp;(contenuti e social)</li><li><strong>grafica</strong>: realizzazione di materiali vari (badge, roll-up, programma, slide, elementi per il sito e i social, …).</li><li><strong>accessibilità</strong>&nbsp;per creare un evento inclusivo: ricerca fornitori per trascrizioni, supporto a sito, comunicazione e grafica per creare materiali accessibili con un linguaggio inclusivo</li><li><strong>volontari</strong>:&nbsp;coordinamento dei volontari durante l&#8217;evento</li><li><strong>contributor day</strong>:&nbsp;organizzazione dei team di lavoro</li><li><strong>location + after party</strong>:&nbsp;ricerca della location per l&#8217;evento e per l&#8217;after party</li><li><strong>catering:&nbsp;</strong>dovremo pur mangiare&#8230;</li><li><strong>area tecnica</strong>: pubblicazione dei video su WPTV</li></ul>\n\n\n\n<p>Gli strumenti utilizzati saranno principalmente&nbsp;<strong>Drive</strong>&nbsp;per l’archiviazione dei documenti e&nbsp;<strong>Slack</strong>&nbsp;per la riunione settimanale e le comunicazioni fra i team.</p>\n\n\n\n<h2><strong>Non so se avrò tempo da dedicare all’organizzazione</strong></h2>\n\n\n\n<p>Siamo tutti volontari e tutti abbiamo un lavoro che ci serve per vivere. Quindi,&nbsp;<strong>l’organizzazione sarà compatibile con il nostro lavoro.</strong></p>\n\n\n\n<p>Ciò detto, non è semplice quantificare il tempo richiesto, perché dipende dal tipo di compito: per alcuni compiti l’impegno maggiore è all’inizio dell’organizzazione, per altri è a ridosso dell’evento. Potremmo stimare una media di 2-3 ore alla settimana (ma può essere anche un po’ di più) per tutta la durata dell’organizzazione.</p>\n\n\n\n<p>Di sicuro tutta la squadra è chiamata a:</p>\n\n\n\n<ul><li>partecipare all’organizzazione nei tempi e modi che il team deciderà</li><li>partecipare interamente alle giornate dell’evento</li></ul>\n\n\n\n<h2><strong>QUINDI, SARAI CON ME?</strong></h2>\n\n\n\n<h4><strong>Se l’idea ti entusiasma e vuoi far parte della squadra,&nbsp;presenta la tua candidatura</strong></h4>\n\n\n\n<div class=\"wp-container-3 wp-block-columns\">\n<div class=\"wp-container-2 wp-block-column\" style=\"flex-basis:100%\">\n<div class=\"wp-container-1 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://forms.gle/3RfGX9FEHRkWPA389\">Compila il modulo</a></div>\n</div>\n</div>\n</div>\n\n\n\n<h3><strong>ENTRO il 27 marzo 2022.</strong></h3>\n\n\n\n<h4><strong><em>Aspetto la tua candidatura!</em><br><em>Giorgia</em></strong></h4>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Discussione: Diversità agli eventi di WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Feb 2022 10:46:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3242\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Il post originale è stato scritto in inglese da @angelajin e pubblicato sul blog del team community di Make WordPress. Questo post è stato anche tradotto in indonesiano, cinese tradizionale, giapponese e portoghese. I commenti aggiunti qui sotto saranno condivisi con il team internazionale di WordPress. Recentemente, sono sorte delle domande sulla diversità agli eventi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Lidia Pellizzaro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5161:\"\n<blockquote class=\"wp-block-quote\"><p>Il post originale è stato scritto in inglese da @angelajin e <a href=\"https://make.wordpress.org/community/2022/02/08/discussion-diversity-in-wordpress-events/\">pubblicato sul blog del team community di Make WordPress</a>. Questo post è stato anche tradotto in indonesiano, cinese tradizionale, giapponese e portoghese.</p><p>I commenti aggiunti qui sotto saranno condivisi con il team internazionale di WordPress.</p></blockquote>\n\n\n\n<p>Recentemente, sono sorte delle domande sulla diversità agli eventi di WordPress, in particolare ai WordCamp. Per il team Community, la diversità è fondamentale e prioritaria, poiché più la nostra comunità è diversificata, più diventa forte, innovativa e resiliente.&nbsp;</p>\n\n\n\n<p>Aumentare la diversità agli eventi di WordPress non è responsabilità di un solo continente, comunità, evento o team. Tutti possono fare la differenza. Parlare di diversità non è una novità per la comunità di WordPress, ma sono particolarmente felice di avere questa conversazione in questo momento.&nbsp;</p>\n\n\n\n<p>Innanzitutto, a causa della pandemia, sono sorti nuovi ostacoli alla partecipazione che potrebbero non essere stati considerati. In secondo luogo, gli organizzatori stanno cautamente riattivando gli eventi in persona. Questo è potenzialmente un momento chiave per comprendere meglio quali ostacoli i membri della comunità sottorappresentati affrontano, cosa permette alle persone di partecipare agli eventi di WordPress, e come sostenere gli organizzatori nella creazione di spazi più inclusivi.</p>\n\n\n\n<p>Inoltre, per le comunità globali come WordPress, onorare la diversità nelle aree e culture locali E celebrare la diversità della nostra comunità globale nel suo complesso è un&#8217;opportunità unica e, allo stesso tempo, una sfida.&nbsp;</p>\n\n\n\n<p>Dal canto mio, ho solo la mia prospettiva ed esperienza, e mi mancano informazioni per comprendere meglio la diversità nella nostra grande comunità globale. Quindi, mi piacerebbe sapere il vostro punto di vista.&nbsp;</p>\n\n\n\n<h2 id=\"discussione-aperta\">Discussione aperta</h2>\n\n\n\n<p>Nel corso degli anni, ho sentito molte soluzioni e suggerimenti su come affrontare le sfide che riguardano la diversità, il che è fantastico! Ma poiché la situazione globale è cambiata così tanto, mi piacerebbe sentire prima l’esperienza di ognuno di voi per quanto riguarda la diversità ai WordCamp e Meetup di WordPress, in modo che il team Community abbia una comprensione più approfondita di dove le esperienze coincidono e dove divergono.</p>\n\n\n\n<p>Parlare di diversità può essere molto intimo, quindi per favore non sentitevi in dovere di partecipare se non siete a vostro agio. Potete lasciare un commento sotto questo post, o se preferite, siete i benvenuti per parlarne in privato e potete mandarmi un DM sullo Slack di Making WordPress.</p>\n\n\n\n<p>Mi piacerebbe sentire la vostra risposta alle seguenti domande, potete rispondere a tutte o solo quelle che vi fanno sentire a vostro agio:</p>\n\n\n\n<ul><li>In quale paese vivi?</li><li>Partecipi a WordCamp o Meetups, e se sì, in che modo partecipi? (per partecipazione si intende assistere, tenere una presentazione, sponsorizzare o organizzare)</li><li>Cosa ti impedisce di partecipare ai WordCamp o ai Meetup?</li><li>Quali sfide vedi oggi per quanto riguarda la diversità?</li><li>Come viene definita la diversità nella tua comunità?</li><li>Che cosa hai visto o sperimentato che ha aumentato la diversità nella tua comunità?</li><li>Che cosa hai visto o sperimentato che ha diminuito la diversità nella tua comunità?</li></ul>\n\n\n\n<p>Dalla condivisione delle nostre storie, spero di imparare di più su di voi, e che chiunque legga questa discussione possa conoscere l&#8217;esperienza delle altre persone!</p>\n\n\n\n<p>Per favore, condividete la vostra storia nei commenti qui sotto entro lunedì 28 febbraio 2022, dopo di che chiuderò i commenti a questo post con un riassunto delle conclusioni e degli insegnamenti principali. Poiché l&#8217;obiettivo di questa discussione è quello di imparare di più sulle esperienze individuali riguardo la diversità nelle varie parti del mondo, è difficile dire quali saranno i prossimi passi o i risultati della discussione stessa! Tuttavia, questa è un’opportunità importante e utile per identificare in che modo il team Community possa rafforzare il programma degli eventi di WordPress, e sicuramente ci sarà un riscontro nelle future proposte di discussione.&nbsp;</p>\n\n\n\n<p>Una nota per questo post in particolare</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>Vi prego di condividere solo le vostre esperienze dirette &#8211; so che i WordPressers hanno tutti idee eccellenti e svariate sulla diversità, ma il post non riguarda questo! Quello verrà dopo <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />&nbsp;</p></blockquote>\n\n\n\n<p><strong>Traduzione a cura di <a href=\'https://profiles.wordpress.org/peiraisotta/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>peiraisotta</a>.</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordCamp Italia online 2021: lo organizziamo insieme? \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 Jun 2021 16:34:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:6:\"Eventi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3207\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"Finalmente la situazione dovuta all’emergenza sanitaria COVID-19 sta migliorando, a breve si potrà tornare ad organizzare eventi dal vivo in piena sicurezza. Sono sicura che quando ci rivedremo saremo davvero in tanti e avremo voglia di stare insieme, abbracciarci, confrontarci e condividere le nostre esperienze con WordPress.&#160; Ma per quest’anno è ancora il caso di [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Giorgia Castro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5069:\"\n<p>Finalmente la situazione dovuta all’emergenza sanitaria COVID-19 sta migliorando, a breve si potrà tornare ad organizzare eventi dal vivo in piena sicurezza.</p>\n\n\n\n<p>Sono sicura che quando ci rivedremo saremo davvero in tanti e avremo voglia di stare insieme, abbracciarci, confrontarci e condividere le nostre esperienze con WordPress.&nbsp;</p>\n\n\n\n<p>Ma per quest’anno è ancora il caso di aspettare. Dunque che si fa?<strong> Facciamo il bis di WordCamp Italia online!</strong></p>\n\n\n\n<p>Uniamo le forze e organizziamo un magnifico WordCamp Italia online! Il periodo indicativo per l’evento è&nbsp;<strong>ottobre-novembre 2021</strong>.</p>\n\n\n\n<p><strong>Io mi candido a guidare l’organizzazione: mi aiuti?</strong></p>\n\n\n\n<h2><strong>L’organizzatore del WordCamp Italia online</strong></h2>\n\n\n\n<p>è un appassionato sostenitore di WordPress e contribuisce volontariamente alla sua diffusione e al suo sviluppo anche partecipando attivamente alla vita della sua Community.</p>\n\n\n\n<p><strong>Conosce bene le&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/\"><strong>linee guida</strong></a><strong>&nbsp;che regolano l’organizzazione di un WordCamp e aderisce al&nbsp;</strong><a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/code-of-conduct/\"><strong>Codice di Condotta</strong></a><strong>&nbsp;della Community</strong></p>\n\n\n\n<p>Inoltre:</p>\n\n\n\n<ul><li><strong>deve aver organizzato almeno un altro WordCamp&nbsp;</strong>(o avere un ruolo attivo nella Community di WordPress)<strong>;</strong></li><li>è entusiasta, disponibile e cordiale;</li><li>sa lavorare in team e portare avanti i suoi compiti anche sotto stress e in autonomia;</li><li>è orientato alla soluzione dei problemi e in caso di necessità, interviene a supporto dei compagni di squadra;</li><li>sa affrontare gli imprevisti in modo collaborativo ed efficace;</li><li>è affidabile e quando si prende un impegno lo porta avanti fino al raggiungimento dell’obiettivo;</li><li><strong>se ha bisogno di aiuto, chiede.</strong></li></ul>\n\n\n\n<h2><strong>Compiti e organizzazione</strong></h2>\n\n\n\n<p>Ogni organizzatore ha un suo compito specifico. Le aree da coprire sono:</p>\n\n\n\n<ul><li><strong>area tecnica&nbsp;</strong>(supporto nella predisposizione e gestione della trasmissione streaming dei video, gestione delle aree online, pubblicazione dei video su WPTV)</li><li><strong>documentazione e amministrazione</strong>&nbsp;(gestione e report riunioni, email, …)</li><li>gestione degli&nbsp;<strong>sponsor</strong>: ricerca, fatturazione, richiesta materiale</li><li>gestione degli&nbsp;<strong>speaker</strong>: selezione e supporto</li><li>creazione, gestione e manutenzione del&nbsp;<strong>sito internet</strong>: è sufficiente conoscere CSS.</li><li><strong>comunicazione</strong>&nbsp;(contenuti e social)</li><li><strong>grafica</strong>&nbsp;per la realizzazione di materiali vari (slide, elementi per il sito e i social, …).</li><li><strong>accessibilità</strong>&nbsp;per creare un evento inclusivo: ricerca piattaforma accessibile, ricerca fornitori per trascrizioni, supporto a sito, comunicazione e grafica per creare materiali accessibili con un linguaggio inclusivo</li></ul>\n\n\n\n<p>Gli strumenti utilizzati saranno principalmente&nbsp;<strong>Drive</strong>&nbsp;per l’archiviazione dei documenti e&nbsp;<strong>Slack</strong>&nbsp;per la riunione settimanale e le comunicazioni fra i team.</p>\n\n\n\n<h2><strong>Non so se avrò tempo da dedicare all’organizzazione</strong></h2>\n\n\n\n<p>Siamo tutti volontari e tutti abbiamo un lavoro che ci serve per vivere. Quindi,&nbsp;<strong>l’organizzazione sarà compatibile con il nostro lavoro.</strong></p>\n\n\n\n<p>Ciò detto, non è semplice quantificare il tempo richiesto, perché dipende dal tipo di compito: per alcuni compiti l’impegno maggiore è all’inizio dell’organizzazione, per altri è a ridosso dell’evento. Potremmo stimare una media di 2-3 ore alla settimana (ma può essere anche un po’ di più) per tutta la durata dell’organizzazione.</p>\n\n\n\n<p>Di sicuro tutta la squadra è chiamata a:</p>\n\n\n\n<ul><li>partecipare all’organizzazione nei tempi e modi che il team deciderà</li><li>partecipare interamente alle giornate dell’evento</li></ul>\n\n\n\n<h2><strong>QUINDI, SARAI CON ME?</strong></h2>\n\n\n\n<h4><strong>Se l’idea ti entusiasma e vuoi far parte della squadra,&nbsp;presenta la tua candidatura</strong></h4>\n\n\n\n<div class=\"wp-container-6 wp-block-columns\">\n<div class=\"wp-container-5 wp-block-column\" style=\"flex-basis:100%\">\n<div class=\"wp-container-4 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link has-vivid-cyan-blue-background-color has-background\" href=\"https://forms.gle/ZAb6q44rzuQrWY6bA\" target=\"_blank\" rel=\"noreferrer noopener\">Compila il modulo</a></div>\n</div>\n</div>\n</div>\n\n\n\n<h3><strong>ENTRO il 10 luglio 2021.</strong></h3>\n\n\n\n<h4><strong><em>Aspetto la tua candidatura!</em><br><em>Giorgia</em></strong></h4>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://it.wordpress.org/news/2021/06/wordcamp-italia-online-2021-lo-organizziamo-insieme/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:106:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Maggio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 May 2021 10:52:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:12:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"brescia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"novara\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"padova\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:13:\"reggio emilia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:6:\"teramo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:10;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:11;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3191\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:402:\"Torino Giovedì 20 maggio 2021 &#8220;TORINO &#124; ONLINE &#124; 20 Mag: A.M.A. Domande libere&#8221;-&#62; info e iscrizioni su meetup Novara Martedì 25 maggio 2021 &#8220;ONLINE &#124; 25Mag &#8211; Novara A.M.A. WordPress + WooCommerce&#8221;-&#62; info e iscrizioni su meetup Reggio Emilia Martedì 25 maggio 2021 &#8220;Filtrare quando non ci sono filtri &#8211; Reggio Emilia e Teramo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3257:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano le community di </strong></p>\n\n\n\n<h2>Milano</h2>\n\n\n\n<p>Martedì 11 maggio 2021 &#8220;WPMI Maggio 2021 | Funnel e Marketing Automation con WordPress&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/277539130/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Brescia</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Brescia &#8211; La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Brescia/events/278236241/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Padova</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Padova: La visione olistica della Seo&#8221;<br><a href=\"https://www.meetup.com/it-IT/Padova-WordPress-Meetup/events/278214218/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/278136210/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Terni</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Terni #17 &#8211; La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/278178411/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 19 maggio 2021 &#8220;WordPress Meetup Verona #46: La visione olistica della SEO&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/278094973/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p> Giovedì 20 maggio 2021 &#8220;TORINO | ONLINE | 20 Mag: A.M.A. Domande libere&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/278122588/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Novara</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;ONLINE | 25Mag &#8211; Novara A.M.A. WordPress + WooCommerce&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Novara/events/278138935/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Reggio Emilia</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;Filtrare quando non ci sono filtri &#8211; Reggio Emilia e Teramo WordPress Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Reggio-Emilia-WordPress-Meetup/events/278240000/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Teramo</h2>\n\n\n\n<p> Martedì 25 maggio 2021 &#8220;[Online] Filtrare quando non ci sono filtri&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Teramo/events/278253182/\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2021/05/meetup-di-maggio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:94:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Meetup di Aprile 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Apr 2021 08:03:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"novara\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3183\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:401:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di&#160; Torino Giovedì 15 Aprile 2021 &#8220;WPMeetup Torino &#124; ONLINE &#124; 15 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3158:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p id=\"block-9f9ef2d2-5134-42d3-80e4-90356e0fccf3\"><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p id=\"block-2f1a59db-de78-4329-a730-1edead40c9d8\">Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p id=\"block-d864571e-e8cb-4146-85da-bc62b8f741b7\"><strong>Nei prossimi giorni si incontrano ONLINE le community di&nbsp;</strong></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Torino</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Giovedì 15 Aprile 2021 &#8220;WPMeetup Torino | ONLINE | 15 Apr &#8211; Come ottenere e fornire un supporto efficace&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/277518574/\" target=\"_blank\" data-type=\"URL\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Novara</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Martedì 20 Aprile 2021 &#8220;ONLINE | 20Apr &#8211; Novara A.M.A. WordPress&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Novara/events/277415733/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Vicenza</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Martedì 27 Aprile 2021 &#8220;AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/277710776/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Roma</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/277650827/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Terni</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;WordPress Meetup Terni #16 &#8211; AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/277662435/\" data-type=\"URL\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2 id=\"block-c83a8fd5-0132-40a1-97d3-417a4afca6ac\">Verona</h2>\n\n\n\n<p id=\"block-34329d3e-1a99-4a5f-8fc3-ba315fc5a95f\">Mercoledì 28 Aprile 2021 &#8220;WordPress Meetup Verona #45: AMA &#8211; ask me anything! Domande in libertà&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/277642584/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://it.wordpress.org/news/2021/04/meetup-di-aprile-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:151:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Meetup di Marzo 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Mar 2021 12:11:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:27:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"ancona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"arezzo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"bologna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"bolzano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:7:\"brescia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:8:\"cagliari\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:7:\"catania\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:6:\"cesena\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:7:\"Firenze\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:10;a:5:{s:4:\"data\";s:5:\"lecce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:11;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:12;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:13;a:5:{s:4:\"data\";s:6:\"napoli\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:14;a:5:{s:4:\"data\";s:6:\"padova\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:15;a:5:{s:4:\"data\";s:7:\"palermo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:16;a:5:{s:4:\"data\";s:5:\"pavia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:17;a:5:{s:4:\"data\";s:8:\"Piacenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:18;a:5:{s:4:\"data\";s:13:\"reggio emilia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:19;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:20;a:5:{s:4:\"data\";s:6:\"teramo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:21;a:5:{s:4:\"data\";s:5:\"terni\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:22;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:23;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:24;a:5:{s:4:\"data\";s:5:\"udine\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:25;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:26;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3160\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:408:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di  Torino Giovedì 11 Marzo 2021 &#8220;11Mar &#8211; Personal branding nell&#8217;era post [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8401:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di </strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 11 Marzo 2021 &#8220;11Mar &#8211; Personal branding nell&#8217;era post Covid-19??&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276733756/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Ancona</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup: scopri come viene tradotto WordPress &#8211; Live su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Meetup-WordPress-Ancona/events/276846653/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Arezzo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup: scopri come viene tradotto WordPress &#8211; Live su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Arezzo-WordPress-Meetup/events/276813975/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bologna</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Bologna/events/276846307/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bolzano</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Bolzano-WordPress-Meetup/events/276812683/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Bari</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Bari/events/276811179/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Brescia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Brescia &#8211; Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Brescia/events/276875483/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Cagliari</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Cagliari-WordPress-Meetup/events/276834198/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Catania</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Tradurre WP &#8211; Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Bologna/events/276846307/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Cesena</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Cesena/events/276983452/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Firenze</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Firenze/events/276867866/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Lecce</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Lecce/events/276813031/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Milano</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/276811539/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Napoli</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Napoli-Meetup/events/276894288/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Padova</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/Padova-WordPress-Meetup/events/276925259/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Palermo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Palermo-WordPress-Meetup/events/276810927/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Pavia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/Pavia-WordPress-Meetup/events/276866482\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Piacenza</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Piacenza-WordPress-Meetup/events/276911476/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Reggio Emilia</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Reggio-Emilia-WordPress-Meetup/events/276811833/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/RomaWordPress/events/276811476/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Teramo</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Teramo/events/276818323/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Terni</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup &#8211; Scopri il lavoro di traduzione di WordPress!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Terni/events/276811391/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Appuntamento ONLINE MERCOLEDÌ 24 MARZO alle 19:00 su Zoom.&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276967498/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Italian Polyglots Meetup App. ONLINE il 24 MARZO alle 19:00 su Zoom&#8221;<br><a href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/276845927/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Udine</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Verona #44: Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Udine-WordPress-Meetup/events/277013913/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;WordPress Meetup Verona #44: Italian Polyglots Meetup&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/276796645/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Mercoledì 24 Marzo 2021 &#8220;Meetup Vicenza: ONLINE MERCOLEDÌ 24/03 a gruppi unificati!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/276813042/\" data-type=\"URL\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://it.wordpress.org/news/2021/03/meetup-di-marzo-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:85:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Meetup di Febbraio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Feb 2021 12:14:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"catania\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"milano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3179\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:407:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di&#160; Torino Giovedì 11 Febbraio 2021 &#8220;ONLINE &#124; 11Feb &#8211; Chiacchiera: un [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1427:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di&nbsp;</strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 11 Febbraio 2021 &#8220;ONLINE | 11Feb &#8211; Chiacchiera: un tema per Gutenberg e FSE&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/276190052\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Catania</h2>\n\n\n\n<p>Giovedì 18 Febbraio 2021 &#8220;WordPress Meetup Catania ONLINE &#8211; Febbraio 2021&#8221;<br><a href=\"https://www.meetup.com/it-IT/Meetup-WordPress-Catania/events/276166420/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Milano (WordPress Meetup Day)</h2>\n\n\n\n<p>Sabato 20 Febbraio 2021 &#8220;WordPress Meetup Day Milano (Online) 2021&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Milano/events/275590402/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2021/02/meetup-di-febbraio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:91:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Meetup di Gennaio 2021\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 24 Jan 2021 10:59:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"torino\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3151\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:387:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di  Torino Giovedì 21 Gennaio 2021 &#8220;ONLINE &#124; 21 Gen: PHP 8, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2083:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di </strong></p>\n\n\n\n<h2>Torino</h2>\n\n\n\n<p>Giovedì 21 Gennaio 2021 &#8220;ONLINE | 21 Gen: PHP 8, le novità che ci attendono!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Torino/events/275820096/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Giovedì 21 Gennaio 2021 &#8220;Landing page con WordPress, come crearle al meglio &#8211; 21 Gen 2021 Meetup ONLINE!&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/274968307/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Martedì 26 Gennaio 2021 &#8220;26/01 ONLINE &#8211; 1. Un catalogo con WordPress e WooCommerce &#8211; 2. Slot libero&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/275807038/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Mercoledì 27 Gennaio 2021 &#8220;WordPress Meetup Roma &amp; Verona: WP e WooCommerce al servizio delle aziende&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/275931232/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona</h2>\n\n\n\n<p>Mercoledì 27 Gennaio 2021 &#8220;WordPress Meetup Verona #43 e Roma: WP e WooCommerce al servizio delle aziende&#8221;<br><a href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://it.wordpress.org/news/2021/01/meetup-di-gennaio-2021/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:91:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Meetup di Dicembre 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Dec 2020 07:15:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:6:\"Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"palermo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"roma\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:7:\"treviso\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:6:\"verona\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:7:\"vicenza\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://it.wordpress.org/?p=3144\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:390:\"In tutta Italia ci sono meetup WordPress! Incontri gratuiti e aperti a tutti,&#160;in cui le community locali si incontrano per condividere e conoscersi.Se non sai cos&#8217;è un meetup&#160;leggi qui. Tutti i meetup italiani sono&#160;elencati qui. Nei prossimi giorni si incontrano ONLINE le community di: Roma Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Valentina Azzi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2069:\"\n<p>In tutta Italia ci sono meetup WordPress!</p>\n\n\n\n<p><strong>Incontri gratuiti e aperti a tutti,</strong>&nbsp;in cui le community locali si incontrano per condividere e conoscersi.<br>Se non sai cos&#8217;è un meetup&nbsp;<a href=\"https://it.wordpress.org/meetup/guida-ai-meetup-di-wordpress/\">leggi qui.</a></p>\n\n\n\n<p>Tutti i meetup italiani sono&nbsp;<a href=\"https://it.wordpress.org/meetup/\">elencati qui.</a></p>\n\n\n\n<p><strong>Nei prossimi giorni si incontrano ONLINE le community di</strong>:</p>\n\n\n\n<h2>Roma</h2>\n\n\n\n<p>Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; Roma + Verona WordPress Meetup&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/RomaWordPress/events/274549503/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Verona </h2>\n\n\n\n<p>Martedì 1 Dicembre 2020 &#8220;E-commerce a norma di GDPR &#8211; Roma + Verona WordPress Meetup&#8221;<br><a rel=\"noreferrer noopener\" href=\"https://www.meetup.com/it-IT/Verona-WordPress-Meetup/events/274548985/\" target=\"_blank\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Treviso</h2>\n\n\n\n<p>Mercoledì 23 Dicembre 2020 &#8220;Landing page con WordPress, come crearle al meglio &#8211; 21 Gen 2021 Meetup ONLINE!&#8221;<br><a href=\"https://www.meetup.com/it-IT/Treviso-WordPress-Meetup/events/274968307/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Palermo</h2>\n\n\n\n<p>Mercoledì 23 Dicembre 2020 &#8220;Advanced Custom Fields per WordPress&#8221;<br><a href=\"https://www.meetup.com/it-IT/Palermo-WordPress-Meetup/events/275304725/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\n\n\n<h2>Vicenza</h2>\n\n\n\n<p>Martedì 29 Dicembre 2020 &#8220;29/12 ONLINE &#8211; Chiedi &amp; rispondi: serata di auto-aiuto natalizio su WordPress!&#8221;<br><a href=\"https://www.meetup.com/it-IT/WordPress-Meetup-Vicenza/events/275249746/\" target=\"_blank\" rel=\"noreferrer noopener\">-&gt; info e iscrizioni su meetup</a></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://it.wordpress.org/news/2020/12/meetup-di-dicembre-2020/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://it.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 20 Jul 2022 16:54:46 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 18 May 2022 08:57:14 GMT\";s:4:\"link\";s:61:\"<https://it.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20220706140350\";}', 'no');
INSERT INTO `evo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2363, '_transient_timeout_feed_mod_13e268f84d68a386face41f0af9b3e48', '1658379286', 'no'),
(2364, '_transient_feed_mod_13e268f84d68a386face41f0af9b3e48', '1658336086', 'no'),
(2365, '_transient_timeout_dash_v2_29eefda0bdc5977617f778df7e755d87', '1658379286', 'no'),
(2366, '_transient_dash_v2_29eefda0bdc5977617f778df7e755d87', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/\'>Meetup di Maggio 2022</a></li><li><a class=\'rsswidget\' href=\'https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/\'>WordCamp Italia 2022: non c’è 2 senza 3</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://it.wordpress.org/news/2022/05/meetup-di-maggio-2022/\'>Meetup di Maggio 2022</a></li><li><a class=\'rsswidget\' href=\'https://it.wordpress.org/news/2022/03/wordcamp-italia-2022-non-ce-2-senza-3/\'>WordCamp Italia 2022: non c’è 2 senza 3</a></li><li><a class=\'rsswidget\' href=\'https://it.wordpress.org/news/2022/02/discussione-diversita-agli-eventi-di-wordpress/\'>Discussione: Diversità agli eventi di WordPress</a></li></ul></div>', 'no'),
(2508, '_site_transient_timeout_theme_roots', '1658354819', 'no'),
(2509, '_site_transient_theme_roots', 'a:4:{s:8:\"my-theme\";s:7:\"/themes\";s:14:\"sage/resources\";s:7:\"/themes\";s:16:\"sage_2/resources\";s:7:\"/themes\";s:11:\"themeEditor\";s:7:\"/themes\";}', 'no'),
(2511, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:3:\"6.0\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1658353020;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"6.0\";s:7:\"updated\";s:19:\"2022-07-06 19:05:42\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0/it_IT.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(2512, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1658353021;s:7:\"checked\";a:4:{s:8:\"my-theme\";s:3:\"1.0\";s:14:\"sage/resources\";s:5:\"9.1.0\";s:16:\"sage_2/resources\";s:5:\"9.1.0\";s:11:\"themeEditor\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2513, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1658353021;s:8:\"response\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"updated\";s:19:\"2021-08-06 19:26:26\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6.2/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2022-05-17 14:12:53\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.6/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"database-for-cf7\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"1.2.1\";s:7:\"updated\";s:19:\"2019-09-21 18:29:46\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/database-for-cf7/1.2.1/it_IT.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:37:\"database-for-cf7/database-for-cf7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/database-for-cf7\";s:4:\"slug\";s:16:\"database-for-cf7\";s:6:\"plugin\";s:37:\"database-for-cf7/database-for-cf7.php\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/database-for-cf7/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/database-for-cf7.1.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/database-for-cf7/assets/icon-256x256.jpg?rev=1635589\";s:2:\"1x\";s:69:\"https://ps.w.org/database-for-cf7/assets/icon-128x128.jpg?rev=1635589\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/database-for-cf7/assets/banner-1544x500.jpg?rev=1780944\";s:2:\"1x\";s:71:\"https://ps.w.org/database-for-cf7/assets/banner-772x250.jpg?rev=1780944\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-migrate-db.2.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}}', 'no'),
(2563, '_transient_timeout_global_styles_sage_2/resources', '1658356577', 'no'),
(2564, '_transient_global_styles_sage_2/resources', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_postmeta`
--

CREATE TABLE `evo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_postmeta`
--

INSERT INTO `evo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(44, 23, '_form', '<label> Il tuo nome\n    [text* your-name] </label>\n\n<label> La tua email\n    [email* your-email] </label>\n\n<label> Oggetto\n    [text* your-subject] </label>\n\n<label> Il tuo messaggio (facoltativo)\n    [textarea your-message] </label>\n\n[submit \"Invia\"]'),
(45, 23, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@evolvetest.it>\";s:4:\"body\";s:183:\"Da: [your-name] <[your-email]>\nOggetto: [your-subject]\n\nCorpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(46, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <wordpress@evolvetest.it>\";s:4:\"body\";s:127:\"Corpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(47, 23, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:46:\"Grazie per il tuo messaggio. È stato inviato.\";s:12:\"mail_sent_ng\";s:81:\"Si è verificato un errore durante l\'invio del tuo messaggio. Riprova più tardi.\";s:16:\"validation_error\";s:57:\"Uno o più campi hanno degli errori. Controlla e riprova.\";s:4:\"spam\";s:81:\"Si è verificato un errore durante l\'invio del tuo messaggio. Riprova più tardi.\";s:12:\"accept_terms\";s:70:\"Devi accettare termini e condizioni prima di inviare il tuo messaggio.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:71:\"Si è verificato un errore sconosciuto durante il caricamento del file.\";s:24:\"upload_file_type_invalid\";s:56:\"Non sei abilitato al caricamento di file di questo tipo.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:59:\"Si è verificato un errore durante il caricamento del file.\";}'),
(48, 23, '_additional_settings', ''),
(49, 23, '_locale', 'it_IT'),
(99, 46, '_edit_last', '1'),
(100, 46, '_edit_lock', '1657017460:1'),
(101, 48, '_edit_last', '1'),
(102, 48, '_edit_lock', '1657021998:1'),
(103, 50, '_edit_last', '1'),
(104, 50, '_edit_lock', '1657017475:1'),
(105, 52, '_edit_last', '1'),
(106, 52, '_edit_lock', '1657017482:1'),
(107, 54, '_edit_last', '1'),
(108, 54, '_edit_lock', '1657017492:1'),
(109, 56, '_edit_lock', '1657096994:1'),
(110, 56, '_edit_last', '1'),
(111, 58, '_edit_last', '1'),
(112, 58, '_edit_lock', '1657096986:1'),
(113, 60, '_edit_last', '1'),
(114, 60, '_edit_lock', '1657017532:1'),
(115, 62, '_edit_last', '1'),
(116, 62, '_edit_lock', '1657017539:1'),
(117, 64, '_edit_last', '1'),
(118, 64, '_edit_lock', '1657017550:1'),
(119, 66, '_edit_last', '1'),
(120, 66, '_edit_lock', '1657017553:1'),
(121, 68, '_edit_last', '1'),
(122, 68, '_edit_lock', '1657017560:1'),
(123, 70, '_edit_last', '1'),
(124, 70, '_edit_lock', '1657017566:1'),
(125, 72, '_edit_last', '1'),
(126, 72, '_edit_lock', '1657017572:1'),
(127, 74, '_edit_last', '1'),
(128, 74, '_edit_lock', '1657017582:1'),
(129, 76, '_edit_last', '1'),
(130, 76, '_edit_lock', '1657017588:1'),
(131, 78, '_edit_last', '1'),
(132, 78, '_edit_lock', '1657017594:1'),
(133, 80, '_edit_lock', '1657178819:1'),
(134, 80, '_edit_last', '1'),
(138, 83, '_edit_last', '1'),
(139, 83, '_edit_lock', '1657178813:1'),
(140, 83, '_wp_trash_meta_status', 'publish'),
(141, 83, '_wp_trash_meta_time', '1657178978'),
(142, 83, '_wp_desired_post_slug', 'acconto'),
(143, 46, '_wp_trash_meta_status', 'publish'),
(144, 46, '_wp_trash_meta_time', '1657178978'),
(145, 46, '_wp_desired_post_slug', 'allegati'),
(146, 48, '_wp_trash_meta_status', 'publish'),
(147, 48, '_wp_trash_meta_time', '1657178978'),
(148, 48, '_wp_desired_post_slug', 'appuntamenti'),
(149, 50, '_wp_trash_meta_status', 'publish'),
(150, 50, '_wp_trash_meta_time', '1657178978'),
(151, 50, '_wp_desired_post_slug', 'caso'),
(152, 52, '_wp_trash_meta_status', 'publish'),
(153, 52, '_wp_trash_meta_time', '1657178978'),
(154, 52, '_wp_desired_post_slug', 'chiamata'),
(155, 54, '_wp_trash_meta_status', 'publish'),
(156, 54, '_wp_trash_meta_time', '1657178978'),
(157, 54, '_wp_desired_post_slug', 'fascicolo'),
(158, 56, '_wp_trash_meta_status', 'publish'),
(159, 56, '_wp_trash_meta_time', '1657178978'),
(160, 56, '_wp_desired_post_slug', 'fascicolo_s'),
(161, 58, '_wp_trash_meta_status', 'publish'),
(162, 58, '_wp_trash_meta_time', '1657178978'),
(163, 58, '_wp_desired_post_slug', 'gestito'),
(164, 80, '_wp_trash_meta_status', 'publish'),
(165, 80, '_wp_trash_meta_time', '1657178978'),
(166, 80, '_wp_desired_post_slug', 'home-page'),
(167, 60, '_wp_trash_meta_status', 'publish'),
(168, 60, '_wp_trash_meta_time', '1657178978'),
(169, 60, '_wp_desired_post_slug', 'metodo_p'),
(170, 62, '_wp_trash_meta_status', 'publish'),
(171, 62, '_wp_trash_meta_time', '1657178978'),
(172, 62, '_wp_desired_post_slug', 'pagamento'),
(173, 64, '_wp_trash_meta_status', 'publish'),
(174, 64, '_wp_trash_meta_time', '1657178978'),
(175, 64, '_wp_desired_post_slug', 'prospective'),
(176, 66, '_wp_trash_meta_status', 'publish'),
(177, 66, '_wp_trash_meta_time', '1657178978'),
(178, 66, '_wp_desired_post_slug', 'rata'),
(179, 68, '_wp_trash_meta_status', 'publish'),
(180, 68, '_wp_trash_meta_time', '1657178978'),
(181, 68, '_wp_desired_post_slug', 'referente'),
(182, 70, '_wp_trash_meta_status', 'publish'),
(183, 70, '_wp_trash_meta_time', '1657178978'),
(184, 70, '_wp_desired_post_slug', 'specialista'),
(185, 72, '_wp_trash_meta_status', 'publish'),
(186, 72, '_wp_trash_meta_time', '1657178978'),
(187, 72, '_wp_desired_post_slug', 'spese'),
(188, 74, '_wp_trash_meta_status', 'publish'),
(189, 74, '_wp_trash_meta_time', '1657178978'),
(190, 74, '_wp_desired_post_slug', 'sponsor'),
(191, 76, '_wp_trash_meta_status', 'publish'),
(192, 76, '_wp_trash_meta_time', '1657178978'),
(193, 76, '_wp_desired_post_slug', 'stato'),
(194, 78, '_wp_trash_meta_status', 'publish'),
(195, 78, '_wp_trash_meta_time', '1657178978'),
(196, 78, '_wp_desired_post_slug', 'ufficio'),
(197, 85, '_edit_lock', '1657232374:1'),
(198, 85, '_edit_last', '1'),
(199, 85, '_wp_page_template', 'views/template-custom.blade.php'),
(200, 87, '_edit_lock', '1657853240:1'),
(201, 87, '_edit_last', '1'),
(202, 85, 'titolo', 'Home'),
(203, 85, '_titolo', 'field_62c7273365743'),
(204, 85, 'immagine', ''),
(205, 85, '_immagine', 'field_62c7273765744'),
(206, 86, 'titolo', ''),
(207, 86, '_titolo', 'field_62c7273365743'),
(208, 86, 'immagine', ''),
(209, 86, '_immagine', 'field_62c7273765744'),
(210, 90, '_wp_trash_meta_status', 'publish'),
(211, 90, '_wp_trash_meta_time', '1657220868'),
(216, 92, '_wp_trash_meta_status', 'publish'),
(217, 92, '_wp_trash_meta_time', '1657228508'),
(218, 93, 'titolo', 'prova'),
(219, 93, '_titolo', 'field_62c7273365743'),
(220, 93, 'immagine', ''),
(221, 93, '_immagine', 'field_62c7273765744'),
(222, 94, 'titolo', ''),
(223, 94, '_titolo', 'field_62c7273365743'),
(224, 94, 'immagine', ''),
(225, 94, '_immagine', 'field_62c7273765744'),
(226, 95, 'titolo', 'Home'),
(227, 95, '_titolo', 'field_62c7273365743'),
(228, 95, 'immagine', ''),
(229, 95, '_immagine', 'field_62c7273765744'),
(230, 102, '_edit_lock', '1657360030:1'),
(231, 102, '_edit_last', '1'),
(232, 102, '_wp_page_template', 'views/template-custom.blade.php'),
(233, 102, 'titolo', 'Gestiti'),
(234, 102, '_titolo', 'field_62c7273365743'),
(235, 102, 'immagine', ''),
(236, 102, '_immagine', 'field_62c7273765744'),
(237, 102, 'sottotitolo', 'visualizzazione di tutti gli utenti della tabella \"GESTITI\"'),
(238, 102, '_sottotitolo', 'field_62c75cb5feb05'),
(239, 102, 'spiegazione_vista', 'SPIEGAZIONE VISTA'),
(240, 102, '_spiegazione_vista', 'field_62c75cc3feb06'),
(241, 102, 'spiegazione_modifica', 'SPIEGAZIONE MODIFICA'),
(242, 102, '_spiegazione_modifica', 'field_62c75d06feb07'),
(243, 102, 'tabella', 'gestiti'),
(244, 102, '_tabella', 'field_62c75d27feb08'),
(245, 103, 'titolo', 'Gestiti'),
(246, 103, '_titolo', 'field_62c7273365743'),
(247, 103, 'immagine', ''),
(248, 103, '_immagine', 'field_62c7273765744'),
(249, 103, 'sottotitolo', 'visualizzazione di tutti gli utenti della tabella \"GESTITI\"'),
(250, 103, '_sottotitolo', 'field_62c75cb5feb05'),
(251, 103, 'spiegazione_vista', 'SPIEGAZIONE VISTA'),
(252, 103, '_spiegazione_vista', 'field_62c75cc3feb06'),
(253, 103, 'spiegazione_modifica', 'SPIEGAZIONE MODIFICA'),
(254, 103, '_spiegazione_modifica', 'field_62c75d06feb07'),
(255, 103, 'tabella', 'gestiti.blade.php'),
(256, 103, '_tabella', 'field_62c75d27feb08'),
(257, 104, 'titolo', 'Gestiti'),
(258, 104, '_titolo', 'field_62c7273365743'),
(259, 104, 'immagine', ''),
(260, 104, '_immagine', 'field_62c7273765744'),
(261, 104, 'sottotitolo', 'visualizzazione di tutti gli utenti della tabella \"GESTITI\"'),
(262, 104, '_sottotitolo', 'field_62c75cb5feb05'),
(263, 104, 'spiegazione_vista', 'SPIEGAZIONE VISTA'),
(264, 104, '_spiegazione_vista', 'field_62c75cc3feb06'),
(265, 104, 'spiegazione_modifica', 'SPIEGAZIONE MODIFICA'),
(266, 104, '_spiegazione_modifica', 'field_62c75d06feb07'),
(267, 104, 'tabella', 'gestiti'),
(268, 104, '_tabella', 'field_62c75d27feb08'),
(269, 105, '_edit_lock', '1657234679:1'),
(270, 105, '_edit_last', '1'),
(271, 105, '_wp_page_template', 'views/template-custom.blade.php'),
(272, 105, 'titolo', 'Sponsor'),
(273, 105, '_titolo', 'field_62c7273365743'),
(274, 105, 'immagine', ''),
(275, 105, '_immagine', 'field_62c7273765744'),
(276, 105, 'sottotitolo', 'tabella degli sponsor'),
(277, 105, '_sottotitolo', 'field_62c75cb5feb05'),
(278, 105, 'spiegazione_vista', 'spiegazione vista'),
(279, 105, '_spiegazione_vista', 'field_62c75cc3feb06'),
(280, 105, 'spiegazione_modifica', 'spiegazione modifica'),
(281, 105, '_spiegazione_modifica', 'field_62c75d06feb07'),
(282, 105, 'tabella', 'sponsor'),
(283, 105, '_tabella', 'field_62c75d27feb08'),
(284, 106, 'titolo', 'Sponsor'),
(285, 106, '_titolo', 'field_62c7273365743'),
(286, 106, 'immagine', ''),
(287, 106, '_immagine', 'field_62c7273765744'),
(288, 106, 'sottotitolo', 'tabella degli sponsor'),
(289, 106, '_sottotitolo', 'field_62c75cb5feb05'),
(290, 106, 'spiegazione_vista', 'spiegazione vista'),
(291, 106, '_spiegazione_vista', 'field_62c75cc3feb06'),
(292, 106, 'spiegazione_modifica', 'spiegazione modifica'),
(293, 106, '_spiegazione_modifica', 'field_62c75d06feb07'),
(294, 106, 'tabella', 'sponsor'),
(295, 106, '_tabella', 'field_62c75d27feb08'),
(297, 108, '_edit_lock', '1657360060:1'),
(298, 108, '_edit_last', '1'),
(299, 108, '_wp_page_template', 'views/template-custom.blade.php'),
(300, 108, 'titolo', 'Casi'),
(301, 108, '_titolo', 'field_62c7273365743'),
(302, 108, 'immagine', ''),
(303, 108, '_immagine', 'field_62c7273765744'),
(304, 108, 'sottotitolo', 'sottotitolo'),
(305, 108, '_sottotitolo', 'field_62c75cb5feb05'),
(306, 108, 'spiegazione_vista', 'spiegazione vista'),
(307, 108, '_spiegazione_vista', 'field_62c75cc3feb06'),
(308, 108, 'spiegazione_modifica', 'spiegazione modifica'),
(309, 108, '_spiegazione_modifica', 'field_62c75d06feb07'),
(310, 108, 'tabella', 'casi'),
(311, 108, '_tabella', 'field_62c75d27feb08'),
(312, 111, 'titolo', 'casi'),
(313, 111, '_titolo', 'field_62c7273365743'),
(314, 111, 'immagine', ''),
(315, 111, '_immagine', 'field_62c7273765744'),
(316, 111, 'sottotitolo', 'sottotitolo'),
(317, 111, '_sottotitolo', 'field_62c75cb5feb05'),
(318, 111, 'spiegazione_vista', 'spiegazione vista'),
(319, 111, '_spiegazione_vista', 'field_62c75cc3feb06'),
(320, 111, 'spiegazione_modifica', 'spiegazione modifica'),
(321, 111, '_spiegazione_modifica', 'field_62c75d06feb07'),
(322, 111, 'tabella', 'casi'),
(323, 111, '_tabella', 'field_62c75d27feb08'),
(324, 112, 'titolo', 'casi'),
(325, 112, '_titolo', 'field_62c7273365743'),
(326, 112, 'immagine', ''),
(327, 112, '_immagine', 'field_62c7273765744'),
(328, 112, 'sottotitolo', 'sottotitolo'),
(329, 112, '_sottotitolo', 'field_62c75cb5feb05'),
(330, 112, 'spiegazione_vista', 'spiegazione vista'),
(331, 112, '_spiegazione_vista', 'field_62c75cc3feb06'),
(332, 112, 'spiegazione_modifica', 'spiegazione modifica'),
(333, 112, '_spiegazione_modifica', 'field_62c75d06feb07'),
(334, 112, 'tabella', 'casi'),
(335, 112, '_tabella', 'field_62c75d27feb08'),
(336, 113, 'titolo', 'Casi'),
(337, 113, '_titolo', 'field_62c7273365743'),
(338, 113, 'immagine', ''),
(339, 113, '_immagine', 'field_62c7273765744'),
(340, 113, 'sottotitolo', 'sottotitolo'),
(341, 113, '_sottotitolo', 'field_62c75cb5feb05'),
(342, 113, 'spiegazione_vista', 'spiegazione vista'),
(343, 113, '_spiegazione_vista', 'field_62c75cc3feb06'),
(344, 113, 'spiegazione_modifica', 'spiegazione modifica'),
(345, 113, '_spiegazione_modifica', 'field_62c75d06feb07'),
(346, 113, 'tabella', 'casi'),
(347, 113, '_tabella', 'field_62c75d27feb08'),
(348, 109, '_edit_lock', '1657360112:1'),
(349, 110, '_edit_lock', '1657360179:1'),
(350, 109, '_edit_last', '1'),
(351, 109, '_wp_page_template', 'views/template-custom.blade.php'),
(352, 109, 'titolo', 'Stati'),
(353, 109, '_titolo', 'field_62c7273365743'),
(354, 109, 'immagine', ''),
(355, 109, '_immagine', 'field_62c7273765744'),
(356, 109, 'sottotitolo', 'sottotitolo'),
(357, 109, '_sottotitolo', 'field_62c75cb5feb05'),
(358, 109, 'spiegazione_vista', 'spiegazione vista'),
(359, 109, '_spiegazione_vista', 'field_62c75cc3feb06'),
(360, 109, 'spiegazione_modifica', 'spiegazione modifica'),
(361, 109, '_spiegazione_modifica', 'field_62c75d06feb07'),
(362, 109, 'tabella', 'stati'),
(363, 109, '_tabella', 'field_62c75d27feb08'),
(364, 114, 'titolo', 'Stati'),
(365, 114, '_titolo', 'field_62c7273365743'),
(366, 114, 'immagine', ''),
(367, 114, '_immagine', 'field_62c7273765744'),
(368, 114, 'sottotitolo', 'sottotitolo'),
(369, 114, '_sottotitolo', 'field_62c75cb5feb05'),
(370, 114, 'spiegazione_vista', 'spiegazione vista'),
(371, 114, '_spiegazione_vista', 'field_62c75cc3feb06'),
(372, 114, 'spiegazione_modifica', 'spiegazione modifica'),
(373, 114, '_spiegazione_modifica', 'field_62c75d06feb07'),
(374, 114, 'tabella', 'stati'),
(375, 114, '_tabella', 'field_62c75d27feb08'),
(376, 110, '_edit_last', '1'),
(377, 110, '_wp_page_template', 'views/template-custom.blade.php'),
(378, 110, 'titolo', 'Uffici'),
(379, 110, '_titolo', 'field_62c7273365743'),
(380, 110, 'immagine', ''),
(381, 110, '_immagine', 'field_62c7273765744'),
(382, 110, 'sottotitolo', 'sottotitolo'),
(383, 110, '_sottotitolo', 'field_62c75cb5feb05'),
(384, 110, 'spiegazione_vista', 'spiegazione vista'),
(385, 110, '_spiegazione_vista', 'field_62c75cc3feb06'),
(386, 110, 'spiegazione_modifica', 'spiegazione modifica'),
(387, 110, '_spiegazione_modifica', 'field_62c75d06feb07'),
(388, 110, 'tabella', 'uffici'),
(389, 110, '_tabella', 'field_62c75d27feb08'),
(390, 115, 'titolo', 'Uffici'),
(391, 115, '_titolo', 'field_62c7273365743'),
(392, 115, 'immagine', ''),
(393, 115, '_immagine', 'field_62c7273765744'),
(394, 115, 'sottotitolo', 'sottotitolo'),
(395, 115, '_sottotitolo', 'field_62c75cb5feb05'),
(396, 115, 'spiegazione_vista', 'spiegazione vista'),
(397, 115, '_spiegazione_vista', 'field_62c75cc3feb06'),
(398, 115, 'spiegazione_modifica', 'spiegazione modifica'),
(399, 115, '_spiegazione_modifica', 'field_62c75d06feb07'),
(400, 115, 'tabella', 'uffici'),
(401, 115, '_tabella', 'field_62c75d27feb08'),
(402, 117, '_edit_lock', '1657361541:1'),
(403, 117, '_edit_last', '1'),
(404, 117, '_wp_page_template', 'views/template-custom.blade.php'),
(405, 117, 'titolo', 'Spese cliente'),
(406, 117, '_titolo', 'field_62c7273365743'),
(407, 117, 'immagine', ''),
(408, 117, '_immagine', 'field_62c7273765744'),
(409, 117, 'sottotitolo', 'sottotitolo'),
(410, 117, '_sottotitolo', 'field_62c75cb5feb05'),
(411, 117, 'spiegazione_vista', 'spiegazione vista'),
(412, 117, '_spiegazione_vista', 'field_62c75cc3feb06'),
(413, 117, 'spiegazione_modifica', 'spiegazione modifica'),
(414, 117, '_spiegazione_modifica', 'field_62c75d06feb07'),
(415, 117, 'tabella', 'spese'),
(416, 117, '_tabella', 'field_62c75d27feb08'),
(417, 118, 'titolo', 'Spese cliente'),
(418, 118, '_titolo', 'field_62c7273365743'),
(419, 118, 'immagine', ''),
(420, 118, '_immagine', 'field_62c7273765744'),
(421, 118, 'sottotitolo', 'sottotitolo'),
(422, 118, '_sottotitolo', 'field_62c75cb5feb05'),
(423, 118, 'spiegazione_vista', 'spiegazione vista'),
(424, 118, '_spiegazione_vista', 'field_62c75cc3feb06'),
(425, 118, 'spiegazione_modifica', 'spiegazione modifica'),
(426, 118, '_spiegazione_modifica', 'field_62c75d06feb07'),
(427, 118, 'tabella', 'spese'),
(428, 118, '_tabella', 'field_62c75d27feb08'),
(429, 102, '_wp_trash_meta_status', 'publish'),
(430, 102, '_wp_trash_meta_time', '1657449228'),
(431, 102, '_wp_desired_post_slug', 'gestiti'),
(432, 117, '_wp_trash_meta_status', 'publish'),
(433, 117, '_wp_trash_meta_time', '1657449233'),
(434, 117, '_wp_desired_post_slug', 'spese'),
(435, 119, '_edit_lock', '1657449269:1'),
(436, 119, '_edit_last', '1'),
(437, 119, '_wp_page_template', 'views/template-custom.blade.php'),
(438, 119, 'titolo', 'Pagamenti utilizzabili'),
(439, 119, '_titolo', 'field_62c7273365743'),
(440, 119, 'immagine', ''),
(441, 119, '_immagine', 'field_62c7273765744'),
(442, 119, 'sottotitolo', 'sottotitolo'),
(443, 119, '_sottotitolo', 'field_62c75cb5feb05'),
(444, 119, 'spiegazione_vista', 'spiegazione vista'),
(445, 119, '_spiegazione_vista', 'field_62c75cc3feb06'),
(446, 119, 'spiegazione_modifica', 'spiegazione modifica'),
(447, 119, '_spiegazione_modifica', 'field_62c75d06feb07'),
(448, 119, 'tabella', 'metodi_pagamento'),
(449, 119, '_tabella', 'field_62c75d27feb08'),
(450, 120, 'titolo', 'Pagamenti utilizzabili'),
(451, 120, '_titolo', 'field_62c7273365743'),
(452, 120, 'immagine', ''),
(453, 120, '_immagine', 'field_62c7273765744'),
(454, 120, 'sottotitolo', 'sottotitolo'),
(455, 120, '_sottotitolo', 'field_62c75cb5feb05'),
(456, 120, 'spiegazione_vista', 'spiegazione vista'),
(457, 120, '_spiegazione_vista', 'field_62c75cc3feb06'),
(458, 120, 'spiegazione_modifica', 'spiegazione modifica'),
(459, 120, '_spiegazione_modifica', 'field_62c75d06feb07'),
(460, 120, 'tabella', 'metodi_pagamento'),
(461, 120, '_tabella', 'field_62c75d27feb08'),
(462, 121, '_edit_lock', '1657574996:1'),
(463, 121, '_edit_last', '1'),
(464, 121, '_wp_page_template', 'views/template-custom.blade.php'),
(465, 121, 'titolo', 'Referenti'),
(466, 121, '_titolo', 'field_62c7273365743'),
(467, 121, 'immagine', ''),
(468, 121, '_immagine', 'field_62c7273765744'),
(469, 121, 'sottotitolo', 'sottotitolo'),
(470, 121, '_sottotitolo', 'field_62c75cb5feb05'),
(471, 121, 'spiegazione_vista', 'spiegazione vista'),
(472, 121, '_spiegazione_vista', 'field_62c75cc3feb06'),
(473, 121, 'spiegazione_modifica', 'spiegazione modifica'),
(474, 121, '_spiegazione_modifica', 'field_62c75d06feb07'),
(475, 121, 'tabella', 'referenti'),
(476, 121, '_tabella', 'field_62c75d27feb08'),
(477, 122, 'titolo', 'Referenti'),
(478, 122, '_titolo', 'field_62c7273365743'),
(479, 122, 'immagine', ''),
(480, 122, '_immagine', 'field_62c7273765744'),
(481, 122, 'sottotitolo', 'sottotitolo'),
(482, 122, '_sottotitolo', 'field_62c75cb5feb05'),
(483, 122, 'spiegazione_vista', 'spiegazione vista'),
(484, 122, '_spiegazione_vista', 'field_62c75cc3feb06'),
(485, 122, 'spiegazione_modifica', 'spiegazione modifica'),
(486, 122, '_spiegazione_modifica', 'field_62c75d06feb07'),
(487, 122, 'tabella', 'referenti'),
(488, 122, '_tabella', 'field_62c75d27feb08'),
(489, 123, '_edit_lock', '1657622386:1'),
(490, 123, '_edit_last', '1'),
(491, 123, '_wp_page_template', 'views/template-custom.blade.php'),
(492, 123, 'titolo', 'Specialisti'),
(493, 123, '_titolo', 'field_62c7273365743'),
(494, 123, 'immagine', ''),
(495, 123, '_immagine', 'field_62c7273765744'),
(496, 123, 'sottotitolo', 'sottotitolo'),
(497, 123, '_sottotitolo', 'field_62c75cb5feb05'),
(498, 123, 'spiegazione_vista', 'spiegazione vista'),
(499, 123, '_spiegazione_vista', 'field_62c75cc3feb06'),
(500, 123, 'spiegazione_modifica', 'spiegazione modifica'),
(501, 123, '_spiegazione_modifica', 'field_62c75d06feb07'),
(502, 123, 'tabella', 'specialisti'),
(503, 123, '_tabella', 'field_62c75d27feb08'),
(504, 124, 'titolo', 'Specialisti'),
(505, 124, '_titolo', 'field_62c7273365743'),
(506, 124, 'immagine', ''),
(507, 124, '_immagine', 'field_62c7273765744'),
(508, 124, 'sottotitolo', 'sottotitolo'),
(509, 124, '_sottotitolo', 'field_62c75cb5feb05'),
(510, 124, 'spiegazione_vista', 'spiegazione vista'),
(511, 124, '_spiegazione_vista', 'field_62c75cc3feb06'),
(512, 124, 'spiegazione_modifica', 'spiegazione modifica'),
(513, 124, '_spiegazione_modifica', 'field_62c75d06feb07'),
(514, 124, 'tabella', 'specialisti'),
(515, 124, '_tabella', 'field_62c75d27feb08'),
(516, 125, '_edit_lock', '1657631522:1'),
(517, 125, '_edit_last', '1'),
(518, 125, '_wp_page_template', 'views/template-custom.blade.php'),
(519, 125, 'titolo', 'Fascicoli'),
(520, 125, '_titolo', 'field_62c7273365743'),
(521, 125, 'immagine', ''),
(522, 125, '_immagine', 'field_62c7273765744'),
(523, 125, 'sottotitolo', 'sottotitolo'),
(524, 125, '_sottotitolo', 'field_62c75cb5feb05'),
(525, 125, 'spiegazione_vista', 'spiegazione vista'),
(526, 125, '_spiegazione_vista', 'field_62c75cc3feb06'),
(527, 125, 'spiegazione_modifica', 'spiegazione modifica'),
(528, 125, '_spiegazione_modifica', 'field_62c75d06feb07'),
(529, 125, 'tabella', 'fascicoli'),
(530, 125, '_tabella', 'field_62c75d27feb08'),
(531, 126, 'titolo', 'Fascicoli'),
(532, 126, '_titolo', 'field_62c7273365743'),
(533, 126, 'immagine', ''),
(534, 126, '_immagine', 'field_62c7273765744'),
(535, 126, 'sottotitolo', 'sottotitolo'),
(536, 126, '_sottotitolo', 'field_62c75cb5feb05'),
(537, 126, 'spiegazione_vista', 'spiegazione vista'),
(538, 126, '_spiegazione_vista', 'field_62c75cc3feb06'),
(539, 126, 'spiegazione_modifica', 'spiegazione modifica'),
(540, 126, '_spiegazione_modifica', 'field_62c75d06feb07'),
(541, 126, 'tabella', 'fascicoli'),
(542, 126, '_tabella', 'field_62c75d27feb08'),
(543, 128, '_edit_lock', '1657788728:1'),
(544, 128, '_edit_last', '1'),
(545, 128, '_wp_page_template', 'views/template-single-referente.blade.php'),
(547, 128, 'titolo', 'Referente singolo'),
(548, 128, '_titolo', 'field_62c7273365743'),
(549, 128, 'immagine', ''),
(550, 128, '_immagine', 'field_62c7273765744'),
(551, 128, 'sottotitolo', 'sottotitolo'),
(552, 128, '_sottotitolo', 'field_62c75cb5feb05'),
(553, 128, 'spiegazione_vista', 'spiegazione vista'),
(554, 128, '_spiegazione_vista', 'field_62c75cc3feb06'),
(555, 128, 'spiegazione_modifica', 'spiegazione modifica'),
(556, 128, '_spiegazione_modifica', 'field_62c75d06feb07'),
(557, 128, 'tabella', ''),
(558, 128, '_tabella', 'field_62c75d27feb08'),
(559, 131, 'titolo', 'Referente singolo'),
(560, 131, '_titolo', 'field_62c7273365743'),
(561, 131, 'immagine', ''),
(562, 131, '_immagine', 'field_62c7273765744'),
(563, 131, 'sottotitolo', 'sottotitolo'),
(564, 131, '_sottotitolo', 'field_62c75cb5feb05'),
(565, 131, 'spiegazione_vista', 'spiegazione vista'),
(566, 131, '_spiegazione_vista', 'field_62c75cc3feb06'),
(567, 131, 'spiegazione_modifica', 'spiegazione modifica'),
(568, 131, '_spiegazione_modifica', 'field_62c75d06feb07'),
(569, 131, 'tabella', ''),
(570, 131, '_tabella', 'field_62c75d27feb08'),
(571, 132, '_edit_last', '1'),
(572, 132, '_wp_page_template', 'views/template-single-fascicolo.blade.php'),
(573, 132, '_edit_lock', '1658336068:1'),
(574, 132, 'titolo', 'Fascicolo singolo'),
(575, 132, '_titolo', 'field_62c7273365743'),
(576, 132, 'immagine', ''),
(577, 132, '_immagine', 'field_62c7273765744'),
(578, 132, 'sottotitolo', 'sottotitolo'),
(579, 132, '_sottotitolo', 'field_62c75cb5feb05'),
(580, 132, 'spiegazione_vista', 'spiegazione vista'),
(581, 132, '_spiegazione_vista', 'field_62c75cc3feb06'),
(582, 132, 'spiegazione_modifica', 'spiegazione modifica'),
(583, 132, '_spiegazione_modifica', 'field_62c75d06feb07'),
(584, 132, 'tabella', ''),
(585, 132, '_tabella', 'field_62c75d27feb08'),
(586, 133, 'titolo', ''),
(587, 133, '_titolo', 'field_62c7273365743'),
(588, 133, 'immagine', ''),
(589, 133, '_immagine', 'field_62c7273765744'),
(590, 133, 'sottotitolo', ''),
(591, 133, '_sottotitolo', 'field_62c75cb5feb05'),
(592, 133, 'spiegazione_vista', ''),
(593, 133, '_spiegazione_vista', 'field_62c75cc3feb06'),
(594, 133, 'spiegazione_modifica', ''),
(595, 133, '_spiegazione_modifica', 'field_62c75d06feb07'),
(596, 133, 'tabella', ''),
(597, 133, '_tabella', 'field_62c75d27feb08'),
(598, 134, 'titolo', 'Fascicolo singolo'),
(599, 134, '_titolo', 'field_62c7273365743'),
(600, 134, 'immagine', ''),
(601, 134, '_immagine', 'field_62c7273765744'),
(602, 134, 'sottotitolo', 'sottotitolo'),
(603, 134, '_sottotitolo', 'field_62c75cb5feb05'),
(604, 134, 'spiegazione_vista', 'spiegazione vista'),
(605, 134, '_spiegazione_vista', 'field_62c75cc3feb06'),
(606, 134, 'spiegazione_modifica', 'spiegazione modifica'),
(607, 134, '_spiegazione_modifica', 'field_62c75d06feb07'),
(608, 134, 'tabella', ''),
(609, 134, '_tabella', 'field_62c75d27feb08'),
(610, 135, '_edit_lock', '1657846673:1'),
(611, 136, '_edit_lock', '1657847432:1'),
(612, 136, '_edit_last', '1'),
(613, 136, '_wp_page_template', 'views/template-single-pagamento.blade.php'),
(614, 136, 'titolo', 'Rate del singolo pagamento'),
(615, 136, '_titolo', 'field_62c7273365743'),
(616, 136, 'immagine', ''),
(617, 136, '_immagine', 'field_62c7273765744'),
(618, 136, 'sottotitolo', 'sottotitolo'),
(619, 136, '_sottotitolo', 'field_62c75cb5feb05'),
(620, 136, 'spiegazione_vista', 'spiegazione vista'),
(621, 136, '_spiegazione_vista', 'field_62c75cc3feb06'),
(622, 136, 'spiegazione_modifica', 'spiegazione modifica'),
(623, 136, '_spiegazione_modifica', 'field_62c75d06feb07'),
(624, 136, 'tabella', ''),
(625, 136, '_tabella', 'field_62c75d27feb08'),
(626, 137, 'titolo', 'Rate del singolo pagamento'),
(627, 137, '_titolo', 'field_62c7273365743'),
(628, 137, 'immagine', ''),
(629, 137, '_immagine', 'field_62c7273765744'),
(630, 137, 'sottotitolo', 'sottotitolo'),
(631, 137, '_sottotitolo', 'field_62c75cb5feb05'),
(632, 137, 'spiegazione_vista', 'spiegazione vista'),
(633, 137, '_spiegazione_vista', 'field_62c75cc3feb06'),
(634, 137, 'spiegazione_modifica', 'spiegazione modifica'),
(635, 137, '_spiegazione_modifica', 'field_62c75d06feb07'),
(636, 137, 'tabella', ''),
(637, 137, '_tabella', 'field_62c75d27feb08'),
(638, 138, 'titolo', 'Rate del singolo pagamento'),
(639, 138, '_titolo', 'field_62c7273365743'),
(640, 138, 'immagine', ''),
(641, 138, '_immagine', 'field_62c7273765744'),
(642, 138, 'sottotitolo', 'sottotitolo'),
(643, 138, '_sottotitolo', 'field_62c75cb5feb05'),
(644, 138, 'spiegazione_vista', 'spiegazione vista'),
(645, 138, '_spiegazione_vista', 'field_62c75cc3feb06'),
(646, 138, 'spiegazione_modifica', 'spiegazione modifica'),
(647, 138, '_spiegazione_modifica', 'field_62c75d06feb07'),
(648, 138, 'tabella', ''),
(649, 138, '_tabella', 'field_62c75d27feb08'),
(650, 139, '_edit_lock', '1657849282:1'),
(651, 139, '_edit_last', '1'),
(652, 139, '_wp_page_template', 'views/template-single-rata.blade.php'),
(653, 139, 'titolo', 'Lista acconti della singola rata'),
(654, 139, '_titolo', 'field_62c7273365743'),
(655, 139, 'immagine', ''),
(656, 139, '_immagine', 'field_62c7273765744'),
(657, 139, 'sottotitolo', 'sottotitolo'),
(658, 139, '_sottotitolo', 'field_62c75cb5feb05'),
(659, 139, 'spiegazione_vista', 'spiegazione vista'),
(660, 139, '_spiegazione_vista', 'field_62c75cc3feb06'),
(661, 139, 'spiegazione_modifica', 'spiegazione modifica'),
(662, 139, '_spiegazione_modifica', 'field_62c75d06feb07'),
(663, 139, 'tabella', ''),
(664, 139, '_tabella', 'field_62c75d27feb08'),
(665, 140, 'titolo', 'Lista acconti della singola rata'),
(666, 140, '_titolo', 'field_62c7273365743'),
(667, 140, 'immagine', ''),
(668, 140, '_immagine', 'field_62c7273765744'),
(669, 140, 'sottotitolo', 'sottotitolo'),
(670, 140, '_sottotitolo', 'field_62c75cb5feb05'),
(671, 140, 'spiegazione_vista', 'spiegazione vista'),
(672, 140, '_spiegazione_vista', 'field_62c75cc3feb06'),
(673, 140, 'spiegazione_modifica', 'spiegazione modifica'),
(674, 140, '_spiegazione_modifica', 'field_62c75d06feb07'),
(675, 140, 'tabella', ''),
(676, 140, '_tabella', 'field_62c75d27feb08'),
(677, 141, '_edit_lock', '1657853343:1'),
(678, 142, '_edit_last', '1'),
(679, 142, '_wp_page_template', 'views/template-single-specialista.blade.php'),
(680, 142, '_edit_lock', '1657854071:1'),
(681, 142, 'titolo', 'Pagina del singolo specialista'),
(682, 142, '_titolo', 'field_62c7273365743'),
(683, 142, 'immagine', ''),
(684, 142, '_immagine', 'field_62c7273765744'),
(685, 142, 'sottotitolo', 'sottotitolo'),
(686, 142, '_sottotitolo', 'field_62c75cb5feb05'),
(687, 142, 'spiegazione_vista', 'spiegazione vista'),
(688, 142, '_spiegazione_vista', 'field_62c75cc3feb06'),
(689, 142, 'spiegazione_modifica', 'spiegazione modifica'),
(690, 142, '_spiegazione_modifica', 'field_62c75d06feb07'),
(691, 142, 'tabella', ''),
(692, 142, '_tabella', 'field_62c75d27feb08'),
(693, 144, 'titolo', 'Pagina del singolo specialista'),
(694, 144, '_titolo', 'field_62c7273365743'),
(695, 144, 'immagine', ''),
(696, 144, '_immagine', 'field_62c7273765744'),
(697, 144, 'sottotitolo', 'sottotitolo'),
(698, 144, '_sottotitolo', 'field_62c75cb5feb05'),
(699, 144, 'spiegazione_vista', 'spiegazione vista'),
(700, 144, '_spiegazione_vista', 'field_62c75cc3feb06'),
(701, 144, 'spiegazione_modifica', 'spiegazione modifica'),
(702, 144, '_spiegazione_modifica', 'field_62c75d06feb07'),
(703, 144, 'tabella', ''),
(704, 144, '_tabella', 'field_62c75d27feb08');

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_posts`
--

CREATE TABLE `evo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_posts`
--

INSERT INTO `evo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2022-06-21 14:13:43', '2022-06-21 14:13:43', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-06-21 14:13:43', '2022-06-21 14:13:43', '', 0, 'https://evolvetest.it/?p=5', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-06-21 14:21:53', '2022-06-21 14:21:53', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-my-theme', '', '', '2022-06-21 14:21:53', '2022-06-21 14:21:53', '', 0, 'https://evolvetest.it/?p=11', 0, 'wp_global_styles', '', 0),
(23, 2, '2022-06-21 14:49:06', '2022-06-21 14:49:06', '<label> Il tuo nome\n    [text* your-name] </label>\n\n<label> La tua email\n    [email* your-email] </label>\n\n<label> Oggetto\n    [text* your-subject] </label>\n\n<label> Il tuo messaggio (facoltativo)\n    [textarea your-message] </label>\n\n[submit \"Invia\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@evolvetest.it>\nDa: [your-name] <[your-email]>\nOggetto: [your-subject]\n\nCorpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@evolvetest.it>\nCorpo del messaggio:\n[your-message]\n\n-- \nQuesta e-mail è stata inviata da un modulo di contatto su [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nGrazie per il tuo messaggio. È stato inviato.\nSi è verificato un errore durante l\'invio del tuo messaggio. Riprova più tardi.\nUno o più campi hanno degli errori. Controlla e riprova.\nSi è verificato un errore durante l\'invio del tuo messaggio. Riprova più tardi.\nDevi accettare termini e condizioni prima di inviare il tuo messaggio.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nSi è verificato un errore sconosciuto durante il caricamento del file.\nNon sei abilitato al caricamento di file di questo tipo.\nThe uploaded file is too large.\nSi è verificato un errore durante il caricamento del file.', 'Modulo di contatto 1', '', 'publish', 'closed', 'closed', '', 'modulo-di-contatto-1', '', '', '2022-06-21 14:49:06', '2022-06-21 14:49:06', '', 0, 'https://evolvetest.it/?post_type=wpcf7_contact_form&p=23', 0, 'wpcf7_contact_form', '', 0),
(46, 1, '2022-07-05 10:40:03', '2022-07-05 10:40:03', '', 'allegati', '', 'trash', 'closed', 'closed', '', 'allegati__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=46', 0, 'page', '', 0),
(47, 1, '2022-07-05 10:40:03', '2022-07-05 10:40:03', '', 'allegati', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-07-05 10:40:03', '2022-07-05 10:40:03', '', 46, 'https://evolvetest.it/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-07-05 10:40:09', '2022-07-05 10:40:09', '', 'appuntamenti', '', 'trash', 'closed', 'closed', '', 'appuntamenti__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=48', 0, 'page', '', 0),
(49, 1, '2022-07-05 10:40:09', '2022-07-05 10:40:09', '', 'appuntamenti', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2022-07-05 10:40:09', '2022-07-05 10:40:09', '', 48, 'https://evolvetest.it/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-07-05 10:40:15', '2022-07-05 10:40:15', '', 'caso', '', 'trash', 'closed', 'closed', '', 'caso__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=50', 0, 'page', '', 0),
(51, 1, '2022-07-05 10:40:15', '2022-07-05 10:40:15', '', 'caso', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-07-05 10:40:15', '2022-07-05 10:40:15', '', 50, 'https://evolvetest.it/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-07-05 10:40:25', '2022-07-05 10:40:25', '', 'chiamata', '', 'trash', 'closed', 'closed', '', 'chiamata__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=52', 0, 'page', '', 0),
(53, 1, '2022-07-05 10:40:25', '2022-07-05 10:40:25', '', 'chiamata', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2022-07-05 10:40:25', '2022-07-05 10:40:25', '', 52, 'https://evolvetest.it/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-07-05 10:40:35', '2022-07-05 10:40:35', '', 'fascicolo', '', 'trash', 'closed', 'closed', '', 'fascicolo__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=54', 0, 'page', '', 0),
(55, 1, '2022-07-05 10:40:35', '2022-07-05 10:40:35', '', 'fascicolo', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2022-07-05 10:40:35', '2022-07-05 10:40:35', '', 54, 'https://evolvetest.it/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-07-05 10:40:58', '2022-07-05 10:40:58', '', 'fascicolo_s', '', 'trash', 'closed', 'closed', '', 'fascicolo_s__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=56', 0, 'page', '', 0),
(57, 1, '2022-07-05 10:40:58', '2022-07-05 10:40:58', '', 'fascicolo_s', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-07-05 10:40:58', '2022-07-05 10:40:58', '', 56, 'https://evolvetest.it/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-07-05 10:41:06', '2022-07-05 10:41:06', '', 'gestito', '', 'trash', 'closed', 'closed', '', 'gestito__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=58', 0, 'page', '', 0),
(59, 1, '2022-07-05 10:41:06', '2022-07-05 10:41:06', '', 'gestito', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2022-07-05 10:41:06', '2022-07-05 10:41:06', '', 58, 'https://evolvetest.it/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-07-05 10:41:15', '2022-07-05 10:41:15', '', 'metodo_p', '', 'trash', 'closed', 'closed', '', 'metodo_p__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=60', 0, 'page', '', 0),
(61, 1, '2022-07-05 10:41:15', '2022-07-05 10:41:15', '', 'metodo_p', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2022-07-05 10:41:15', '2022-07-05 10:41:15', '', 60, 'https://evolvetest.it/?p=61', 0, 'revision', '', 0),
(62, 1, '2022-07-05 10:41:22', '2022-07-05 10:41:22', '', 'pagamento', '', 'trash', 'closed', 'closed', '', 'pagamento__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=62', 0, 'page', '', 0),
(63, 1, '2022-07-05 10:41:22', '2022-07-05 10:41:22', '', 'pagamento', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2022-07-05 10:41:22', '2022-07-05 10:41:22', '', 62, 'https://evolvetest.it/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-07-05 10:41:31', '2022-07-05 10:41:31', '', 'prospective', '', 'trash', 'closed', 'closed', '', 'prospective__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=64', 0, 'page', '', 0),
(65, 1, '2022-07-05 10:41:31', '2022-07-05 10:41:31', '', 'prospective', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2022-07-05 10:41:31', '2022-07-05 10:41:31', '', 64, 'https://evolvetest.it/?p=65', 0, 'revision', '', 0),
(66, 1, '2022-07-05 10:41:37', '2022-07-05 10:41:37', '', 'rata', '', 'trash', 'closed', 'closed', '', 'rata__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=66', 0, 'page', '', 0),
(67, 1, '2022-07-05 10:41:37', '2022-07-05 10:41:37', '', 'rata', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2022-07-05 10:41:37', '2022-07-05 10:41:37', '', 66, 'https://evolvetest.it/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-07-05 10:41:43', '2022-07-05 10:41:43', '', 'referente', '', 'trash', 'closed', 'closed', '', 'referente__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=68', 0, 'page', '', 0),
(69, 1, '2022-07-05 10:41:43', '2022-07-05 10:41:43', '', 'referente', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2022-07-05 10:41:43', '2022-07-05 10:41:43', '', 68, 'https://evolvetest.it/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-07-05 10:41:49', '2022-07-05 10:41:49', '', 'specialista', '', 'trash', 'closed', 'closed', '', 'specialista__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=70', 0, 'page', '', 0),
(71, 1, '2022-07-05 10:41:49', '2022-07-05 10:41:49', '', 'specialista', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2022-07-05 10:41:49', '2022-07-05 10:41:49', '', 70, 'https://evolvetest.it/?p=71', 0, 'revision', '', 0),
(72, 1, '2022-07-05 10:41:55', '2022-07-05 10:41:55', '', 'spese', '', 'trash', 'closed', 'closed', '', 'spese__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=72', 0, 'page', '', 0),
(73, 1, '2022-07-05 10:41:55', '2022-07-05 10:41:55', '', 'spese', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2022-07-05 10:41:55', '2022-07-05 10:41:55', '', 72, 'https://evolvetest.it/?p=73', 0, 'revision', '', 0),
(74, 1, '2022-07-05 10:42:05', '2022-07-05 10:42:05', '', 'sponsor', '', 'trash', 'closed', 'closed', '', 'sponsor__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=74', 0, 'page', '', 0),
(75, 1, '2022-07-05 10:42:05', '2022-07-05 10:42:05', '', 'sponsor', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2022-07-05 10:42:05', '2022-07-05 10:42:05', '', 74, 'https://evolvetest.it/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-07-05 10:42:11', '2022-07-05 10:42:11', '', 'stato', '', 'trash', 'closed', 'closed', '', 'stato__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=76', 0, 'page', '', 0),
(77, 1, '2022-07-05 10:42:11', '2022-07-05 10:42:11', '', 'stato', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2022-07-05 10:42:11', '2022-07-05 10:42:11', '', 76, 'https://evolvetest.it/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-07-05 10:42:17', '2022-07-05 10:42:17', '', 'ufficio', '', 'trash', 'closed', 'closed', '', 'ufficio__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=78', 0, 'page', '', 0),
(79, 1, '2022-07-05 10:42:17', '2022-07-05 10:42:17', '', 'ufficio', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2022-07-05 10:42:17', '2022-07-05 10:42:17', '', 78, 'https://evolvetest.it/?p=79', 0, 'revision', '', 0),
(80, 1, '2022-07-05 10:42:34', '2022-07-05 10:42:34', '<!-- wp:paragraph -->\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n<!-- /wp:paragraph -->', 'home-page', '', 'trash', 'closed', 'closed', '', 'home-page__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=80', 0, 'page', '', 0),
(81, 1, '2022-07-05 10:42:34', '2022-07-05 10:42:34', '', 'home-page', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2022-07-05 10:42:34', '2022-07-05 10:42:34', '', 80, 'https://evolvetest.it/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-07-05 12:14:55', '2022-07-05 12:14:55', '<!-- wp:paragraph -->\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n<!-- /wp:paragraph -->', 'home-page', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2022-07-05 12:14:55', '2022-07-05 12:14:55', '', 80, 'https://evolvetest.it/?p=82', 0, 'revision', '', 0),
(83, 1, '2022-07-06 07:20:45', '2022-07-06 07:20:45', '', 'acconto', '', 'trash', 'closed', 'closed', '', 'acconto__trashed', '', '', '2022-07-07 07:29:38', '2022-07-07 07:29:38', '', 0, 'https://evolvetest.it/?page_id=83', 0, 'page', '', 0),
(84, 1, '2022-07-06 07:20:45', '2022-07-06 07:20:45', '', 'acconto', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2022-07-06 07:20:45', '2022-07-06 07:20:45', '', 83, 'https://evolvetest.it/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-07-07 19:05:47', '2022-07-07 19:05:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-07-07 22:21:36', '2022-07-07 22:21:36', '', 0, 'https://ica.test/?page_id=85', 0, 'page', '', 0),
(86, 1, '2022-07-07 18:33:56', '2022-07-07 18:33:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-07-07 18:33:56', '2022-07-07 18:33:56', '', 85, 'https://ica.test/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-07-07 18:47:16', '2022-07-07 18:47:16', 'a:8:{s:8:\"location\";a:7:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"views/template-custom.blade.php\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:41:\"views/template-single-referente.blade.php\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:41:\"views/template-single-fascicolo.blade.php\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:41:\"views/template-single-pagamento.blade.php\";}}i:5;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:36:\"views/template-single-rata.blade.php\";}}i:6;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:43:\"views/template-single-specialista.blade.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:4:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:6:\"author\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'page content', 'page-content', 'publish', 'closed', 'closed', '', 'group_62c7271fe410a', '', '', '2022-07-15 02:49:41', '2022-07-15 02:49:41', '', 0, 'https://ica.test/?post_type=acf-field-group&#038;p=87', 0, 'acf-field-group', '', 0),
(88, 1, '2022-07-07 18:47:16', '2022-07-07 18:47:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titolo', 'titolo', 'publish', 'closed', 'closed', '', 'field_62c7273365743', '', '', '2022-07-07 18:47:16', '2022-07-07 18:47:16', '', 87, 'https://ica.test/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2022-07-07 18:47:16', '2022-07-07 18:47:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Immagine', 'immagine', 'publish', 'closed', 'closed', '', 'field_62c7273765744', '', '', '2022-07-07 18:47:16', '2022-07-07 18:47:16', '', 87, 'https://ica.test/?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2022-07-07 19:07:48', '2022-07-07 19:07:48', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-07 19:07:48\"\n    },\n    \"page_on_front\": {\n        \"value\": \"85\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-07 19:07:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7b3cf1cd-bd09-442a-889b-5c5700455fcb', '', '', '2022-07-07 19:07:48', '2022-07-07 19:07:48', '', 0, 'https://ica.test/2022/07/07/7b3cf1cd-bd09-442a-889b-5c5700455fcb/', 0, 'customize_changeset', '', 0),
(92, 1, '2022-07-07 21:15:08', '2022-07-07 21:15:08', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"sidebar-primary\": [],\n            \"sidebar-footer\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-07 21:15:08\"\n    },\n    \"sage_2/resources::nav_menu_locations[primary_navigation]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-07 21:15:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2798503-9d58-4022-856e-a87d51c7f3d8', '', '', '2022-07-07 21:15:08', '2022-07-07 21:15:08', '', 0, 'https://ica.test/2022/07/07/f2798503-9d58-4022-856e-a87d51c7f3d8/', 0, 'customize_changeset', '', 0),
(93, 1, '2022-07-07 21:16:20', '2022-07-07 21:16:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-07-07 21:16:20', '2022-07-07 21:16:20', '', 85, 'https://ica.test/?p=93', 0, 'revision', '', 0),
(94, 1, '2022-07-07 22:20:46', '2022-07-07 22:20:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-07-07 22:20:46', '2022-07-07 22:20:46', '', 85, 'https://ica.test/?p=94', 0, 'revision', '', 0),
(95, 1, '2022-07-07 22:21:36', '2022-07-07 22:21:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-07-07 22:21:36', '2022-07-07 22:21:36', '', 85, 'https://ica.test/?p=95', 0, 'revision', '', 0),
(97, 1, '2022-07-07 22:46:45', '2022-07-07 22:46:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sottotitolo', 'sottotitolo', 'publish', 'closed', 'closed', '', 'field_62c75cb5feb05', '', '', '2022-07-07 22:46:45', '2022-07-07 22:46:45', '', 87, 'https://ica.test/?post_type=acf-field&p=97', 2, 'acf-field', '', 0),
(98, 1, '2022-07-07 22:46:45', '2022-07-07 22:46:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Spiegazione vista', 'spiegazione_vista', 'publish', 'closed', 'closed', '', 'field_62c75cc3feb06', '', '', '2022-07-07 22:46:45', '2022-07-07 22:46:45', '', 87, 'https://ica.test/?post_type=acf-field&p=98', 3, 'acf-field', '', 0),
(99, 1, '2022-07-07 22:46:45', '2022-07-07 22:46:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Spiegazione modifica', 'spiegazione_modifica', 'publish', 'closed', 'closed', '', 'field_62c75d06feb07', '', '', '2022-07-07 22:46:45', '2022-07-07 22:46:45', '', 87, 'https://ica.test/?post_type=acf-field&p=99', 4, 'acf-field', '', 0),
(100, 1, '2022-07-07 22:46:45', '2022-07-07 22:46:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"nome del file contenente la tabella in tables, senza estensioni\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tabella', 'tabella', 'publish', 'closed', 'closed', '', 'field_62c75d27feb08', '', '', '2022-07-07 22:52:02', '2022-07-07 22:52:02', '', 87, 'https://ica.test/?post_type=acf-field&#038;p=100', 5, 'acf-field', '', 0),
(102, 1, '2022-07-07 22:48:40', '2022-07-07 22:48:40', '', 'gestiti', '', 'trash', 'closed', 'closed', '', 'gestiti__trashed', '', '', '2022-07-10 10:33:48', '2022-07-10 10:33:48', '', 0, 'https://ica.test/?page_id=102', 0, 'page', '', 0),
(103, 1, '2022-07-07 22:48:40', '2022-07-07 22:48:40', '', 'gestiti', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-07-07 22:48:40', '2022-07-07 22:48:40', '', 102, 'https://ica.test/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-07-07 22:51:36', '2022-07-07 22:51:36', '', 'gestiti', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2022-07-07 22:51:36', '2022-07-07 22:51:36', '', 102, 'https://ica.test/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-07-07 22:58:36', '2022-07-07 22:58:36', '', 'sponsor', '', 'publish', 'closed', 'closed', '', 'sponsor', '', '', '2022-07-07 22:58:36', '2022-07-07 22:58:36', '', 0, 'https://ica.test/?page_id=105', 0, 'page', '', 0),
(106, 1, '2022-07-07 22:58:36', '2022-07-07 22:58:36', '', 'sponsor', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2022-07-07 22:58:36', '2022-07-07 22:58:36', '', 105, 'https://ica.test/?p=106', 0, 'revision', '', 0),
(108, 1, '2022-07-09 09:49:09', '2022-07-09 09:49:09', '', 'casi', '', 'publish', 'closed', 'closed', '', 'casi', '', '', '2022-07-09 09:49:45', '2022-07-09 09:49:45', '', 0, 'https://ica.test/?page_id=108', 0, 'page', '', 0),
(109, 1, '2022-07-09 09:50:53', '2022-07-09 09:50:53', '', 'stati', '', 'publish', 'closed', 'closed', '', 'stati', '', '', '2022-07-09 09:50:53', '2022-07-09 09:50:53', '', 0, 'https://ica.test/?page_id=109', 0, 'page', '', 0),
(110, 1, '2022-07-09 09:51:36', '2022-07-09 09:51:36', '', 'uffici', '', 'publish', 'closed', 'closed', '', 'uffici', '', '', '2022-07-09 09:52:02', '2022-07-09 09:52:02', '', 0, 'https://ica.test/?page_id=110', 0, 'page', '', 0),
(111, 1, '2022-07-09 09:49:09', '2022-07-09 09:49:09', '', '', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2022-07-09 09:49:09', '2022-07-09 09:49:09', '', 108, 'https://ica.test/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-07-09 09:49:20', '2022-07-09 09:49:20', '', 'casi', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2022-07-09 09:49:20', '2022-07-09 09:49:20', '', 108, 'https://ica.test/?p=112', 0, 'revision', '', 0),
(113, 1, '2022-07-09 09:49:45', '2022-07-09 09:49:45', '', 'casi', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2022-07-09 09:49:45', '2022-07-09 09:49:45', '', 108, 'https://ica.test/?p=113', 0, 'revision', '', 0),
(114, 1, '2022-07-09 09:50:53', '2022-07-09 09:50:53', '', 'stati', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-07-09 09:50:53', '2022-07-09 09:50:53', '', 109, 'https://ica.test/?p=114', 0, 'revision', '', 0),
(115, 1, '2022-07-09 09:51:36', '2022-07-09 09:51:36', '', 'uffici', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2022-07-09 09:51:36', '2022-07-09 09:51:36', '', 110, 'https://ica.test/?p=115', 0, 'revision', '', 0),
(117, 1, '2022-07-09 10:14:27', '2022-07-09 10:14:27', '', 'spese', '', 'trash', 'closed', 'closed', '', 'spese__trashed-2', '', '', '2022-07-10 10:33:53', '2022-07-10 10:33:53', '', 0, 'https://ica.test/?page_id=117', 0, 'page', '', 0),
(118, 1, '2022-07-09 10:14:27', '2022-07-09 10:14:27', '', 'spese', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2022-07-09 10:14:27', '2022-07-09 10:14:27', '', 117, 'https://ica.test/?p=118', 0, 'revision', '', 0),
(119, 1, '2022-07-10 10:35:36', '2022-07-10 10:35:36', '', 'metodi pagamento', '', 'publish', 'closed', 'closed', '', 'metodi-pagamento', '', '', '2022-07-10 10:35:36', '2022-07-10 10:35:36', '', 0, 'https://ica.test/?page_id=119', 0, 'page', '', 0),
(120, 1, '2022-07-10 10:35:36', '2022-07-10 10:35:36', '', 'metodi pagamento', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2022-07-10 10:35:36', '2022-07-10 10:35:36', '', 119, 'https://ica.test/?p=120', 0, 'revision', '', 0),
(121, 1, '2022-07-10 13:02:47', '2022-07-10 13:02:47', '', 'referenti', '', 'publish', 'closed', 'closed', '', 'referenti', '', '', '2022-07-10 13:07:45', '2022-07-10 13:07:45', '', 0, 'https://ica.test/?page_id=121', 0, 'page', '', 0),
(122, 1, '2022-07-10 13:02:47', '2022-07-10 13:02:47', '', 'referenti', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2022-07-10 13:02:47', '2022-07-10 13:02:47', '', 121, 'https://ica.test/?p=122', 0, 'revision', '', 0),
(123, 1, '2022-07-12 10:19:33', '2022-07-12 10:19:33', '', 'specialisti', '', 'publish', 'closed', 'closed', '', 'specialisti', '', '', '2022-07-12 10:19:33', '2022-07-12 10:19:33', '', 0, 'https://ica.test/?page_id=123', 0, 'page', '', 0),
(124, 1, '2022-07-12 10:19:33', '2022-07-12 10:19:33', '', 'specialisti', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2022-07-12 10:19:33', '2022-07-12 10:19:33', '', 123, 'https://ica.test/?p=124', 0, 'revision', '', 0),
(125, 1, '2022-07-12 10:43:16', '2022-07-12 10:43:16', '', 'fascicoli', '', 'publish', 'closed', 'closed', '', 'fascicoli', '', '', '2022-07-12 10:43:16', '2022-07-12 10:43:16', '', 0, 'https://ica.test/?page_id=125', 0, 'page', '', 0),
(126, 1, '2022-07-12 10:43:16', '2022-07-12 10:43:16', '', 'fascicoli', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2022-07-12 10:43:16', '2022-07-12 10:43:16', '', 125, 'https://ica.test/?p=126', 0, 'revision', '', 0),
(128, 1, '2022-07-13 23:17:36', '2022-07-13 23:17:36', '', 'single_referente', '', 'publish', 'closed', 'closed', '', 'single_referente', '', '', '2022-07-14 08:42:40', '2022-07-14 08:42:40', '', 0, 'https://ica.test/?page_id=128', 0, 'page', '', 0),
(129, 1, '2022-07-13 09:56:14', '2022-07-13 09:56:14', '', 'single_referente', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2022-07-13 09:56:14', '2022-07-13 09:56:14', '', 128, 'https://ica.test/?p=129', 0, 'revision', '', 0),
(131, 1, '2022-07-13 23:17:36', '2022-07-13 23:17:36', '', 'single_referente', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2022-07-13 23:17:36', '2022-07-13 23:17:36', '', 128, 'https://ica.test/?p=131', 0, 'revision', '', 0),
(132, 1, '2022-07-14 15:00:37', '2022-07-14 15:00:37', '', 'single_fascicolo', '', 'publish', 'closed', 'closed', '', 'single_fascicolo', '', '', '2022-07-14 15:04:26', '2022-07-14 15:04:26', '', 0, 'https://ica.test/?page_id=132', 0, 'page', '', 0),
(133, 1, '2022-07-14 15:00:37', '2022-07-14 15:00:37', '', 'single_fascicolo', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-07-14 15:00:37', '2022-07-14 15:00:37', '', 132, 'https://ica.test/?p=133', 0, 'revision', '', 0),
(134, 1, '2022-07-14 15:01:49', '2022-07-14 15:01:49', '', 'single_fascicolo', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-07-14 15:01:49', '2022-07-14 15:01:49', '', 132, 'https://ica.test/?p=134', 0, 'revision', '', 0),
(135, 1, '2022-07-15 00:50:38', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-07-15 00:50:38', '0000-00-00 00:00:00', '', 0, 'https://ica.test/?page_id=135', 0, 'page', '', 0),
(136, 1, '2022-07-15 00:59:23', '2022-07-15 00:59:23', '', 'single_pagamento', '', 'publish', 'closed', 'closed', '', 'single_pagamento', '', '', '2022-07-15 01:12:51', '2022-07-15 01:12:51', '', 0, 'https://ica.test/?page_id=136', 0, 'page', '', 0),
(137, 1, '2022-07-15 00:59:23', '2022-07-15 00:59:23', '', 'single pagamento', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-07-15 00:59:23', '2022-07-15 00:59:23', '', 136, 'https://ica.test/?p=137', 0, 'revision', '', 0),
(138, 1, '2022-07-15 01:12:41', '2022-07-15 01:12:41', '', 'single_pagamento', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2022-07-15 01:12:41', '2022-07-15 01:12:41', '', 136, 'https://ica.test/?p=138', 0, 'revision', '', 0),
(139, 1, '2022-07-15 01:34:08', '2022-07-15 01:34:08', '', 'single_rata', '', 'publish', 'closed', 'closed', '', 'single_rata', '', '', '2022-07-15 01:34:13', '2022-07-15 01:34:13', '', 0, 'https://ica.test/?page_id=139', 0, 'page', '', 0),
(140, 1, '2022-07-15 01:34:08', '2022-07-15 01:34:08', '', 'single_rata', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2022-07-15 01:34:08', '2022-07-15 01:34:08', '', 139, 'https://ica.test/?p=140', 0, 'revision', '', 0),
(141, 1, '2022-07-15 02:48:39', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-07-15 02:48:39', '0000-00-00 00:00:00', '', 0, 'https://ica.test/?page_id=141', 0, 'page', '', 0),
(142, 1, '2022-07-15 02:49:22', '2022-07-15 02:49:22', '', 'single_specialista', '', 'publish', 'closed', 'closed', '', 'single_specialista', '', '', '2022-07-15 02:50:23', '2022-07-15 02:50:23', '', 0, 'https://ica.test/?page_id=142', 0, 'page', '', 0),
(143, 1, '2022-07-15 02:49:22', '2022-07-15 02:49:22', '', 'single_specialista', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2022-07-15 02:49:22', '2022-07-15 02:49:22', '', 142, 'https://ica.test/?p=143', 0, 'revision', '', 0),
(144, 1, '2022-07-15 02:50:23', '2022-07-15 02:50:23', '', 'single_specialista', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2022-07-15 02:50:23', '2022-07-15 02:50:23', '', 142, 'https://ica.test/?p=144', 0, 'revision', '', 0),
(145, 1, '2022-07-20 16:54:38', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-20 16:54:38', '0000-00-00 00:00:00', '', 0, 'https://ica.test/?p=145', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_termmeta`
--

CREATE TABLE `evo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_terms`
--

CREATE TABLE `evo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_terms`
--

INSERT INTO `evo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'my-theme', 'my-theme', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_term_relationships`
--

CREATE TABLE `evo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_term_relationships`
--

INSERT INTO `evo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(5, 2, 0),
(11, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_term_taxonomy`
--

CREATE TABLE `evo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_term_taxonomy`
--

INSERT INTO `evo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_usermeta`
--

CREATE TABLE `evo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_usermeta`
--

INSERT INTO `evo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'evolve'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'evo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'evo_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"cf766a82fc04e6ce527eb9fd852c02b1c6efb03c9abf8be65880d5b40d66359a\";a:4:{s:10:\"expiration\";i:1659545677;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1658336077;}}'),
(17, 1, 'evo_dashboard_quick_press_last_post_id', '145'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:78:\"dashboard_site_health,dashboard_right_now,dashboard_activity,dashboard_primary\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 2, 'nickname', 'macs'),
(24, 2, 'first_name', ''),
(25, 2, 'last_name', ''),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'evo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(35, 2, 'evo_user_level', '10'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 2, 'default_password_nag', ''),
(38, 2, 'session_tokens', 'a:1:{s:64:\"e27056f8be83279ba19ee851ddcff25e126890ab3a28089fe8e54c125967fa05\";a:4:{s:10:\"expiration\";i:1657032389;s:2:\"ip\";s:13:\"93.70.102.207\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36\";s:5:\"login\";i:1655822789;}}'),
(39, 2, 'evo_dashboard_quick_press_last_post_id', '21'),
(40, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"93.70.102.0\";}'),
(41, 1, 'evo_user-settings', 'editor=tinymce&editor_expand=off'),
(42, 1, 'evo_user-settings-time', '1657220299'),
(43, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:58:\"acf-group_62c7271fe410a,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(44, 1, 'screen_layout_page', '2'),
(45, 1, 'closedpostboxes_page', 'a:0:{}'),
(46, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Struttura della tabella `evo_users`
--

CREATE TABLE `evo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `evo_users`
--

INSERT INTO `evo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'evolve', '$P$B7JLlwDByjQO1Z2ib7.bfXIFbQlHoQ0', 'evolve', 'massimiliano.raspa@gmail.com', 'https://evolvetest.it', '2022-06-21 13:27:34', '', 0, 'admin'),
(2, 'macs', '$P$BtwyPLIzFsXOtEcOrgunvPw5lqWKOe1', 'macs', 'max7184@gmail.com', '', '2022-06-21 14:44:03', '', 0, 'macs');

-- --------------------------------------------------------

--
-- Struttura della tabella `FASCICOLO`
--

CREATE TABLE `FASCICOLO` (
  `id` int(11) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `data_apertura` date DEFAULT NULL,
  `data_chiusura` date DEFAULT NULL,
  `stato` int(11) DEFAULT NULL,
  `id_ufficio` int(11) DEFAULT NULL,
  `persone_gestite` int(11) DEFAULT NULL,
  `referente` int(11) DEFAULT NULL,
  `caso` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `FASCICOLO`
--

INSERT INTO `FASCICOLO` (`id`, `nickname`, `data_apertura`, `data_chiusura`, `stato`, `id_ufficio`, `persone_gestite`, `referente`, `caso`, `link`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'DAVIDE_MYRTAJ', '2022-07-20', NULL, 1, 1, NULL, 1, 1, 'https://www.google.com/intl/it_it/drive/', NULL, NULL, NULL, NULL, ''),
(2, 'davidemy', '2022-07-20', NULL, 1, 1, 3, 1, 1, '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `FASCICOLO_SPECIALISTA`
--

CREATE TABLE `FASCICOLO_SPECIALISTA` (
  `id` int(11) NOT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `id_specialista` int(11) DEFAULT NULL,
  `data_assegnazione` date DEFAULT NULL,
  `data_conclusione` date DEFAULT NULL,
  `numero_specialista` int(11) DEFAULT NULL,
  `accettato` int(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `FASCICOLO_SPECIALISTA`
--

INSERT INTO `FASCICOLO_SPECIALISTA` (`id`, `id_fascicolo`, `id_specialista`, `data_assegnazione`, `data_conclusione`, `numero_specialista`, `accettato`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 2, 1, '2022-07-20', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 2, '2022-07-20', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `GESTITO`
--

CREATE TABLE `GESTITO` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `indirizzo` text DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `GESTITO`
--

INSERT INTO `GESTITO` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `indirizzo`, `numero_telefono`, `mail`, `id_fascicolo`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'pino', '', '', '2003-04-02', '', '', '', 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', '', '', '2000-01-01', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', '', '', '2000-01-01', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `METODO_PAGAMENTO`
--

CREATE TABLE `METODO_PAGAMENTO` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `METODO_PAGAMENTO`
--

INSERT INTO `METODO_PAGAMENTO` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'BONIFICO', NULL, NULL, NULL, NULL, NULL),
(2, 'ASSEGNO', NULL, NULL, NULL, NULL, NULL),
(3, 'PAYPAL', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `PAGAMENTO`
--

CREATE TABLE `PAGAMENTO` (
  `id_pagamento` int(11) NOT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `creazione` date DEFAULT NULL,
  `totale_euro` decimal(8,2) DEFAULT NULL,
  `totale_vero_euro` decimal(8,2) DEFAULT NULL,
  `totale_dollari` decimal(8,2) DEFAULT NULL,
  `totale_vero_dollari` decimal(8,2) DEFAULT NULL,
  `accettato` int(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `PAGAMENTO`
--

INSERT INTO `PAGAMENTO` (`id_pagamento`, `id_fascicolo`, `creazione`, `totale_euro`, `totale_vero_euro`, `totale_dollari`, `totale_vero_dollari`, `accettato`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 2, '2022-07-20', '1200.00', '1000.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pagamento');

-- --------------------------------------------------------

--
-- Struttura della tabella `PROSPECTIVE`
--

CREATE TABLE `PROSPECTIVE` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `cognome` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `middle_name` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `RATA`
--

CREATE TABLE `RATA` (
  `id_rata` int(11) NOT NULL,
  `id_pagamento` int(11) DEFAULT NULL,
  `somma_euro` decimal(8,2) DEFAULT NULL,
  `somma_dollari` decimal(8,2) DEFAULT NULL,
  `pagata` int(1) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `RATA`
--

INSERT INTO `RATA` (`id_rata`, `id_pagamento`, `somma_euro`, `somma_dollari`, `pagata`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 1, '500.00', NULL, 1, NULL, NULL, NULL, NULL, ''),
(3, 1, '55.00', NULL, 0, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `REFERENTE`
--

CREATE TABLE `REFERENTE` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `indirizzo` text DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `sponsor` int(11) DEFAULT NULL,
  `perc_sponsor` decimal(5,2) DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `REFERENTE`
--

INSERT INTO `REFERENTE` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `indirizzo`, `numero_telefono`, `mail`, `sponsor`, `perc_sponsor`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'DAVIDE', 'MYRTAJ', '', '2003-12-31', '', '', '', 1, '0.00', NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `SPECIALISTA`
--

CREATE TABLE `SPECIALISTA` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `cognome` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `middle_name` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `codice_fiscale` varchar(16) CHARACTER SET utf8mb3 DEFAULT NULL,
  `numero_telefono` varchar(20) CHARACTER SET utf8mb3 DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `obbligo_gdpr` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `SPECIALISTA`
--

INSERT INTO `SPECIALISTA` (`id`, `nome`, `cognome`, `middle_name`, `data_nascita`, `codice_fiscale`, `numero_telefono`, `mail`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `obbligo_gdpr`, `note`) VALUES
(1, 'MARCO', 'ROSSI', 'IL', '1987-07-01', 'QWERTYUIOPASDFGL', '', '', NULL, NULL, NULL, NULL, NULL, ''),
(2, 'LUCA', 'VERDI', '', '1989-03-03', 'MJHGFTRDHCERTSD4', '', '', NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `SPESE`
--

CREATE TABLE `SPESE` (
  `id` int(11) NOT NULL,
  `id_fascicolo` int(11) DEFAULT NULL,
  `somma_euro` decimal(8,2) DEFAULT NULL,
  `somma_dollari` decimal(8,2) DEFAULT NULL,
  `rimborso` int(1) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `SPESE`
--

INSERT INTO `SPESE` (`id`, `id_fascicolo`, `somma_euro`, `somma_dollari`, `rimborso`, `note`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`) VALUES
(1, 2, '20.00', NULL, 0, '', NULL, NULL, NULL, NULL),
(2, 2, '20.00', '20.36', 1, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `SPONSOR`
--

CREATE TABLE `SPONSOR` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `SPONSOR`
--

INSERT INTO `SPONSOR` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'NESSUNO SPONSOR', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `STATO`
--

CREATE TABLE `STATO` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `STATO`
--

INSERT INTO `STATO` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'ATTIVO', NULL, NULL, NULL, NULL, NULL),
(2, 'IN ATTESA', NULL, NULL, NULL, NULL, NULL),
(3, 'NON ATTIVO', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `UFFICIO`
--

CREATE TABLE `UFFICIO` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_utente` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `log_azione` varchar(100) CHARACTER SET utf8mb3 DEFAULT NULL,
  `date_time_record_insert` datetime DEFAULT NULL,
  `date_time_record_update` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `UFFICIO`
--

INSERT INTO `UFFICIO` (`id`, `nome`, `log_utente`, `log_azione`, `date_time_record_insert`, `date_time_record_update`, `note`) VALUES
(1, 'NEW YORK', NULL, NULL, NULL, NULL, NULL),
(2, 'ITALIA', NULL, NULL, NULL, NULL, NULL),
(3, 'CALIFORNIA', NULL, NULL, NULL, NULL, NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ACCONTO`
--
ALTER TABLE `ACCONTO`
  ADD PRIMARY KEY (`id_acconto`),
  ADD KEY `id_rata` (`id_rata`),
  ADD KEY `metodo_pagamento` (`metodo_pagamento`);

--
-- Indici per le tabelle `ALLEGATI`
--
ALTER TABLE `ALLEGATI`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_name` (`file_name`);

--
-- Indici per le tabelle `APPUNTAMENTI`
--
ALTER TABLE `APPUNTAMENTI`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prospective` (`id_prospective`),
  ADD KEY `stato` (`stato`);

--
-- Indici per le tabelle `CASO`
--
ALTER TABLE `CASO`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `CHIAMATA`
--
ALTER TABLE `CHIAMATA`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `evo_cf7db`
--
ALTER TABLE `evo_cf7db`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `evo_commentmeta`
--
ALTER TABLE `evo_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `evo_comments`
--
ALTER TABLE `evo_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indici per le tabelle `evo_links`
--
ALTER TABLE `evo_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indici per le tabelle `evo_options`
--
ALTER TABLE `evo_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indici per le tabelle `evo_postmeta`
--
ALTER TABLE `evo_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `evo_posts`
--
ALTER TABLE `evo_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indici per le tabelle `evo_termmeta`
--
ALTER TABLE `evo_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `evo_terms`
--
ALTER TABLE `evo_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indici per le tabelle `evo_term_relationships`
--
ALTER TABLE `evo_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indici per le tabelle `evo_term_taxonomy`
--
ALTER TABLE `evo_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indici per le tabelle `evo_usermeta`
--
ALTER TABLE `evo_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `evo_users`
--
ALTER TABLE `evo_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indici per le tabelle `FASCICOLO`
--
ALTER TABLE `FASCICOLO`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stato` (`stato`),
  ADD KEY `referente` (`referente`),
  ADD KEY `id_ufficio` (`id_ufficio`),
  ADD KEY `caso` (`caso`);

--
-- Indici per le tabelle `FASCICOLO_SPECIALISTA`
--
ALTER TABLE `FASCICOLO_SPECIALISTA`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fascicolo` (`id_fascicolo`),
  ADD KEY `id_specialista` (`id_specialista`);

--
-- Indici per le tabelle `GESTITO`
--
ALTER TABLE `GESTITO`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `METODO_PAGAMENTO`
--
ALTER TABLE `METODO_PAGAMENTO`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `PAGAMENTO`
--
ALTER TABLE `PAGAMENTO`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `PROSPECTIVE`
--
ALTER TABLE `PROSPECTIVE`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `RATA`
--
ALTER TABLE `RATA`
  ADD PRIMARY KEY (`id_rata`),
  ADD KEY `id_pagamento` (`id_pagamento`);

--
-- Indici per le tabelle `REFERENTE`
--
ALTER TABLE `REFERENTE`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sponsor` (`sponsor`);

--
-- Indici per le tabelle `SPECIALISTA`
--
ALTER TABLE `SPECIALISTA`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `SPESE`
--
ALTER TABLE `SPESE`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fascicolo` (`id_fascicolo`);

--
-- Indici per le tabelle `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `STATO`
--
ALTER TABLE `STATO`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `UFFICIO`
--
ALTER TABLE `UFFICIO`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ACCONTO`
--
ALTER TABLE `ACCONTO`
  MODIFY `id_acconto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `ALLEGATI`
--
ALTER TABLE `ALLEGATI`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `APPUNTAMENTI`
--
ALTER TABLE `APPUNTAMENTI`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `CASO`
--
ALTER TABLE `CASO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `CHIAMATA`
--
ALTER TABLE `CHIAMATA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `evo_cf7db`
--
ALTER TABLE `evo_cf7db`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `evo_commentmeta`
--
ALTER TABLE `evo_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `evo_comments`
--
ALTER TABLE `evo_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `evo_links`
--
ALTER TABLE `evo_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `evo_options`
--
ALTER TABLE `evo_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2565;

--
-- AUTO_INCREMENT per la tabella `evo_postmeta`
--
ALTER TABLE `evo_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT per la tabella `evo_posts`
--
ALTER TABLE `evo_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT per la tabella `evo_termmeta`
--
ALTER TABLE `evo_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `evo_terms`
--
ALTER TABLE `evo_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `evo_term_taxonomy`
--
ALTER TABLE `evo_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `evo_usermeta`
--
ALTER TABLE `evo_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT per la tabella `evo_users`
--
ALTER TABLE `evo_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `FASCICOLO`
--
ALTER TABLE `FASCICOLO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `FASCICOLO_SPECIALISTA`
--
ALTER TABLE `FASCICOLO_SPECIALISTA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `GESTITO`
--
ALTER TABLE `GESTITO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `METODO_PAGAMENTO`
--
ALTER TABLE `METODO_PAGAMENTO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `PAGAMENTO`
--
ALTER TABLE `PAGAMENTO`
  MODIFY `id_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `PROSPECTIVE`
--
ALTER TABLE `PROSPECTIVE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `RATA`
--
ALTER TABLE `RATA`
  MODIFY `id_rata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `REFERENTE`
--
ALTER TABLE `REFERENTE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `SPECIALISTA`
--
ALTER TABLE `SPECIALISTA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `SPESE`
--
ALTER TABLE `SPESE`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `SPONSOR`
--
ALTER TABLE `SPONSOR`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `STATO`
--
ALTER TABLE `STATO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `UFFICIO`
--
ALTER TABLE `UFFICIO`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `ACCONTO`
--
ALTER TABLE `ACCONTO`
  ADD CONSTRAINT `acconto_ibfk_1` FOREIGN KEY (`id_rata`) REFERENCES `RATA` (`id_rata`),
  ADD CONSTRAINT `acconto_ibfk_2` FOREIGN KEY (`metodo_pagamento`) REFERENCES `METODO_PAGAMENTO` (`id`);

--
-- Limiti per la tabella `APPUNTAMENTI`
--
ALTER TABLE `APPUNTAMENTI`
  ADD CONSTRAINT `appuntamenti_ibfk_1` FOREIGN KEY (`id_prospective`) REFERENCES `PROSPECTIVE` (`id`),
  ADD CONSTRAINT `appuntamenti_ibfk_2` FOREIGN KEY (`stato`) REFERENCES `CHIAMATA` (`id`);

--
-- Limiti per la tabella `FASCICOLO`
--
ALTER TABLE `FASCICOLO`
  ADD CONSTRAINT `fascicolo_ibfk_1` FOREIGN KEY (`stato`) REFERENCES `STATO` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_2` FOREIGN KEY (`referente`) REFERENCES `REFERENTE` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_3` FOREIGN KEY (`id_ufficio`) REFERENCES `UFFICIO` (`id`),
  ADD CONSTRAINT `fascicolo_ibfk_4` FOREIGN KEY (`caso`) REFERENCES `CASO` (`id`);

--
-- Limiti per la tabella `FASCICOLO_SPECIALISTA`
--
ALTER TABLE `FASCICOLO_SPECIALISTA`
  ADD CONSTRAINT `fascicolo_specialista_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `FASCICOLO` (`id`),
  ADD CONSTRAINT `fascicolo_specialista_ibfk_2` FOREIGN KEY (`id_specialista`) REFERENCES `SPECIALISTA` (`id`);

--
-- Limiti per la tabella `GESTITO`
--
ALTER TABLE `GESTITO`
  ADD CONSTRAINT `gestito_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `FASCICOLO` (`id`);

--
-- Limiti per la tabella `PAGAMENTO`
--
ALTER TABLE `PAGAMENTO`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `FASCICOLO` (`id`);

--
-- Limiti per la tabella `RATA`
--
ALTER TABLE `RATA`
  ADD CONSTRAINT `rata_ibfk_1` FOREIGN KEY (`id_pagamento`) REFERENCES `PAGAMENTO` (`id_pagamento`);

--
-- Limiti per la tabella `REFERENTE`
--
ALTER TABLE `REFERENTE`
  ADD CONSTRAINT `referente_ibfk_1` FOREIGN KEY (`sponsor`) REFERENCES `SPONSOR` (`id`);

--
-- Limiti per la tabella `SPESE`
--
ALTER TABLE `SPESE`
  ADD CONSTRAINT `spese_ibfk_1` FOREIGN KEY (`id_fascicolo`) REFERENCES `FASCICOLO` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
