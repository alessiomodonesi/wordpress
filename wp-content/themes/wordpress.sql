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
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'EvolveTest', 'yes'),
(4, 'blogdescription', 'Un nuovo sito targato WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mattzanini2@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'my-theme', 'yes'),
(41, 'stylesheet', 'my-theme', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Rome', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1672501160', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'cron', 'a:8:{i:1657100368;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1657121964;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657121968;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657122039;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657122040;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657122042;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657640364;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'it_IT', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articoli recenti</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commenti recenti</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivi</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'user_count', '1', 'no'),
(118, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656949519;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:21:\"Verifica SSL fallita.\";}}', 'yes'),
(135, '_site_transient_timeout_browser_a0909810a6d132832e28ef6da18ec77c', '1657554041', 'no'),
(136, '_site_transient_browser_a0909810a6d132832e28ef6da18ec77c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_e323dc8e617f5375664063458c3d5d57', '1657554042', 'no'),
(138, '_site_transient_php_check_e323dc8e617f5375664063458c3d5d57', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(166, 'current_theme', 'Evolve theme', 'yes'),
(167, 'theme_mods_my-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(199, '_site_transient_timeout_wordpress_credits_it_IT', '1657039135', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(200, '_site_transient_wordpress_credits_it_IT', 'a:2:{s:6:\"groups\";a:6:{s:15:\"core-developers\";a:4:{s:4:\"name\";s:23:\"Noteworthy Contributors\";s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:0;s:4:\"data\";a:28:{s:4:\"matt\";a:4:{i:0;s:14:\"Matt Mullenweg\";i:1;s:32:\"767fc9c115a1b989744c755db47feb60\";i:2;s:4:\"matt\";i:3;s:12:\"Release Lead\";}s:8:\"priethor\";a:4:{i:0;s:14:\"Héctor Prieto\";i:1;s:32:\"a78855affcdaddba9c0323b4f9c4bfeb\";i:2;s:8:\"priethor\";i:3;s:12:\"Release Lead\";}s:8:\"annezazu\";a:4:{i:0;s:13:\"Anne McCarthy\";i:1;s:32:\"0eff7149d8c78b242f4652e9ceb8f798\";i:2;s:8:\"annezazu\";i:3;s:12:\"Release Lead\";}s:13:\"peterwilsoncc\";a:4:{i:0;s:12:\"Peter Wilson\";i:1;s:32:\"1dd9fded718f9b344d48f37f9bfcb159\";i:2;s:13:\"peterwilsoncc\";i:3;s:12:\"Release Lead\";}s:8:\"zieladam\";a:4:{i:0;s:14:\"Adam Zielinski\";i:1;s:32:\"3b7ea537531208d83deed8f3e78bc771\";i:2;s:8:\"zieladam\";i:3;s:0:\"\";}s:6:\"gziolo\";a:4:{i:0;s:17:\"Greg Ziółkowski\";i:1;s:32:\"475d323ceec2e73597729eef1c5bf263\";i:2;s:6:\"gziolo\";i:3;s:0:\"\";}s:8:\"chaion07\";a:4:{i:0;s:12:\"Ahmed Chaion\";i:1;s:32:\"17ab5eb227cef5e28f7a19332f07522c\";i:2;s:8:\"chaion07\";i:3;s:0:\"\";}s:7:\"costdev\";a:4:{i:0;s:13:\"Colin Stewart\";i:1;s:32:\"d2b7350f108fd2c347eb96841fa1639d\";i:2;s:7:\"costdev\";i:3;s:0:\"\";}s:6:\"ndiego\";a:4:{i:0;s:10:\"Nick Diego\";i:1;s:32:\"68812b848d8f593db8bd6246b427de7a\";i:2;s:6:\"ndiego\";i:3;s:0:\"\";}s:3:\"bph\";a:4:{i:0;s:18:\"Birgit Pauli-Haack\";i:1;s:32:\"050e54a57a6e3ad0ff5897b867e983cb\";i:2;s:3:\"bph\";i:3;s:0:\"\";}s:10:\"milana_cap\";a:4:{i:0;s:10:\"Milana Cap\";i:1;s:32:\"7cfb6116e14bd745841bfbd7b372dc8c\";i:2;s:10:\"milana_cap\";i:3;s:0:\"\";}s:10:\"webcommsat\";a:4:{i:0;s:11:\"Abha Thakor\";i:1;s:32:\"f1258d4b759b4436cf1989fdc3fab72f\";i:2;s:10:\"webcommsat\";i:3;s:0:\"\";}s:10:\"dansoschin\";a:4:{i:0;s:11:\"Dan Soschin\";i:1;s:32:\"4411d330a1505ab6a4bb3c13e09ac078\";i:2;s:10:\"dansoschin\";i:3;s:0:\"\";}s:7:\"Boniu91\";a:4:{i:0;s:13:\"Piotrek Boniu\";i:1;s:32:\"e58b7c2ffb29cbeae76f5037aeae07dd\";i:2;s:7:\"Boniu91\";i:3;s:0:\"\";}s:14:\"ironprogrammer\";a:4:{i:0;s:15:\"Brian Alexander\";i:1;s:32:\"295c0fd109345d5c444ac0df0c430054\";i:2;s:14:\"ironprogrammer\";i:3;s:0:\"\";}s:12:\"critterverse\";a:4:{i:0;s:15:\"Channing Ritter\";i:1;s:32:\"2773e3d098f7751cd550fbc0c87337bb\";i:2;s:12:\"critterverse\";i:3;s:0:\"\";}s:6:\"matveb\";a:4:{i:0;s:14:\"Matias Ventura\";i:1;s:32:\"3f8389957d0c59bb0bd5433e86b53a19\";i:2;s:6:\"matveb\";i:3;s:0:\"\";}s:14:\"SergeyBiryukov\";a:4:{i:0;s:15:\"Sergey Biryukov\";i:1;s:32:\"750b7b0fcd855389264c2b1294d61bd6\";i:2;s:14:\"SergeyBiryukov\";i:3;s:0:\"\";}s:8:\"audrasjb\";a:4:{i:0;s:20:\"Jean-Baptiste Audras\";i:1;s:32:\"f5679c32509d3a0f9821da8ba4843a75\";i:2;s:8:\"audrasjb\";i:3;s:0:\"\";}s:8:\"Mamaduka\";a:4:{i:0;s:19:\"George Mamadashvili\";i:1;s:32:\"ddda3dc3a8502b3e1889905a9d500f3f\";i:2;s:8:\"Mamaduka\";i:3;s:0:\"\";}s:10:\"ntsekouras\";a:4:{i:0;s:13:\"Nik Tsekouras\";i:1;s:32:\"01d2cd00d141a92fcef8cb3eb54c1d70\";i:2;s:10:\"ntsekouras\";i:3;s:0:\"\";}s:9:\"oandregal\";a:4:{i:0;s:6:\"André\";i:1;s:32:\"2d68c3fe4fb9c650b80d80e46a734cbc\";i:2;s:9:\"oandregal\";i:3;s:0:\"\";}s:14:\"hellofromTonya\";a:4:{i:0;s:10:\"Tonya Mork\";i:1;s:32:\"0c38a54fba6a9049f799462a3bc5798d\";i:2;s:14:\"hellofromTonya\";i:3;s:0:\"\";}s:8:\"get_dave\";a:4:{i:0;s:10:\"Dave Smith\";i:1;s:32:\"a83b95944c59d81d29b6c453a270220a\";i:2;s:8:\"get_dave\";i:3;s:0:\"\";}s:5:\"poena\";a:4:{i:0;s:15:\"Carolina Nymark\";i:1;s:32:\"93d62a7919878f5aec4bcb7b96d4b7ae\";i:2;s:5:\"poena\";i:3;s:0:\"\";}s:9:\"talldanwp\";a:4:{i:0;s:15:\"Daniel Richards\";i:1;s:32:\"f6bc0d9c563bc9e993608e443fd5126f\";i:2;s:9:\"talldanwp\";i:3;s:0:\"\";}s:11:\"youknowriad\";a:4:{i:0;s:14:\"Riad Benguella\";i:1;s:32:\"9929daa7594d5afa910a777ccb9e88e4\";i:2;s:11:\"youknowriad\";i:3;s:0:\"\";}s:8:\"fcoveram\";a:4:{i:0;s:14:\"Francisco Vera\";i:1;s:32:\"9bddd65139d5c93bb8177d0a3acfb3b2\";i:2;s:8:\"fcoveram\";i:3;s:0:\"\";}}}s:23:\"contributing-developers\";a:4:{s:4:\"name\";b:0;s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:1;s:4:\"data\";a:24:{s:6:\"kjellr\";a:4:{i:0;s:14:\"Kjell Reigstad\";i:1;s:32:\"c0a188c11094ce01052e7b9772805297\";i:2;s:6:\"kjellr\";i:3;s:0:\"\";}s:12:\"femkreations\";a:4:{i:0;s:13:\"Femy Praseeth\";i:1;s:32:\"189266484d2d2fe552b353350085fbe4\";i:2;s:12:\"femkreations\";i:3;s:0:\"\";}s:8:\"aristath\";a:4:{i:0;s:16:\"Ari Stathopoulos\";i:1;s:32:\"18a8f65a014d3038d08fc424fc5f3110\";i:2;s:8:\"aristath\";i:3;s:0:\"\";}s:12:\"glendaviesnz\";a:4:{i:0;s:11:\"Glen Davies\";i:1;s:32:\"e84866abfde76f6e01dfa31fc3a9b945\";i:2;s:12:\"glendaviesnz\";i:3;s:0:\"\";}s:16:\"jorgefilipecosta\";a:4:{i:0;s:11:\"Jorge Costa\";i:1;s:32:\"44d0cd19ecea711a6e2625b5858e268b\";i:2;s:16:\"jorgefilipecosta\";i:3;s:0:\"\";}s:4:\"Joen\";a:4:{i:0;s:13:\"Joen Asmussen\";i:1;s:32:\"7fda1da9c34e978d5990afd7f58ca0f4\";i:2;s:4:\"Joen\";i:3;s:0:\"\";}s:12:\"spacedmonkey\";a:4:{i:0;s:12:\"Jonny Harris\";i:1;s:32:\"d16fef4e91708f696209a80ff9797766\";i:2;s:12:\"spacedmonkey\";i:3;s:0:\"\";}s:9:\"mciampini\";a:4:{i:0;s:14:\"Marco Ciampini\";i:1;s:32:\"faf199b87a9837128cb859d10eb7e152\";i:2;s:9:\"mciampini\";i:3;s:0:\"\";}s:3:\"jrf\";a:4:{i:0;s:24:\"Juliette Reinders Folmer\";i:1;s:32:\"cbbac3e529102364dc3b026af3cc2988\";i:2;s:3:\"jrf\";i:3;s:0:\"\";}s:10:\"ramonopoly\";a:4:{i:0;s:11:\"Ramon James\";i:1;s:32:\"b1aef4a8432bb5166d580eabeee18618\";i:2;s:10:\"ramonopoly\";i:3;s:0:\"\";}s:12:\"justinahinon\";a:4:{i:0;s:13:\"Justin Ahinon\";i:1;s:32:\"8f55b7b9c159b2e14cba89a6be0728e2\";i:2;s:12:\"justinahinon\";i:3;s:0:\"\";}s:10:\"noisysocks\";a:4:{i:0;s:15:\"Robert Anderson\";i:1;s:32:\"c9ae983c4a94490f209c06dd46b801e4\";i:2;s:10:\"noisysocks\";i:3;s:0:\"\";}s:11:\"johnbillion\";a:4:{i:0;s:15:\"John Blackbourn\";i:1;s:32:\"23e12888dcd87d07434b7621bc164958\";i:2;s:11:\"johnbillion\";i:3;s:0:\"\";}s:15:\"aaronrobertshaw\";a:4:{i:0;s:16:\"Aaron Robertshaw\";i:1;s:32:\"45405154203aefef164b393060ec68bc\";i:2;s:15:\"aaronrobertshaw\";i:3;s:0:\"\";}s:11:\"carlosgprim\";a:4:{i:0;s:13:\"Carlos Garcia\";i:1;s:32:\"f57837361a31079ccb5e3e3763ac2626\";i:2;s:11:\"carlosgprim\";i:3;s:0:\"\";}s:11:\"sabernhardt\";a:4:{i:0;s:17:\"Stephen Bernhardt\";i:1;s:32:\"d6c73363f9409e01363793260a3e76df\";i:2;s:11:\"sabernhardt\";i:3;s:0:\"\";}s:12:\"andrewserong\";a:4:{i:0;s:13:\"Andrew Serong\";i:1;s:32:\"45b83c873b811ea5837559613c871c23\";i:2;s:12:\"andrewserong\";i:3;s:0:\"\";}s:13:\"davidbaumwald\";a:4:{i:0;s:14:\"David Baumwald\";i:1;s:32:\"9945bf5c3f49038409fbdf0e068934df\";i:2;s:13:\"davidbaumwald\";i:3;s:0:\"\";}s:9:\"scruffian\";a:4:{i:0;s:9:\"Ben Dwyer\";i:1;s:32:\"0ea1bf850185751837ec3f6aa8229284\";i:2;s:9:\"scruffian\";i:3;s:0:\"\";}s:7:\"desrosj\";a:4:{i:0;s:19:\"Jonathan Desrosiers\";i:1;s:32:\"f22c0ec09eb5a6df4da4239a37dbdf9d\";i:2;s:7:\"desrosj\";i:3;s:0:\"\";}s:12:\"cbravobernal\";a:4:{i:0;s:12:\"Carlos Bravo\";i:1;s:32:\"7b324987efc974600d3c4da2e3b903df\";i:2;s:12:\"cbravobernal\";i:3;s:0:\"\";}s:8:\"JeffPaul\";a:4:{i:0;s:9:\"Jeff Paul\";i:1;s:32:\"8ac4ec4b1f9cb342e59ed5127f050d24\";i:2;s:8:\"JeffPaul\";i:3;s:0:\"\";}s:8:\"marybaum\";a:4:{i:0;s:9:\"Mary Baum\";i:1;s:32:\"ad96ace475ab89952489d5a2454d97da\";i:2;s:8:\"marybaum\";i:3;s:0:\"\";}s:9:\"alexstine\";a:4:{i:0;s:10:\"Alex Stine\";i:1;s:32:\"220fe8025ea2d8179e1643df03fc9883\";i:2;s:9:\"alexstine\";i:3;s:0:\"\";}}}s:5:\"props\";a:4:{s:4:\"name\";s:33:\"Core Contributors to WordPress %s\";s:12:\"placeholders\";a:1:{i:0;s:3:\"6.0\";}s:4:\"type\";s:4:\"list\";s:4:\"data\";a:481:{s:6:\"jorbin\";s:12:\"Aaron Jorbin\";s:14:\"abdullahramzan\";s:15:\"Abdullah Ramzan\";s:15:\"adamsilverstein\";s:16:\"Adam Silverstein\";s:8:\"adi64bit\";s:8:\"adi64bit\";s:8:\"aadilali\";s:8:\"Adil Ali\";s:7:\"agepcom\";s:7:\"agepcom\";s:9:\"wildworks\";s:10:\"Aki Hamano\";s:10:\"atachibana\";s:15:\"Akira Tachibana\";s:10:\"schlessera\";s:15:\"Alain Schlesser\";s:15:\"alanjacobmathew\";s:17:\"Alan Jacob Mathew\";s:8:\"alansyue\";s:8:\"alansyue\";s:7:\"aljullu\";s:25:\"Albert Juh&#233; Lluveras\";s:11:\"albertomake\";s:11:\"albertomake\";s:10:\"alefesouza\";s:11:\"Alefe Souza\";s:7:\"alex897\";s:17:\"Aleksandar Kostov\";s:6:\"xknown\";s:11:\"Alex Concha\";s:7:\"ajlende\";s:10:\"Alex Lende\";s:12:\"viper007bond\";s:10:\"Alex Mills\";s:16:\"aliakseyenkaihar\";s:16:\"aliakseyenkaihar\";s:7:\"alkesh7\";s:13:\"Alkesh Miyani\";s:9:\"alokstha1\";s:13:\"Alok Shrestha\";s:9:\"shedonist\";s:12:\"Amanda Giles\";s:7:\"afercia\";s:13:\"Andrea Fercia\";s:12:\"andraganescu\";s:17:\"Andrei Draganescu\";s:9:\"_smartik_\";s:12:\"Andrei Surdu\";s:12:\"aandrewdixon\";s:12:\"Andrew Dixon\";s:5:\"nacin\";s:12:\"Andrew Nacin\";s:6:\"azaozz\";s:10:\"Andrew Ozz\";s:5:\"rarst\";s:24:\"Andrey \"Rarst\" Savchenko\";s:7:\"afragen\";s:11:\"Andy Fragen\";s:7:\"la-geek\";s:17:\"Angelika Reisiger\";s:6:\"rilwis\";s:8:\"Anh Tran\";s:13:\"ankit-k-gupta\";s:13:\"Ankit K Gupta\";s:12:\"anoopranawat\";s:13:\"Anoop Ranawat\";s:5:\"antpb\";s:16:\"Anthony Burchell\";s:12:\"paranoia1906\";s:15:\"Anthony Ledesma\";s:10:\"antonrinas\";s:10:\"antonrinas\";s:13:\"antonvlasenko\";s:14:\"Anton Vlasenko\";s:8:\"antonynz\";s:13:\"Antony Booker\";s:11:\"arcangelini\";s:11:\"arcangelini\";s:5:\"arnee\";s:4:\"Arne\";s:10:\"arpitgshah\";s:12:\"Arpit G Shah\";s:11:\"artdecotech\";s:11:\"artdecotech\";s:8:\"madeinua\";s:6:\"ArteMa\";s:12:\"arthur791004\";s:10:\"Arthur Chu\";s:11:\"asaquzzaman\";s:17:\"Asaquzzaman mishu\";s:10:\"atomicjack\";s:10:\"atomicjack\";s:5:\"ajoah\";s:20:\"Aur&#233;lien Joahny\";s:7:\"aurooba\";s:13:\"Aurooba Ahmed\";s:11:\"barryhughes\";s:5:\"Barry\";s:11:\"barryceelen\";s:12:\"Barry Ceelen\";s:15:\"bartoszgadomski\";s:16:\"Bartosz Gadomski\";s:5:\"bedas\";s:4:\"Beda\";s:6:\"utz119\";s:7:\"Benachi\";s:15:\"bernhard-reiter\";s:13:\"Bernie Reiter\";s:7:\"bettyjj\";s:7:\"BettyJJ\";s:10:\"bhrugesh12\";s:16:\"Bhrugesh Bavishi\";s:10:\"binarymoon\";s:10:\"binarymoon\";s:7:\"birgire\";s:27:\"Birgir Erlendsson (birgire)\";s:12:\"supercleanse\";s:14:\"Blair Williams\";s:7:\"blogaid\";s:7:\"BlogAid\";s:12:\"boonebgorges\";s:12:\"Boone Gorges\";s:12:\"wpe_bdurette\";s:15:\"Brandon DuRette\";s:7:\"kraftbj\";s:13:\"Brandon Kraft\";s:12:\"bronsonquick\";s:12:\"bronsonquick\";s:9:\"brookedot\";s:7:\"Brooke.\";s:8:\"brookemk\";s:15:\"Brooke Kaminski\";s:15:\"ribaricplusplus\";s:13:\"Bruno Ribaric\";s:6:\"caraya\";s:6:\"caraya\";s:7:\"cbigler\";s:7:\"cbigler\";s:9:\"shireling\";s:15:\"Chad Chadbourne\";s:19:\"charleyparkerdesign\";s:19:\"charleyparkerdesign\";s:8:\"charlyox\";s:8:\"charlyox\";s:11:\"chintan1896\";s:18:\"Chintan hingrajiya\";s:10:\"cbringmann\";s:15:\"Chloe Bringmann\";s:6:\"chouby\";s:6:\"Chouby\";s:9:\"chriscct7\";s:9:\"chriscct7\";s:8:\"clubkert\";s:13:\"Chris Lubkert\";s:14:\"chrisvanpatten\";s:16:\"Chris Van Patten\";s:10:\"clonemykey\";s:10:\"clonemykey\";s:9:\"conner_bw\";s:9:\"conner_bw\";s:7:\"cr0ybot\";s:12:\"Cory Hughart\";s:9:\"courane01\";s:18:\"Courtney Robertson\";s:6:\"mitogh\";s:16:\"Crisoforo Gaspar\";s:15:\"danielbachhuber\";s:16:\"Daniel Bachhuber\";s:12:\"danieldudzic\";s:12:\"danieldudzic\";s:8:\"darerodz\";s:8:\"darerodz\";s:5:\"htdat\";s:9:\"Dat Hoang\";s:10:\"davidbinda\";s:14:\"David Biňovec\";s:9:\"dpcalhoun\";s:13:\"David Calhoun\";s:6:\"dgwyer\";s:11:\"David Gwyer\";s:3:\"dlh\";s:13:\"David Herrera\";s:8:\"dshanske\";s:13:\"David Shanske\";s:8:\"devutpol\";s:14:\"Deb Nath Utpol\";s:10:\"delowardev\";s:15:\"Delowar Hossain\";s:8:\"denishua\";s:8:\"denishua\";s:13:\"dennisatyoast\";s:15:\"Dennis Claassen\";s:7:\"dmsnell\";s:12:\"Dennis Snell\";s:10:\"dhanendran\";s:10:\"Dhanendran\";s:9:\"dharm1025\";s:14:\"Dharmesh Patel\";s:10:\"dhusakovic\";s:10:\"dhusakovic\";s:10:\"dilipbheda\";s:11:\"Dilip Bheda\";s:4:\"dd32\";s:10:\"Dion Hulse\";s:7:\"ocean90\";s:17:\"Dominik Schilling\";s:8:\"donmhico\";s:8:\"donmhico\";s:8:\"drago239\";s:8:\"drago239\";s:12:\"drewapicture\";s:11:\"Drew Jaynes\";s:9:\"dromero20\";s:9:\"dromero20\";s:9:\"eddystile\";s:4:\"Eddy\";s:5:\"ehtis\";s:5:\"ehtis\";s:10:\"eliezerspp\";s:17:\"Eliezer Pe&#241;a\";s:8:\"ellatrix\";s:14:\"Ella van Durpe\";s:8:\"manooweb\";s:14:\"Emmanuel Hesry\";s:4:\"lopo\";s:16:\"Enrico Battocchi\";s:6:\"eric3d\";s:6:\"eric3d\";s:6:\"kebbet\";s:15:\"Erik Betshammar\";s:6:\"espiat\";s:6:\"espiat\";s:9:\"estelaris\";s:12:\"Estela Rueda\";s:11:\"etaproducto\";s:11:\"etaproducto\";s:9:\"everpress\";s:9:\"EverPress\";s:11:\"fabiankaegy\";s:16:\"Fabian K&#228;gy\";s:5:\"iogui\";s:12:\"Fabio Blanco\";s:6:\"faison\";s:6:\"Faison\";s:10:\"felipeelia\";s:11:\"Felipe Elia\";s:8:\"flixos90\";s:11:\"Felix Arntz\";s:16:\"florianbrinkmann\";s:17:\"Florian Brinkmann\";s:9:\"mista-flo\";s:12:\"Florian TIAR\";s:11:\"foliovision\";s:11:\"FolioVision\";s:8:\"francina\";s:16:\"Francesca Marano\";s:7:\"frankei\";s:7:\"frankei\";s:6:\"furi3r\";s:6:\"furi3r\";s:11:\"gadhiyaravi\";s:11:\"gadhiyaravi\";s:15:\"garrett-eclipse\";s:13:\"Garrett Hyder\";s:14:\"voldemortensen\";s:15:\"Garth Mortensen\";s:5:\"garyj\";s:10:\"Gary Jones\";s:5:\"pento\";s:15:\"Gary Pendergast\";s:14:\"genosseeinhorn\";s:14:\"genosseeinhorn\";s:9:\"revgeorge\";s:16:\"George Hotelling\";s:15:\"georgestephanis\";s:16:\"George Stephanis\";s:6:\"geriux\";s:15:\"Gerardo Pacheco\";s:8:\"greglone\";s:20:\"Gr&#233;gory Viguier\";s:9:\"grantmkin\";s:15:\"Grant M. Kinney\";s:16:\"gregoiresailland\";s:16:\"gregoiresailland\";s:4:\"wido\";s:13:\"Guido Scialfa\";s:9:\"gumacahin\";s:9:\"gumacahin\";s:12:\"gvgvgvijayan\";s:12:\"gvgvgvijayan\";s:14:\"hareesh-pillai\";s:7:\"Hareesh\";s:18:\"hasanuzzamanshamim\";s:12:\"Hasanuzzaman\";s:13:\"hasnainashfaq\";s:14:\"Hasnain Ashfaq\";s:9:\"azhiyadev\";s:14:\"Hauwa Abashiya\";s:8:\"hazdiego\";s:3:\"Haz\";s:5:\"helen\";s:15:\"Helen Hou-Sandi\";s:14:\"helgatheviking\";s:14:\"HelgaTheViking\";s:11:\"henrywright\";s:12:\"Henry Wright\";s:8:\"hilayt24\";s:13:\"Hilay Trivedi\";s:15:\"hitendra-chopda\";s:15:\"Hitendra Chopda\";s:7:\"hristok\";s:7:\"HristoK\";s:11:\"hlashbrooke\";s:15:\"Hugh Lashbrooke\";s:9:\"ianatkins\";s:9:\"ianatkins\";s:11:\"ianbelanger\";s:12:\"Ian Belanger\";s:7:\"iandunn\";s:8:\"Ian Dunn\";s:9:\"ianmjones\";s:9:\"ianmjones\";s:7:\"credo61\";s:6:\"ImanGM\";s:6:\"imokol\";s:6:\"imokol\";s:13:\"isabel_brison\";s:13:\"Isabel Brison\";s:8:\"ishitaka\";s:8:\"ishitaka\";s:9:\"itsamoreh\";s:9:\"itsamoreh\";s:11:\"iulia-cazan\";s:11:\"Iulia Cazan\";s:10:\"ivanlutrov\";s:11:\"Ivan Lutrov\";s:5:\"jadpm\";s:5:\"jadpm\";s:9:\"jakeparis\";s:9:\"jakeparis\";s:9:\"whyisjake\";s:13:\"Jake Spurlock\";s:11:\"jameskoster\";s:12:\"James Koster\";s:7:\"codente\";s:15:\"Jamie VanRaalte\";s:5:\"janh2\";s:5:\"janh2\";s:10:\"rumpel2116\";s:9:\"Jan Weiss\";s:7:\"jarretc\";s:6:\"Jarret\";s:11:\"jsnjohnston\";s:14:\"Jason Johnston\";s:11:\"madtownlems\";s:28:\"Jason LeMahieu (MadtownLems)\";s:8:\"javiarce\";s:11:\"Javier Arce\";s:8:\"jprieton\";s:13:\"Javier Prieto\";s:10:\"grandeljay\";s:9:\"Jay Trees\";s:6:\"jazbek\";s:6:\"jazbek\";s:4:\"jblz\";s:10:\"Jeff Bowen\";s:10:\"jeffmatson\";s:11:\"Jeff Matson\";s:5:\"jffng\";s:8:\"Jeff Ong\";s:5:\"jdy68\";s:11:\"Jenny Dupuy\";s:8:\"miss_jwo\";s:10:\"Jenny Wong\";s:10:\"jeremyfelt\";s:11:\"Jeremy Felt\";s:7:\"jeherve\";s:12:\"Jeremy Herve\";s:9:\"jeremyyip\";s:10:\"Jeremy Yip\";s:8:\"sausajez\";s:9:\"Jez Emery\";s:5:\"jhned\";s:5:\"jhned\";s:6:\"jhnstn\";s:6:\"jhnstn\";s:16:\"jigar-bhanushali\";s:16:\"jigar bhanushali\";s:15:\"jiteshdhamaniya\";s:15:\"jiteshdhamaniya\";s:9:\"joedolson\";s:10:\"Joe Dolson\";s:9:\"joemcgill\";s:10:\"Joe McGill\";s:13:\"goaroundagain\";s:15:\"Johannes Kinast\";s:15:\"johnjamesjacoby\";s:17:\"John James Jacoby\";s:10:\"johnregan3\";s:10:\"John Regan\";s:12:\"johnwatkins0\";s:12:\"John Watkins\";s:7:\"jrchamp\";s:14:\"Jonathan Champ\";s:5:\"jb510\";s:9:\"Jon Brown\";s:14:\"jonoaldersonwp\";s:13:\"Jono Alderson\";s:14:\"jorgecontreras\";s:5:\"Jorge\";s:9:\"josearcos\";s:15:\"Jos&#233; Arcos\";s:12:\"chanthaboune\";s:7:\"Josepha\";s:7:\"jostnes\";s:14:\"Josepha Dambul\";s:5:\"joshf\";s:18:\"Joshua Fredrickson\";s:8:\"joyously\";s:3:\"Joy\";s:7:\"jrivett\";s:7:\"jrivett\";s:7:\"jsnajdr\";s:7:\"jsnajdr\";s:13:\"juanlopez4691\";s:13:\"juanlopez4691\";s:12:\"juanmaguitar\";s:14:\"JuanMa Garrido\";s:9:\"junaidkbr\";s:12:\"Junaid Ahmed\";s:10:\"justinbusa\";s:11:\"Justin Busa\";s:14:\"certainstrings\";s:13:\"Justin Tucker\";s:6:\"kafleg\";s:6:\"KafleG\";s:11:\"kevin940726\";s:7:\"Kai Hao\";s:10:\"kajalgohel\";s:11:\"Kajal Gohel\";s:8:\"kapacity\";s:8:\"kapacity\";s:9:\"kapilpaul\";s:10:\"Kapil Paul\";s:16:\"karolinakulinska\";s:16:\"karolinakulinska\";s:8:\"kasparsd\";s:7:\"Kaspars\";s:6:\"kbat82\";s:8:\"kbatdorf\";s:6:\"ryelle\";s:17:\"Kelly Choyce-Dwan\";s:5:\"w33zy\";s:12:\"Kemory Grubb\";s:5:\"gwwar\";s:9:\"Kerry Liu\";s:9:\"kprovance\";s:12:\"Kev Provance\";s:11:\"kharisblank\";s:18:\"Kharis Sulistiyono\";s:8:\"kirtan95\";s:13:\"Kirtan Gajjar\";s:6:\"kmix39\";s:4:\"KMix\";s:6:\"knutsp\";s:13:\"Knut Sparhell\";s:11:\"konradyoast\";s:8:\"Konrad.K\";s:8:\"obenland\";s:19:\"Konstantin Obenland\";s:9:\"kpegoraro\";s:9:\"kpegoraro\";s:5:\"kubiq\";s:5:\"kubiq\";s:8:\"sainthkh\";s:12:\"Kukhyeon Heo\";s:10:\"laurlittle\";s:6:\"Lauren\";s:8:\"0mirka00\";s:11:\"Lena Morita\";s:9:\"lenasterg\";s:9:\"lenasterg\";s:7:\"uzumymw\";s:6:\"leskam\";s:7:\"layotte\";s:10:\"Lew Ayotte\";s:9:\"linux4me2\";s:9:\"linux4me2\";s:9:\"lschuyler\";s:13:\"Lisa Schuyler\";s:6:\"lkraav\";s:6:\"lkraav\";s:13:\"louislaugesen\";s:5:\"Louis\";s:11:\"thelovekesh\";s:14:\"Lovekesh Kumar\";s:13:\"karpstrucking\";s:13:\"Lucas Karpiuk\";s:8:\"zaguiini\";s:19:\"Luis Felipe Zaguini\";s:11:\"luisherranz\";s:11:\"luisherranz\";s:12:\"lukecavanagh\";s:13:\"Luke Cavanagh\";s:6:\"pyrobd\";s:12:\"Lukman Nakib\";s:18:\"michelangelovandam\";s:10:\"M. van Dam\";s:13:\"macbookandrew\";s:13:\"macbookandrew\";s:8:\"mashikag\";s:6:\"Maciej\";s:9:\"onemaggie\";s:14:\"Maggie Cabrera\";s:7:\"maguijo\";s:7:\"maguijo\";s:6:\"mhimon\";s:17:\"Mahbub Hasan Imon\";s:8:\"malthert\";s:8:\"malthert\";s:9:\"manfcarlo\";s:9:\"manfcarlo\";s:14:\"fullofcaffeine\";s:23:\"Marcelo de Moraes Serpa\";s:4:\"mkaz\";s:18:\"Marcus Kazmierczak\";s:5:\"tyxla\";s:14:\"Marin Atanasov\";s:7:\"clorith\";s:12:\"Marius L. J.\";s:11:\"markjaquith\";s:12:\"Mark Jaquith\";s:4:\"mkox\";s:13:\"Markus Kosmal\";s:5:\"marv2\";s:5:\"marv2\";s:6:\"paapst\";s:7:\"Mathieu\";s:12:\"mmaattiiaass\";s:15:\"matiasbenedetto\";s:8:\"mat-lipe\";s:8:\"Mat Lipe\";s:12:\"mattchowning\";s:13:\"Matt Chowning\";s:5:\"sivel\";s:10:\"Matt Martz\";s:12:\"themattroyal\";s:10:\"Matt Royal\";s:8:\"mjstoney\";s:11:\"Matt Stoney\";s:9:\"mattwiebe\";s:10:\"Matt Wiebe\";s:7:\"mauriac\";s:4:\"maur\";s:12:\"azouamauriac\";s:13:\"Mauriac AZOUA\";s:13:\"maxkellermann\";s:14:\"Max Kellermann\";s:9:\"mehedi890\";s:13:\"Mehedi Foysal\";s:5:\"meher\";s:10:\"Meher Bala\";s:4:\"mgol\";s:4:\"mgol\";s:9:\"mburridge\";s:16:\"Michael Burridge\";s:6:\"czapla\";s:17:\"Michal Czaplinski\";s:4:\"mcsf\";s:14:\"Miguel Fonseca\";s:7:\"mauteri\";s:11:\"Mike Auteri\";s:7:\"miken32\";s:7:\"miken32\";s:12:\"mikeschroder\";s:13:\"Mike Schroder\";s:7:\"dimadin\";s:12:\"Milan Dinić\";s:13:\"multidots1896\";s:11:\"Minal Diwan\";s:10:\"mirkolofio\";s:12:\"Mirco Babini\";s:11:\"mmdeveloper\";s:11:\"MMDeveloper\";s:15:\"mohadeseghasemi\";s:16:\"Mohadese Ghasemi\";s:7:\"ahsan03\";s:20:\"Mohammad Ahsan Habib\";s:8:\"mjkhajeh\";s:20:\"MohammadJafar Khajeh\";s:9:\"opurockey\";s:23:\"Mohammad Rockeybul Alam\";s:5:\"mor10\";s:22:\"Morten Rand-Hendriksen\";s:7:\"moushik\";s:7:\"moushik\";s:12:\"computerguru\";s:6:\"mqudsi\";s:20:\"muhammadfaizanhaidar\";s:22:\"Muhammad Faizan Haidar\";s:8:\"mukesh27\";s:14:\"Mukesh Panchal\";s:11:\"amustaque97\";s:14:\"Mustaque Ahmed\";s:12:\"nabil_kadimi\";s:5:\"Nabil\";s:6:\"nagpai\";s:17:\"Nagesh Pai - a11n\";s:19:\"nalininonstopnewsuk\";s:13:\"Nalini Thakor\";s:8:\"nhadsall\";s:6:\"Nathan\";s:9:\"nayana123\";s:14:\"Nayana Maradia\";s:12:\"eidolonnight\";s:17:\"Nicholas Garofalo\";s:9:\"nickciske\";s:10:\"Nick Ciske\";s:4:\"rahe\";s:12:\"Nicolas Juen\";s:16:\"nidhidhandhukiya\";s:16:\"nidhidhandhukiya\";s:10:\"knilkantha\";s:3:\"Nil\";s:10:\"nmschaller\";s:10:\"nmschaller\";s:10:\"noahtallen\";s:10:\"Noah Allen\";s:9:\"oakesjosh\";s:9:\"oakesjosh\";s:9:\"oguzkocer\";s:9:\"oguzkocer\";s:13:\"domainsupport\";s:14:\"Oliver Campion\";s:9:\"alshakero\";s:13:\"Omar Alshaker\";s:5:\"opr18\";s:5:\"opr18\";s:12:\"otshelnik-fm\";s:12:\"Otshelnik-Fm\";s:9:\"overclokk\";s:9:\"overclokk\";s:7:\"ovidiul\";s:7:\"ovidiul\";s:11:\"paaljoachim\";s:20:\"Paal Joachim Romdahl\";s:15:\"pablohoneyhoney\";s:11:\"Pablo Honey\";s:5:\"pls78\";s:14:\"Paolo L. Scala\";s:28:\"paragoninitiativeenterprises\";s:30:\"Paragon Initiative Enterprises\";s:10:\"swissspidy\";s:15:\"Pascal Birchler\";s:7:\"pbearne\";s:11:\"Paul Bearne\";s:6:\"pbiron\";s:10:\"Paul Biron\";s:9:\"paulkevan\";s:9:\"paulkevan\";s:9:\"figureone\";s:9:\"Paul Ryan\";s:10:\"pschrottky\";s:18:\"Paul Von Schrottky\";s:11:\"pavanpatil1\";s:11:\"Pavan Patil\";s:11:\"malinevskiy\";s:5:\"Pavlo\";s:6:\"pbking\";s:6:\"pbking\";s:13:\"pedromendonca\";s:19:\"Pedro Mendon&#231;a\";s:10:\"petaryoast\";s:15:\"Petar Ratković\";s:10:\"psmits1567\";s:11:\"Peter Smits\";s:5:\"westi\";s:14:\"Peter Westwood\";s:21:\"petrosparaskevopoulos\";s:21:\"petrosparaskevopoulos\";s:5:\"walbo\";s:32:\"Petter Walb&#248; Johnsg&#229;rd\";s:8:\"pgpagely\";s:8:\"pgpagely\";s:14:\"johnstonphilip\";s:13:\"Phil Johnston\";s:9:\"nekojonez\";s:16:\"Pieterjan Deneys\";s:11:\"pikamander2\";s:11:\"pikamander2\";s:12:\"webtechpooja\";s:14:\"Pooja Derashri\";s:9:\"pooja1210\";s:19:\"Pooja N Muchandikar\";s:16:\"pravinparmar2404\";s:13:\"Pravin Parmar\";s:9:\"presskopp\";s:9:\"Presskopp\";s:9:\"presstoke\";s:9:\"presstoke\";s:11:\"priyank9033\";s:7:\"Priyank\";s:10:\"pypwalters\";s:10:\"pypwalters\";s:5:\"r-a-y\";s:5:\"r-a-y\";s:11:\"rachelbaker\";s:12:\"Rachel Baker\";s:10:\"rafiahmedd\";s:10:\"Rafi Ahmed\";s:13:\"superpoincare\";s:7:\"Ramanan\";s:14:\"nextend_ramona\";s:6:\"Ramona\";s:7:\"rahmohn\";s:12:\"Ramon Ahnert\";s:9:\"ravipatel\";s:15:\"Ravikumar Patel\";s:9:\"jontyravi\";s:12:\"Ravi Vaghela\";s:13:\"razvanonofrei\";s:14:\"Razvan Onofrei\";s:8:\"rehanali\";s:9:\"Rehan Ali\";s:8:\"tabrisrp\";s:11:\"Remy Perona\";s:12:\"rianrietveld\";s:13:\"Rian Rietveld\";s:13:\"richybkreckel\";s:18:\"Richard B. Kreckel\";s:9:\"richtabor\";s:10:\"Rich Tabor\";s:11:\"ricomoorman\";s:11:\"ricomoorman\";s:8:\"r0bsc0tt\";s:9:\"Rob Scott\";s:6:\"ravanh\";s:21:\"Rolf Allard van Hagen\";s:11:\"rolfsiebers\";s:12:\"Rolf Siebers\";s:9:\"costasovo\";s:20:\"Rostislav Woln&#253;\";s:7:\"rufus87\";s:7:\"Rufus87\";s:4:\"ryan\";s:10:\"Ryan Boren\";s:10:\"bookdude13\";s:13:\"Ryan Fredlund\";s:6:\"rmccue\";s:10:\"Ryan McCue\";s:7:\"welcher\";s:12:\"Ryan Welcher\";s:14:\"sebastienserre\";s:20:\"S&#233;bastien SERRE\";s:5:\"soean\";s:16:\"S&#246;ren Wrede\";s:10:\"sabbir1991\";s:12:\"Sabbir Ahmed\";s:12:\"sabbirshouvo\";s:12:\"Sabbir Hasan\";s:6:\"samiff\";s:10:\"Sami Falah\";s:8:\"sanzeeb3\";s:13:\"Sanjeev Aryal\";s:15:\"santosguillamot\";s:15:\"santosguillamot\";s:8:\"mikachan\";s:12:\"Sarah Norris\";s:6:\"arasae\";s:10:\"Sarah Snow\";s:14:\"sarayourfriend\";s:14:\"sarayourfriend\";s:11:\"sathyapulse\";s:16:\"Sathiyamoorthy V\";s:12:\"sayedulsayem\";s:13:\"Sayedul Sayem\";s:9:\"sbossarte\";s:9:\"sbossarte\";s:7:\"sclayf1\";s:7:\"sclayf1\";s:7:\"swb1192\";s:13:\"Scott Buscemi\";s:11:\"coffee2code\";s:12:\"Scott Reilly\";s:14:\"wonderboymusic\";s:12:\"Scott Taylor\";s:10:\"omaeyusuke\";s:7:\"Segayuu\";s:13:\"sheepysheep60\";s:13:\"sheepysheep60\";s:12:\"shital-patel\";s:15:\"Shital Marakana\";s:14:\"shreyasikhar26\";s:13:\"Shreyas Ikhar\";s:10:\"rsiddharth\";s:19:\"siddharth ravikumar\";s:8:\"nomnom99\";s:18:\"Siddharth Thevaril\";s:6:\"silb3r\";s:6:\"silb3r\";s:10:\"lumpysimon\";s:16:\"Simon Blackbourn\";s:11:\"simonhammes\";s:11:\"simonhammes\";s:5:\"pross\";s:13:\"Simon Prosser\";s:7:\"siobhyb\";s:7:\"Siobhan\";s:6:\"smit08\";s:11:\"Smit Rathod\";s:14:\"snapfractalpop\";s:14:\"snapfractalpop\";s:14:\"socalchristina\";s:14:\"socalchristina\";s:14:\"spencercameron\";s:21:\"Spencer Cameron-Morin\";s:7:\"stacimc\";s:7:\"stacimc\";s:10:\"stefanfisk\";s:10:\"stefanfisk\";s:7:\"satollo\";s:13:\"Stefano Lissa\";s:7:\"ryokuhi\";s:14:\"Stefano Minoia\";s:6:\"hypest\";s:19:\"Stefanos Togoulidis\";s:6:\"netweb\";s:13:\"Stephen Edgar\";s:13:\"stephenharris\";s:14:\"Stephen Harris\";s:13:\"stevegrunwell\";s:14:\"Steve Grunwell\";s:16:\"subrataemfluence\";s:14:\"Subrata Sarkar\";s:10:\"sumitsingh\";s:11:\"Sumit Singh\";s:5:\"5um17\";s:11:\"Sumit Singh\";s:11:\"csesumonpro\";s:12:\"Sumon Sarker\";s:10:\"sunil25393\";s:14:\"SunilPrajapati\";s:13:\"sunyatasattva\";s:13:\"sunyatasattva\";s:6:\"mahype\";s:12:\"Sven Wagener\";s:4:\"cybr\";s:13:\"Sybre Waaijer\";s:7:\"synchro\";s:7:\"Synchro\";s:7:\"inc2734\";s:16:\"Takashi Kitajima\";s:10:\"karmatosed\";s:13:\"Tammie Lister\";s:12:\"tharsheblows\";s:12:\"tharsheblows\";s:15:\"legendusmaximus\";s:6:\"Theo H\";s:7:\"thimalw\";s:17:\"Thimal Wickremage\";s:9:\"twistermc\";s:14:\"Thomas McMahon\";s:11:\"thomasplevy\";s:19:\"Thomas Patrick Levy\";s:5:\"xiven\";s:11:\"Thomas Pike\";s:10:\"tillkruess\";s:15:\"Till Kr&#252;ss\";s:9:\"waterfire\";s:15:\"Tim Blankenship\";s:6:\"tnolte\";s:9:\"Tim Nolte\";s:17:\"timothyblynjacobs\";s:14:\"Timothy Jacobs\";s:12:\"tobifjellner\";s:33:\"tobifjellner (Tor-Bjorn Fjellner)\";s:12:\"tomjdevisser\";s:3:\"Tom\";s:11:\"tomasztunik\";s:12:\"Tomasz Tunik\";s:7:\"tomalec\";s:5:\"Tomek\";s:11:\"shimotomoki\";s:16:\"Tomoki Shimomura\";s:9:\"ttahmouch\";s:13:\"Tony Tahmouch\";s:9:\"toro_unit\";s:25:\"Toro_Unit (Hiroshi Urabe)\";s:10:\"zodiac1978\";s:18:\"Torsten Landsiedel\";s:8:\"sierratr\";s:5:\"Tracy\";s:7:\"trex005\";s:7:\"trex005\";s:7:\"tszming\";s:7:\"tszming\";s:6:\"tumas2\";s:6:\"tumas2\";s:8:\"twstokes\";s:8:\"twstokes\";s:9:\"junsuijin\";s:12:\"Tynan Beatty\";s:14:\"tzipporahwitty\";s:14:\"tzipporahwitty\";s:9:\"uday17035\";s:13:\"Uday Kokitkar\";s:8:\"ugljanin\";s:8:\"ugljanin\";s:12:\"ugyensupport\";s:11:\"Ugyen Dorji\";s:14:\"grapplerulrich\";s:6:\"Ulrich\";s:12:\"utkarshpatel\";s:7:\"Utkarsh\";s:7:\"valer1e\";s:7:\"valer1e\";s:11:\"versusbassz\";s:11:\"versusbassz\";s:8:\"vcanales\";s:15:\"Vicente Canales\";s:8:\"elifvish\";s:12:\"Vishal Kumar\";s:9:\"vladolaru\";s:10:\"vlad.olaru\";s:19:\"volodymyrkolesnykov\";s:20:\"Volodymyr Kolesnykov\";s:6:\"vortfu\";s:6:\"vortfu\";s:12:\"webmandesign\";s:33:\"WebMan Design &#124; Oliver Juhas\";s:10:\"wendyjchen\";s:10:\"Wendy Chen\";s:5:\"west7\";s:10:\"Wes Theron\";s:11:\"westonruter\";s:12:\"Weston Ruter\";s:13:\"whoisnegrello\";s:13:\"whoisnegrello\";s:11:\"skorasaurus\";s:10:\"Will Skora\";s:10:\"wpmakenorg\";s:10:\"wpmakenorg\";s:6:\"wpsoul\";s:6:\"wpsoul\";s:11:\"wraithkenny\";s:11:\"WraithKenny\";s:7:\"wslyhbb\";s:7:\"wslyhbb\";s:7:\"upsuper\";s:11:\"Xidorn Quan\";s:9:\"fierevere\";s:3:\"Yui\";s:9:\"dolphingg\";s:15:\"Yunus Ertuğrul\";s:7:\"zebulan\";s:17:\"Zebulan Stanphill\";s:5:\"znuff\";s:5:\"znuff\";s:6:\"chesio\";s:16:\"Česlav Przywara\";}}s:10:\"validators\";a:4:{s:4:\"name\";s:11:\"Translators\";s:4:\"type\";s:7:\"compact\";s:7:\"shuffle\";b:1;s:4:\"data\";a:9:{s:9:\"aliceorru\";a:3:{i:0;s:9:\"aliceorru\";i:1;s:32:\"31f614f73f89334de060f5a4e1a343cc\";i:2;s:9:\"aliceorru\";}s:6:\"flodit\";a:3:{i:0;s:6:\"flodit\";i:1;s:32:\"ba8c209103e9526d7e1a50e35a2e8d21\";i:2;s:6:\"flodit\";}s:12:\"allegretta92\";a:3:{i:0;s:13:\"G. Allegretta\";i:1;s:32:\"2c574df2dd16a3c520af89e2948ec479\";i:2;s:12:\"allegretta92\";}s:7:\"lasacco\";a:3:{i:0;s:11:\"Laura Sacco\";i:1;s:32:\"b95b25a3eaa272ac1585a61abe32b24f\";i:2;s:7:\"lasacco\";}s:8:\"lidialab\";a:3:{i:0;s:16:\"Lidia Pellizzaro\";i:1;s:32:\"ac730c635c28f198ff1a2ed4abcdfee8\";i:2;s:8:\"lidialab\";}s:11:\"darkavenger\";a:3:{i:0;s:13:\"Luisa Ravelli\";i:1;s:32:\"881974f02146ea0b239f9b6d96a57b6d\";i:2;s:11:\"darkavenger\";}s:8:\"steveagl\";a:3:{i:0;s:16:\"Stefano Aglietti\";i:1;s:32:\"e9e851d3c97a025a0cbb0fbe06d9e6a7\";i:2;s:8:\"steveagl\";}s:10:\"deadpool76\";a:3:{i:0;s:15:\"Stefano Cassone\";i:1;s:32:\"e8180dbd7ed06cf46b1b02f43220ce56\";i:2;s:10:\"deadpool76\";}s:5:\"wolly\";a:3:{i:0;s:23:\"Wolly aka Paolo Valenti\";i:1;s:32:\"727bbffc80ef102664b56decc2a88cda\";i:2;s:5:\"wolly\";}}}s:11:\"translators\";a:3:{s:4:\"name\";b:0;s:4:\"type\";s:4:\"list\";s:4:\"data\";a:10:{s:8:\"carinato\";s:8:\"carinato\";s:13:\"paroleinlinea\";s:17:\"Cristina Mantione\";s:8:\"itapress\";s:8:\"itapress\";s:10:\"matteoenna\";s:11:\"Matteo Enna\";s:9:\"matteomax\";s:9:\"matteomax\";s:12:\"paolobeccari\";s:13:\"Paolo Beccari\";s:9:\"piermario\";s:20:\"Piermario Orecchioni\";s:7:\"furma94\";s:17:\"Raffaele Formaggi\";s:24:\"translationsbyautomattic\";s:26:\"Translations by Automattic\";s:14:\"woodstarmilano\";s:14:\"woodstarmilano\";}}s:9:\"libraries\";a:3:{s:4:\"name\";s:18:\"External Libraries\";s:4:\"type\";s:9:\"libraries\";s:4:\"data\";a:42:{i:0;a:2:{i:0;s:14:\"Babel Polyfill\";i:1;s:41:\"https://babeljs.io/docs/en/babel-polyfill\";}i:1;a:2:{i:0;s:11:\"Backbone.js\";i:1;s:22:\"http://backbonejs.org/\";}i:2;a:2:{i:0;s:10:\"Class POP3\";i:1;s:25:\"https://squirrelmail.org/\";}i:3;a:2:{i:0;s:12:\"clipboard.js\";i:1;s:24:\"https://clipboardjs.com/\";}i:4;a:2:{i:0;s:7:\"Closest\";i:1;s:40:\"https://github.com/jonathantneal/closest\";}i:5;a:2:{i:0;s:10:\"CodeMirror\";i:1;s:23:\"https://codemirror.net/\";}i:6;a:2:{i:0;s:16:\"Color Animations\";i:1;s:33:\"https://plugins.jquery.com/color/\";}i:7;a:2:{i:0;s:8:\"getID3()\";i:1;s:30:\"http://getid3.sourceforge.net/\";}i:8;a:2:{i:0;s:8:\"FormData\";i:1;s:40:\"https://github.com/jimmywarting/FormData\";}i:9;a:2:{i:0;s:15:\"Horde Text Diff\";i:1;s:23:\"https://pear.horde.org/\";}i:10;a:2:{i:0;s:11:\"hoverIntent\";i:1;s:57:\"http://cherne.net/brian/resources/jquery.hoverIntent.html\";}i:11;a:2:{i:0;s:13:\"imgAreaSelect\";i:1;s:42:\"http://odyniec.net/projects/imgareaselect/\";}i:12;a:2:{i:0;s:4:\"Iris\";i:1;s:34:\"https://github.com/Automattic/Iris\";}i:13;a:2:{i:0;s:6:\"jQuery\";i:1;s:19:\"https://jquery.com/\";}i:14;a:2:{i:0;s:9:\"jQuery UI\";i:1;s:21:\"https://jqueryui.com/\";}i:15;a:2:{i:0;s:14:\"jQuery Hotkeys\";i:1;s:41:\"https://github.com/tzuryby/jquery.hotkeys\";}i:16;a:2:{i:0;s:22:\"jQuery serializeObject\";i:1;s:49:\"http://benalman.com/projects/jquery-misc-plugins/\";}i:17;a:2:{i:0;s:12:\"jQuery.query\";i:1;s:40:\"https://plugins.jquery.com/query-object/\";}i:18;a:2:{i:0;s:14:\"jQuery.suggest\";i:1;s:43:\"https://github.com/pvulgaris/jquery.suggest\";}i:19;a:2:{i:0;s:21:\"jQuery UI Touch Punch\";i:1;s:27:\"http://touchpunch.furf.com/\";}i:20;a:2:{i:0;s:5:\"json2\";i:1;s:43:\"https://github.com/douglascrockford/JSON-js\";}i:21;a:2:{i:0;s:6:\"Lodash\";i:1;s:19:\"https://lodash.com/\";}i:22;a:2:{i:0;s:7:\"Masonry\";i:1;s:28:\"http://masonry.desandro.com/\";}i:23;a:2:{i:0;s:15:\"MediaElement.js\";i:1;s:26:\"http://mediaelementjs.com/\";}i:24;a:2:{i:0;s:6:\"Moment\";i:1;s:20:\"http://momentjs.com/\";}i:25;a:2:{i:0;s:6:\"PclZip\";i:1;s:33:\"http://www.phpconcept.net/pclzip/\";}i:26;a:2:{i:0;s:6:\"PemFTP\";i:1;s:71:\"https://www.phpclasses.org/package/1743-PHP-FTP-client-in-pure-PHP.html\";}i:27;a:2:{i:0;s:6:\"phpass\";i:1;s:31:\"http://www.openwall.com/phpass/\";}i:28;a:2:{i:0;s:9:\"PHPMailer\";i:1;s:38:\"https://github.com/PHPMailer/PHPMailer\";}i:29;a:2:{i:0;s:8:\"Plupload\";i:1;s:24:\"http://www.plupload.com/\";}i:30;a:2:{i:0;s:13:\"random_compat\";i:1;s:42:\"https://github.com/paragonie/random_compat\";}i:31;a:2:{i:0;s:5:\"React\";i:1;s:20:\"https://reactjs.org/\";}i:32;a:2:{i:0;s:5:\"Redux\";i:1;s:21:\"https://redux.js.org/\";}i:33;a:2:{i:0;s:8:\"Requests\";i:1;s:31:\"http://requests.ryanmccue.info/\";}i:34;a:2:{i:0;s:9:\"SimplePie\";i:1;s:21:\"http://simplepie.org/\";}i:35;a:2:{i:0;s:27:\"The Incutio XML-RPC Library\";i:1;s:42:\"https://code.google.com/archive/p/php-ixr/\";}i:36;a:2:{i:0;s:8:\"Thickbox\";i:1;s:32:\"http://codylindley.com/thickbox/\";}i:37;a:2:{i:0;s:7:\"TinyMCE\";i:1;s:24:\"https://www.tinymce.com/\";}i:38;a:2:{i:0;s:7:\"Twemoji\";i:1;s:34:\"https://github.com/twitter/twemoji\";}i:39;a:2:{i:0;s:13:\"Underscore.js\";i:1;s:24:\"http://underscorejs.org/\";}i:40;a:2:{i:0;s:12:\"whatwg-fetch\";i:1;s:31:\"https://github.com/github/fetch\";}i:41;a:2:{i:0;s:6:\"zxcvbn\";i:1;s:33:\"https://github.com/dropbox/zxcvbn\";}}}}s:4:\"data\";a:2:{s:8:\"profiles\";s:33:\"https://profiles.wordpress.org/%s\";s:7:\"version\";s:3:\"6.0\";}}', 'no'),
(362, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(364, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"it_IT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/it_IT/wordpress-6.0.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1657093359;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(365, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1657093362;s:7:\"checked\";a:3:{s:8:\"my-theme\";s:3:\"1.0\";s:13:\"myThemeServer\";s:3:\"1.0\";s:14:\"myThemeServer2\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(366, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1657093362;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(373, '_site_transient_timeout_theme_roots', '1657095162', 'no'),
(374, '_site_transient_theme_roots', 'a:3:{s:8:\"my-theme\";s:7:\"/themes\";s:13:\"myThemeServer\";s:7:\"/themes\";s:14:\"myThemeServer2\";s:7:\"/themes\";}', 'no'),
(442, '_transient_timeout_global_styles_my-theme', '1657099735', 'no'),
(443, '_transient_global_styles_my-theme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1657023596:1'),
(14, 11, '_edit_lock', '1656949200:1'),
(15, 13, '_edit_lock', '1656949210:1'),
(16, 15, '_edit_lock', '1656949220:1'),
(17, 17, '_edit_lock', '1656949227:1'),
(18, 19, '_edit_lock', '1656949251:1'),
(19, 21, '_edit_lock', '1656949259:1'),
(20, 23, '_edit_lock', '1657005791:1'),
(21, 25, '_edit_lock', '1656949280:1'),
(22, 27, '_edit_lock', '1657006078:1'),
(23, 29, '_edit_lock', '1656949298:1'),
(24, 31, '_edit_lock', '1656949306:1'),
(25, 33, '_edit_lock', '1656949311:1'),
(26, 35, '_edit_lock', '1656949317:1'),
(27, 37, '_edit_lock', '1656949324:1'),
(28, 39, '_edit_lock', '1656949330:1'),
(29, 41, '_edit_lock', '1656949336:1'),
(30, 43, '_edit_lock', '1656949341:1'),
(31, 45, '_edit_lock', '1656949349:1'),
(32, 23, '_edit_last', '1'),
(33, 27, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2022-07-04 17:40:42', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-04 17:40:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(8, 1, '2022-07-04 17:42:16', '2022-07-04 15:42:16', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1914 translation by H. Rackham</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1914 translation by H. Rackham</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>\n<!-- /wp:paragraph -->', 'home-page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2022-07-05 14:22:19', '2022-07-05 12:22:19', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-07-04 17:42:10', '2022-07-04 15:42:10', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-07-04 17:42:10', '2022-07-04 15:42:10', '', 0, 'http://localhost/wordpress/2022/07/04/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-07-04 17:42:16', '2022-07-04 15:42:16', '', 'home-page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 17:42:16', '2022-07-04 15:42:16', '', 8, 'http://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-07-04 17:42:23', '2022-07-04 15:42:23', '', 'acconto', '', 'publish', 'closed', 'closed', '', 'acconto', '', '', '2022-07-04 17:42:23', '2022-07-04 15:42:23', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-07-04 17:42:23', '2022-07-04 15:42:23', '', 'acconto', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-07-04 17:42:23', '2022-07-04 15:42:23', '', 11, 'http://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-07-04 17:42:32', '2022-07-04 15:42:32', '', 'allegati', '', 'publish', 'closed', 'closed', '', 'allegati', '', '', '2022-07-04 17:42:32', '2022-07-04 15:42:32', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-07-04 17:42:32', '2022-07-04 15:42:32', '', 'allegati', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-04 17:42:32', '2022-07-04 15:42:32', '', 13, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-07-04 17:42:43', '2022-07-04 15:42:43', '', 'appuntamenti', '', 'publish', 'closed', 'closed', '', 'appuntamenti', '', '', '2022-07-04 17:42:43', '2022-07-04 15:42:43', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-07-04 17:42:43', '2022-07-04 15:42:43', '', 'appuntamenti', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-07-04 17:42:43', '2022-07-04 15:42:43', '', 15, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2022-07-04 17:42:51', '2022-07-04 15:42:51', '', 'caso', '', 'publish', 'closed', 'closed', '', 'caso', '', '', '2022-07-04 17:42:51', '2022-07-04 15:42:51', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-07-04 17:42:51', '2022-07-04 15:42:51', '', 'caso', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-07-04 17:42:51', '2022-07-04 15:42:51', '', 17, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-07-04 17:43:15', '2022-07-04 15:43:15', '', 'chiamata', '', 'publish', 'closed', 'closed', '', 'chiamata', '', '', '2022-07-04 17:43:15', '2022-07-04 15:43:15', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2022-07-04 17:43:15', '2022-07-04 15:43:15', '', 'chiamata', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2022-07-04 17:43:15', '2022-07-04 15:43:15', '', 19, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-07-04 17:43:22', '2022-07-04 15:43:22', '', 'fascicolo', '', 'publish', 'closed', 'closed', '', 'fascicolo', '', '', '2022-07-04 17:43:22', '2022-07-04 15:43:22', '', 0, 'http://localhost/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2022-07-04 17:43:22', '2022-07-04 15:43:22', '', 'fascicolo', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-07-04 17:43:22', '2022-07-04 15:43:22', '', 21, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-07-04 17:43:35', '2022-07-04 15:43:35', '', 'fascicolo_s', '', 'publish', 'closed', 'closed', '', 'fascicolo_s', '', '', '2022-07-05 09:23:11', '2022-07-05 07:23:11', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2022-07-04 17:43:35', '2022-07-04 15:43:35', '', 'fascicolo-specialista', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-07-04 17:43:35', '2022-07-04 15:43:35', '', 23, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-07-04 17:43:43', '2022-07-04 15:43:43', '', 'gestito', '', 'publish', 'closed', 'closed', '', 'gestito', '', '', '2022-07-04 17:43:43', '2022-07-04 15:43:43', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2022-07-04 17:43:43', '2022-07-04 15:43:43', '', 'gestito', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-07-04 17:43:43', '2022-07-04 15:43:43', '', 25, 'http://localhost/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-07-04 17:43:55', '2022-07-04 15:43:55', '', 'metodo_p', '', 'publish', 'closed', 'closed', '', 'metodo_p', '', '', '2022-07-05 09:27:58', '2022-07-05 07:27:58', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2022-07-04 17:43:55', '2022-07-04 15:43:55', '', 'metodo-pagamento', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2022-07-04 17:43:55', '2022-07-04 15:43:55', '', 27, 'http://localhost/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-07-04 17:44:02', '2022-07-04 15:44:02', '', 'pagamento', '', 'publish', 'closed', 'closed', '', 'pagamento', '', '', '2022-07-04 17:44:02', '2022-07-04 15:44:02', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2022-07-04 17:44:02', '2022-07-04 15:44:02', '', 'pagamento', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-07-04 17:44:02', '2022-07-04 15:44:02', '', 29, 'http://localhost/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-07-04 17:44:09', '2022-07-04 15:44:09', '', 'prospective', '', 'publish', 'closed', 'closed', '', 'prospective', '', '', '2022-07-04 17:44:09', '2022-07-04 15:44:09', '', 0, 'http://localhost/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2022-07-04 17:44:09', '2022-07-04 15:44:09', '', 'prospective', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-07-04 17:44:09', '2022-07-04 15:44:09', '', 31, 'http://localhost/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-07-04 17:44:15', '2022-07-04 15:44:15', '', 'rata', '', 'publish', 'closed', 'closed', '', 'rata', '', '', '2022-07-04 17:44:15', '2022-07-04 15:44:15', '', 0, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2022-07-04 17:44:15', '2022-07-04 15:44:15', '', 'rata', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-07-04 17:44:15', '2022-07-04 15:44:15', '', 33, 'http://localhost/wordpress/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-07-04 17:44:20', '2022-07-04 15:44:20', '', 'referente', '', 'publish', 'closed', 'closed', '', 'referente', '', '', '2022-07-04 17:44:20', '2022-07-04 15:44:20', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2022-07-04 17:44:20', '2022-07-04 15:44:20', '', 'referente', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-07-04 17:44:20', '2022-07-04 15:44:20', '', 35, 'http://localhost/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-07-04 17:44:28', '2022-07-04 15:44:28', '', 'specialista', '', 'publish', 'closed', 'closed', '', 'specialista', '', '', '2022-07-04 17:44:28', '2022-07-04 15:44:28', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2022-07-04 17:44:28', '2022-07-04 15:44:28', '', 'specialista', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2022-07-04 17:44:28', '2022-07-04 15:44:28', '', 37, 'http://localhost/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-07-04 17:44:34', '2022-07-04 15:44:34', '', 'spese', '', 'publish', 'closed', 'closed', '', 'spese', '', '', '2022-07-04 17:44:34', '2022-07-04 15:44:34', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2022-07-04 17:44:34', '2022-07-04 15:44:34', '', 'spese', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-07-04 17:44:34', '2022-07-04 15:44:34', '', 39, 'http://localhost/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-07-04 17:44:39', '2022-07-04 15:44:39', '', 'sponsor', '', 'publish', 'closed', 'closed', '', 'sponsor', '', '', '2022-07-04 17:44:39', '2022-07-04 15:44:39', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2022-07-04 17:44:39', '2022-07-04 15:44:39', '', 'sponsor', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-07-04 17:44:39', '2022-07-04 15:44:39', '', 41, 'http://localhost/wordpress/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-07-04 17:44:45', '2022-07-04 15:44:45', '', 'stato', '', 'publish', 'closed', 'closed', '', 'stato', '', '', '2022-07-04 17:44:45', '2022-07-04 15:44:45', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 1, '2022-07-04 17:44:45', '2022-07-04 15:44:45', '', 'stato', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-07-04 17:44:45', '2022-07-04 15:44:45', '', 43, 'http://localhost/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-07-04 17:44:52', '2022-07-04 15:44:52', '', 'ufficio', '', 'publish', 'closed', 'closed', '', 'ufficio', '', '', '2022-07-04 17:44:52', '2022-07-04 15:44:52', '', 0, 'http://localhost/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2022-07-04 17:44:52', '2022-07-04 15:44:52', '', 'ufficio', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2022-07-04 17:44:52', '2022-07-04 15:44:52', '', 45, 'http://localhost/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-07-05 09:23:11', '2022-07-05 07:23:11', '', 'fascicolo_s', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-07-05 09:23:11', '2022-07-05 07:23:11', '', 23, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-07-05 09:27:58', '2022-07-05 07:27:58', '', 'metodo_p', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2022-07-05 09:27:58', '2022-07-05 07:27:58', '', 27, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-07-05 14:22:16', '2022-07-05 12:22:16', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-my-theme', '', '', '2022-07-05 14:22:16', '2022-07-05 12:22:16', '', 0, 'http://localhost/wordpress/2022/07/05/wp-global-styles-my-theme/', 0, 'wp_global_styles', '', 0),
(50, 1, '2022-07-05 14:22:19', '2022-07-05 12:22:19', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1914 translation by H. Rackham</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1914 translation by H. Rackham</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>\n<!-- /wp:paragraph -->', 'home-page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-05 14:22:19', '2022-07-05 12:22:19', '', 8, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Senza categoria', 'senza-categoria', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'my-theme', 'my-theme', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 2, 0),
(49, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'default_password_nag', ''),
(16, 1, 'show_welcome_panel', '1'),
(17, 1, 'session_tokens', 'a:1:{s:64:\"dd0855700844ffe8eca967805adc97cbd6dcafcadb3900b8f53babb8a0001803\";a:4:{s:10:\"expiration\";i:1658158839;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1656949239;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'wp_user-settings', ''),
(20, 1, 'wp_user-settings-time', '1656949274');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dump dei dati per la tabella `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Br3ub1/b9iKmSsWap5uKlDMU9gjSfS/', 'admin', 'mattzanini2@gmail.com', 'http://localhost/wordpress', '2022-07-04 15:39:24', '', 0, 'admin');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indici per le tabelle `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indici per le tabelle `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indici per le tabelle `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indici per le tabelle `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indici per le tabelle `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indici per le tabelle `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indici per le tabelle `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indici per le tabelle `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT per la tabella `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT per la tabella `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
