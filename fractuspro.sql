-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2018 г., 12:10
-- Версия сервера: 5.7.13
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fractuspro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_commentmeta`
--

CREATE TABLE IF NOT EXISTS `y65g_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_comments`
--

CREATE TABLE IF NOT EXISTS `y65g_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_comments`
--

INSERT INTO `y65g_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-26 15:32:27', '2018-02-26 12:32:27', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_links`
--

CREATE TABLE IF NOT EXISTS `y65g_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_options`
--

CREATE TABLE IF NOT EXISTS `y65g_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_options`
--

INSERT INTO `y65g_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www/fractus.pro', 'yes'),
(2, 'home', 'http://www/fractus.pro', 'yes'),
(3, 'blogname', 'Fractus', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'panchenko30394@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:33:"vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:41:"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:48:"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:37:"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:29:"vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=57&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:27:"js_composer/js_composer.php";i:1;s:15:"mmenu/mmenu.php";}', 'yes'),
(34, 'category_base', '/category/', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:73:"E:\\OpenServer\\domains\\www\\fractus.pro/wp-content/themes/fractus/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'fractus', 'yes'),
(41, 'stylesheet', 'fractus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '57', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'y65g_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1522321050;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1522326747;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1522326779;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519734803;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', '', 'yes'),
(151, 'theme_mods_fractus', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:3:"top";i:3;s:6:"bottom";i:0;s:9:"main-menu";i:0;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(226, 'page_for_posts', '54', 'yes'),
(297, 'new_admin_email', 'panchenko30394@gmail.com', 'yes'),
(321, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(324, 'recently_activated', 'a:1:{s:23:"mobile-menu/mobmenu.php";i:1520859177;}', 'yes'),
(333, 'vc_version', '5.4.6', 'yes'),
(334, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(335, 'license_key_token', '1520614016|90A4IuV6uKdYjL3nxZvx', 'yes'),
(376, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:20:"mobile-menu/freemius";O:8:"stdClass":3:{s:7:"version";s:7:"1.2.1.5";s:9:"timestamp";i:1520859238;s:11:"plugin_path";s:23:"mobile-menu/mobmenu.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:23:"mobile-menu/mobmenu.php";s:8:"sdk_path";s:20:"mobile-menu/freemius";s:7:"version";s:7:"1.2.1.5";s:13:"in_activation";b:1;s:9:"timestamp";i:1520859238;}}', 'yes'),
(377, 'fs_debug_mode', '', 'yes'),
(378, 'fs_accounts', 'a:11:{s:11:"plugin_data";a:1:{s:11:"mobile-menu";a:17:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:80:"E:/OpenServer/domains/www/fractus.pro/wp-content/plugins/mobile-menu/mobmenu.php";}s:17:"install_timestamp";i:1520855068;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.2.1.5";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.5.1";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:3:"www";s:9:"server_ip";s:9:"127.0.0.1";s:9:"is_active";b:1;s:9:"timestamp";i:1520855068;s:7:"version";s:5:"2.5.1";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1520859238;s:20:"activation_timestamp";i:1520855077;}}s:13:"file_slug_map";a:1:{s:23:"mobile-menu/mobmenu.php";s:11:"mobile-menu";}s:7:"plugins";a:1:{s:11:"mobile-menu";O:9:"FS_Plugin":16:{s:16:"parent_plugin_id";N;s:5:"title";s:11:"Mobile Menu";s:4:"slug";s:11:"mobile-menu";s:4:"type";N;s:4:"file";s:23:"mobile-menu/mobmenu.php";s:7:"version";s:5:"2.5.1";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_1ec93edfb66875251b62505b96489";s:10:"secret_key";N;s:2:"id";s:3:"235";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"9b279a4b8c0865ed2dd2bbc3b2979a14";s:5:"plans";a:1:{s:11:"mobile-menu";a:3:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjM1";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MzIx";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wMy0xNiAxMTo0MjoyNw==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjM1";s:4:"name";s:4:"cHJv";s:5:"title";s:4:"UHJv";s:11:"description";s:36:"V1AgTW9iaWxlIE1lbnUgUHJvIFZlcnNpb24=";s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:0:"";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";s:4:"MTQ=";s:23:"is_require_subscription";s:4:"MQ==";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"c3VwcG9ydEB3cG1vYmlsZW1lbnUuY29t";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:4:"MQ==";s:2:"id";s:8:"MTE4Ng==";s:7:"updated";s:28:"MjAxOC0wMS0xMCAxNjoyNjo1NQ==";s:7:"created";s:28:"MjAxNy0wMy0wOCAxNDoxNzo0NA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:2;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjM1";s:4:"name";s:20:"d29vY29tbWVyY2VfcHJv";s:5:"title";s:20:"V29vY29tbWVyY2UgUFJP";s:11:"description";s:44:"V1AgTW9iaWxlIE1lbnUgV29vY29tbWVyY2UgUGxhbg==";s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:0:"";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MjY5MA==";s:7:"updated";s:28:"MjAxOC0wMy0wNSAxMjo1NzozMw==";s:7:"created";s:28:"MjAxOC0wMy0wNSAxMjozNDozNg==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:5:"sites";a:1:{s:11:"mobile-menu";O:7:"FS_Site":24:{s:4:"slug";s:11:"mobile-menu";s:7:"site_id";s:7:"3613170";s:9:"plugin_id";s:3:"235";s:7:"user_id";s:7:"1023379";s:5:"title";s:7:"Fractus";s:3:"url";s:22:"http://www/fractus.pro";s:7:"version";s:5:"2.5.1";s:8:"language";s:5:"ru-RU";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.9.4";s:11:"sdk_version";s:7:"1.2.1.5";s:28:"programming_language_version";s:5:"7.0.8";s:4:"plan";O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjM1";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MzIx";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wMy0xNiAxMTo0MjoyNw==";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:10:"public_key";s:32:"pk_c8ef332160997a4cbf242eda83aa7";s:10:"secret_key";s:32:"sk_+a]f#).DI<nk486%j?[(Tjkg[A*DZ";s:2:"id";s:7:"1334435";s:7:"updated";N;s:7:"created";s:19:"2018-03-12 11:44:37";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1520859176;s:3:"md5";s:32:"458d7bf09fdfc04e88d709c0e01d312c";s:7:"plugins";a:4:{s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:5:"4.0.2";s:5:"title";s:17:"Akismet Anti-Spam";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:3:"1.6";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:27:"js_composer/js_composer.php";a:5:{s:4:"slug";s:11:"js_composer";s:7:"version";s:5:"5.4.6";s:5:"title";s:21:"WPBakery Page Builder";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:23:"mobile-menu/mobmenu.php";a:5:{s:4:"slug";s:11:"mobile-menu";s:7:"version";s:5:"2.5.1";s:5:"title";s:11:"Mobile Menu";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1520859176;s:3:"md5";s:32:"bba8afebd9de7d971121a73011131230";s:6:"themes";a:4:{s:7:"fractus";a:5:{s:4:"slug";s:7:"fractus";s:7:"version";s:0:"";s:5:"title";s:0:"";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:13:"twentyfifteen";a:5:{s:4:"slug";s:13:"twentyfifteen";s:7:"version";s:3:"1.9";s:5:"title";s:14:"Twenty Fifteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:15:"twentyseventeen";a:5:{s:4:"slug";s:15:"twentyseventeen";s:7:"version";s:3:"1.4";s:5:"title";s:16:"Twenty Seventeen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:13:"twentysixteen";a:5:{s:4:"slug";s:13:"twentysixteen";s:7:"version";s:3:"1.4";s:5:"title";s:14:"Twenty Sixteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"users";a:1:{i:1023379;O:7:"FS_User":12:{s:5:"email";s:24:"panchenko30394@gmail.com";s:5:"first";s:6:"nastya";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_00c1debad8bec57ee4e65159e92ca";s:10:"secret_key";s:32:"sk_x3X!^^*8v+jiM~ghZgxQ*Itmr^%U3";s:2:"id";s:7:"1023379";s:7:"updated";N;s:7:"created";s:19:"2018-03-12 11:44:37";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:8:"licenses";a:1:{s:11:"mobile-menu";a:1:{i:1023379;b:0;}}s:13:"admin_notices";a:1:{s:11:"mobile-menu";a:0:{}}}', 'yes'),
(379, 'fs_api_cache', 'a:0:{}', 'yes'),
(383, 'mobmenu_options', 's:3542:"a:55:{s:10:"right_menu";s:23:"Верхнее меню";s:30:"right_menu_parent_link_submenu";s:1:"0";s:16:"c3775d4e353209e9";s:0:"";s:15:"right_menu_text";s:0:"";s:27:"text_before_right_icon_font";s:540:"a:17:{s:11:"font-family";s:5:"Dosis";s:9:"font-type";s:6:"google";s:5:"color";s:7:"#333333";s:9:"font-size";s:7:"inherit";s:11:"font-weight";s:7:"inherit";s:10:"font-style";s:6:"normal";s:11:"line-height";s:5:"1.5em";s:14:"letter-spacing";s:6:"normal";s:14:"text-transform";s:4:"none";s:12:"font-variant";s:6:"normal";s:20:"text-shadow-location";s:4:"none";s:20:"text-shadow-distance";s:3:"0px";s:16:"text-shadow-blur";s:3:"0px";s:17:"text-shadow-color";s:7:"#333333";s:19:"text-shadow-opacity";s:1:"1";s:4:"dark";s:0:"";s:4:"text";s:0:"";}";s:22:"right_menu_icon_action";s:1:"1";s:14:"right_icon_url";s:0:"";s:21:"right_icon_url_target";s:1:"1";s:19:"right_menu_icon_opt";s:1:"0";s:20:"right_menu_icon_font";s:4:"menu";s:20:"right_icon_font_size";s:2:"30";s:15:"right_menu_icon";s:0:"";s:21:"right_icon_top_margin";s:1:"5";s:23:"right_icon_right_margin";s:1:"5";s:16:"266c98bedb84f403";s:0:"";s:19:"right_menu_bg_image";s:0:"";s:21:"right_menu_bg_opacity";s:3:"100";s:24:"right_menu_bg_image_size";s:5:"cover";s:22:"right_menu_bg_gradient";s:0:"";s:22:"right_menu_width_units";s:1:"1";s:16:"right_menu_width";s:3:"270";s:27:"right_menu_width_percentage";s:2:"70";s:26:"right_menu_content_padding";s:1:"0";s:15:"right_menu_font";s:540:"a:17:{s:11:"font-family";s:5:"Dosis";s:9:"font-type";s:6:"google";s:5:"color";s:7:"#333333";s:9:"font-size";s:7:"inherit";s:11:"font-weight";s:7:"inherit";s:10:"font-style";s:6:"normal";s:11:"line-height";s:5:"1.5em";s:14:"letter-spacing";s:6:"normal";s:14:"text-transform";s:4:"none";s:12:"font-variant";s:6:"normal";s:20:"text-shadow-location";s:4:"none";s:20:"text-shadow-distance";s:3:"0px";s:16:"text-shadow-blur";s:3:"0px";s:17:"text-shadow-color";s:7:"#333333";s:19:"text-shadow-opacity";s:1:"1";s:4:"dark";s:0:"";s:4:"text";s:0:"";}";s:7:"enabled";s:1:"1";s:13:"width_trigger";s:3:"992";s:16:"edc117863e7ad302";s:0:"";s:16:"enable_left_menu";s:1:"0";s:17:"enable_right_menu";s:1:"1";s:17:"menu_display_type";s:13:"slideout-push";s:16:"967bcf13a38e2bab";s:0:"";s:22:"default_hided_elements";s:42:"a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";}";s:13:"hide_elements";s:9:".top-menu";s:15:"sticky_elements";s:0:"";s:10:"custom_css";s:0:"";s:9:"custom_js";s:0:"";s:16:"7f9431a9357ff1b7";s:0:"";s:20:"enabled_naked_header";s:1:"1";s:18:"disabled_logo_text";s:1:"1";s:16:"115d6d1eb7b7009c";s:0:"";s:12:"enabled_logo";s:1:"0";s:15:"header_branding";s:4:"text";s:8:"logo_img";s:0:"";s:11:"logo_height";s:1:"0";s:17:"disabled_logo_url";s:1:"0";s:8:"logo_url";s:0:"";s:15:"logo_top_margin";s:1:"0";s:16:"76363b6e9af60ad5";s:0:"";s:13:"header_height";s:2:"40";s:11:"header_text";s:0:"";s:16:"header_font_size";s:2:"20";s:17:"header_text_align";s:6:"center";s:23:"header_text_left_margin";s:2:"20";s:24:"header_text_right_margin";s:2:"20";s:16:"header_menu_font";s:537:"a:17:{s:11:"font-family";s:5:"Dosis";s:9:"font-type";s:6:"google";s:5:"color";s:7:"#333333";s:9:"font-size";s:4:"20px";s:11:"font-weight";s:7:"inherit";s:10:"font-style";s:6:"normal";s:11:"line-height";s:5:"1.5em";s:14:"letter-spacing";s:6:"normal";s:14:"text-transform";s:4:"none";s:12:"font-variant";s:6:"normal";s:20:"text-shadow-location";s:4:"none";s:20:"text-shadow-distance";s:3:"0px";s:16:"text-shadow-blur";s:3:"0px";s:17:"text-shadow-color";s:7:"#333333";s:19:"text-shadow-opacity";s:1:"1";s:4:"dark";s:0:"";s:4:"text";s:0:"";}";}";', 'yes'),
(394, 'mm_setup', 'a:5:{s:7:"version";s:2:"11";s:4:"menu";s:18:"#menu-location-top";s:6:"button";s:10:"#trig-menu";s:7:"license";s:0:"";s:13:"license_valid";s:0:"";}', 'yes'),
(395, 'mm_menu', 'a:4:{s:8:"position";s:5:"right";s:15:"backgroundcolor";s:7:"#ffffff";s:5:"theme";s:5:"white";s:10:"breakpoint";s:5:"Never";}', 'yes'),
(396, 'mm_header', 'a:12:{s:8:"navigate";s:6:"button";s:14:"navigate_close";s:3:"yes";s:14:"navigate_title";s:8:"Меню";s:5:"image";s:2:"no";s:9:"image_src";s:0:"";s:11:"image_scale";s:7:"contain";s:12:"image_height";s:1:"4";s:11:"searchfield";s:2:"no";s:23:"searchfield_placeholder";s:0:"";s:21:"searchfield_noresults";s:0:"";s:12:"buttons_html";s:0:"";s:16:"buttons_selector";s:0:"";}', 'yes'),
(397, 'mm_accessibility', 'a:2:{s:8:"keyboard";s:3:"yes";s:3:"rtl";s:3:"yes";}', 'yes'),
(398, 'mm_advanced', 'a:2:{s:12:"indentborder";s:3:"yes";s:17:"truncatelistitems";s:3:"yes";}', 'yes'),
(473, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1522314447;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(474, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1522314451;s:7:"checked";a:4:{s:7:"fractus";s:0:"";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(481, '_site_transient_timeout_browser_ea13278acb047e1a3e6d5d36cef950f1', '1522664938', 'no'),
(482, '_site_transient_browser_ea13278acb047e1a3e6d5d36cef950f1', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.162";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(500, 'category_children', 'a:0:{}', 'yes'),
(535, '_site_transient_timeout_theme_roots', '1522316250', 'no'),
(536, '_site_transient_theme_roots', 'a:4:{s:7:"fractus";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(537, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1522314452;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:9:"hello.php";s:3:"1.6";s:15:"mmenu/mmenu.php";s:5:"2.7.3";s:27:"js_composer/js_composer.php";s:5:"5.4.6";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"js_composer/js_composer.php";O:8:"stdClass":5:{s:4:"slug";s:11:"js_composer";s:11:"new_version";s:5:"5.4.7";s:3:"url";s:0:"";s:7:"package";b:0;s:4:"name";s:21:"WPBakery Page Builder";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_postmeta`
--

CREATE TABLE IF NOT EXISTS `y65g_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_postmeta`
--

INSERT INTO `y65g_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(28, 2, '_edit_lock', '1520598881:1'),
(29, 24, '_menu_item_type', 'custom'),
(30, 24, '_menu_item_menu_item_parent', '0'),
(31, 24, '_menu_item_object_id', '24'),
(32, 24, '_menu_item_object', 'custom'),
(33, 24, '_menu_item_target', ''),
(34, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 24, '_menu_item_xfn', ''),
(36, 24, '_menu_item_url', 'http://www/fractus.pro/'),
(37, 24, '_menu_item_orphaned', '1520001024'),
(38, 25, '_menu_item_type', 'post_type'),
(39, 25, '_menu_item_menu_item_parent', '0'),
(40, 25, '_menu_item_object_id', '2'),
(41, 25, '_menu_item_object', 'page'),
(42, 25, '_menu_item_target', ''),
(43, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 25, '_menu_item_xfn', ''),
(45, 25, '_menu_item_url', ''),
(46, 25, '_menu_item_orphaned', '1520001024'),
(48, 26, '_menu_item_type', 'custom'),
(49, 26, '_menu_item_menu_item_parent', '0'),
(50, 26, '_menu_item_object_id', '26'),
(51, 26, '_menu_item_object', 'custom'),
(52, 26, '_menu_item_target', ''),
(53, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 26, '_menu_item_xfn', ''),
(55, 26, '_menu_item_url', 'http://www/fractus.pro/'),
(56, 26, '_menu_item_orphaned', '1520001169'),
(57, 27, '_menu_item_type', 'post_type'),
(58, 27, '_menu_item_menu_item_parent', '0'),
(59, 27, '_menu_item_object_id', '2'),
(60, 27, '_menu_item_object', 'page'),
(61, 27, '_menu_item_target', ''),
(62, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 27, '_menu_item_xfn', ''),
(64, 27, '_menu_item_url', ''),
(65, 27, '_menu_item_orphaned', '1520001169'),
(66, 28, '_edit_last', '1'),
(67, 28, '_edit_lock', '1520010773:1'),
(68, 28, '_wp_page_template', 'about.php'),
(73, 35, '_edit_last', '1'),
(74, 35, '_edit_lock', '1520012175:1'),
(75, 35, '_wp_page_template', 'blog.php'),
(76, 39, '_wp_trash_meta_status', 'publish'),
(77, 39, '_wp_trash_meta_time', '1520011816'),
(78, 40, '_edit_last', '1'),
(79, 40, '_edit_lock', '1520252396:1'),
(80, 41, '_edit_last', '1'),
(81, 41, '_edit_lock', '1520012127:1'),
(82, 41, '_wp_page_template', 'default'),
(83, 43, '_wp_trash_meta_status', 'publish'),
(84, 43, '_wp_trash_meta_time', '1520012082'),
(85, 35, '_wp_trash_meta_status', 'publish'),
(86, 35, '_wp_trash_meta_time', '1520012319'),
(87, 35, '_wp_desired_post_slug', 'blog'),
(88, 44, '_edit_last', '1'),
(89, 44, '_edit_lock', '1520012238:1'),
(90, 44, '_wp_page_template', 'blog.php'),
(91, 46, '_wp_trash_meta_status', 'publish'),
(92, 46, '_wp_trash_meta_time', '1520012409'),
(93, 47, '_wp_trash_meta_status', 'publish'),
(94, 47, '_wp_trash_meta_time', '1520012510'),
(95, 41, '_wp_trash_meta_status', 'publish'),
(96, 41, '_wp_trash_meta_time', '1520012534'),
(97, 41, '_wp_desired_post_slug', 'home'),
(98, 49, '_wp_attached_file', '2018/03/favicon.ico'),
(101, 44, '_wp_trash_meta_status', 'publish'),
(102, 44, '_wp_trash_meta_time', '1520248371'),
(103, 44, '_wp_desired_post_slug', 'blog'),
(104, 51, '_edit_last', '1'),
(105, 51, '_edit_lock', '1520248285:1'),
(106, 51, '_wp_page_template', 'default'),
(108, 54, '_edit_last', '1'),
(109, 54, '_edit_lock', '1520863339:1'),
(110, 54, '_wp_page_template', 'default'),
(112, 56, '_wp_trash_meta_status', 'publish'),
(113, 56, '_wp_trash_meta_time', '1520248756'),
(114, 51, '_wp_trash_meta_status', 'publish'),
(115, 51, '_wp_trash_meta_time', '1520248990'),
(116, 51, '_wp_desired_post_slug', 'home'),
(117, 57, '_edit_last', '1'),
(118, 57, '_edit_lock', '1520248890:1'),
(119, 57, '_wp_page_template', 'main.php'),
(120, 59, '_wp_trash_meta_status', 'publish'),
(121, 59, '_wp_trash_meta_time', '1520249046'),
(122, 60, '_edit_last', '1'),
(123, 60, '_edit_lock', '1520598873:1'),
(124, 60, '_wp_page_template', 'main.php'),
(125, 1, '_edit_lock', '1522067268:1'),
(126, 1, '_edit_last', '1'),
(129, 40, '_wp_trash_meta_status', 'draft'),
(130, 40, '_wp_trash_meta_time', '1520252543'),
(131, 40, '_wp_desired_post_slug', ''),
(132, 66, '_edit_last', '1'),
(135, 66, '_edit_lock', '1520255362:1'),
(136, 66, '_wp_trash_meta_status', 'publish'),
(137, 66, '_wp_trash_meta_time', '1520255508'),
(138, 66, '_wp_desired_post_slug', 'rtg45g'),
(143, 71, '_wp_attached_file', '2018/02/article1-e1520265957952.jpg'),
(144, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:211;s:4:"file";s:35:"2018/02/article1-e1520265957952.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"article1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"article1-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(150, 1, '_thumbnail_id', '71'),
(153, 71, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:382;s:6:"height";i:269;s:4:"file";s:12:"article1.jpg";}}'),
(154, 72, '_wp_attached_file', '2018/02/article1inside.jpg'),
(155, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:991;s:6:"height";i:737;s:4:"file";s:26:"2018/02/article1inside.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"article1inside-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"article1inside-300x223.jpg";s:5:"width";i:300;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"article1inside-768x571.jpg";s:5:"width";i:768;s:6:"height";i:571;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(167, 78, '_edit_last', '1'),
(168, 78, '_edit_lock', '1522062294:1'),
(169, 79, '_wp_attached_file', '2018/03/article2-e1520423901715.jpg'),
(170, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:211;s:4:"file";s:35:"2018/03/article2-e1520423901715.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"article2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"article2-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(171, 80, '_wp_attached_file', '2018/03/article3-e1520424138850.jpg'),
(172, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:211;s:4:"file";s:35:"2018/03/article3-e1520424138850.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"article3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"article3-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(173, 81, '_wp_attached_file', '2018/03/article4-e1520423572877.jpg'),
(174, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:191;s:4:"file";s:35:"2018/03/article4-e1520423572877.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"article4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"article4-300x191.jpg";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 81, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:427;s:6:"height";i:272;s:4:"file";s:12:"article4.jpg";}}'),
(176, 78, '_thumbnail_id', '81'),
(179, 83, '_edit_last', '1'),
(180, 83, '_edit_lock', '1522067221:1'),
(181, 79, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:382;s:6:"height";i:269;s:4:"file";s:12:"article2.jpg";}}'),
(182, 83, '_thumbnail_id', '79'),
(185, 85, '_edit_last', '1'),
(186, 85, '_edit_lock', '1522062273:1'),
(187, 85, '_thumbnail_id', '71'),
(190, 87, '_edit_last', '1'),
(191, 87, '_edit_lock', '1522062257:1'),
(192, 80, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:382;s:6:"height";i:269;s:4:"file";s:12:"article3.jpg";}}'),
(193, 87, '_thumbnail_id', '80'),
(196, 89, '_edit_last', '1'),
(197, 89, '_edit_lock', '1522062246:1'),
(198, 89, '_thumbnail_id', '79'),
(201, 91, '_edit_last', '1'),
(202, 91, '_edit_lock', '1522062236:1'),
(203, 91, '_thumbnail_id', '71'),
(206, 93, '_edit_last', '1'),
(207, 93, '_edit_lock', '1522067290:1'),
(208, 93, '_thumbnail_id', '81'),
(211, 95, '_edit_last', '1'),
(212, 95, '_edit_lock', '1522062216:1'),
(213, 95, '_thumbnail_id', '79'),
(216, 97, '_edit_last', '1'),
(217, 97, '_thumbnail_id', '71'),
(220, 97, '_edit_lock', '1522067245:1'),
(221, 99, '_edit_last', '1'),
(222, 99, '_thumbnail_id', '79'),
(225, 99, '_edit_lock', '1522062194:1'),
(230, 60, '_wp_trash_meta_status', 'publish'),
(231, 60, '_wp_trash_meta_time', '1520599046'),
(232, 60, '_wp_desired_post_slug', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-%d0%b2-%d0%b1%d0%bb%d0%be%d0%b3%d0%b5'),
(233, 2, '_wp_trash_meta_status', 'publish'),
(234, 2, '_wp_trash_meta_time', '1520599050'),
(235, 2, '_wp_desired_post_slug', 'sample-page'),
(245, 106, '_menu_item_type', 'post_type'),
(246, 106, '_menu_item_menu_item_parent', '0'),
(247, 106, '_menu_item_object_id', '54'),
(248, 106, '_menu_item_object', 'page'),
(249, 106, '_menu_item_target', ''),
(250, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 106, '_menu_item_xfn', ''),
(252, 106, '_menu_item_url', ''),
(254, 107, '_menu_item_type', 'post_type'),
(255, 107, '_menu_item_menu_item_parent', '0'),
(256, 107, '_menu_item_object_id', '28'),
(257, 107, '_menu_item_object', 'page'),
(258, 107, '_menu_item_target', ''),
(259, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 107, '_menu_item_xfn', ''),
(261, 107, '_menu_item_url', ''),
(263, 108, '_menu_item_type', 'custom'),
(264, 108, '_menu_item_menu_item_parent', '0'),
(265, 108, '_menu_item_object_id', '108'),
(266, 108, '_menu_item_object', 'custom'),
(267, 108, '_menu_item_target', ''),
(268, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 108, '_menu_item_xfn', ''),
(270, 108, '_menu_item_url', 'http://www/fractus.pro#structure'),
(272, 109, '_menu_item_type', 'custom'),
(273, 109, '_menu_item_menu_item_parent', '0'),
(274, 109, '_menu_item_object_id', '109'),
(275, 109, '_menu_item_object', 'custom'),
(276, 109, '_menu_item_target', ''),
(277, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 109, '_menu_item_xfn', ''),
(279, 109, '_menu_item_url', 'http://www/fractus.pro#facilities'),
(281, 110, '_menu_item_type', 'custom'),
(282, 110, '_menu_item_menu_item_parent', '0'),
(283, 110, '_menu_item_object_id', '110'),
(284, 110, '_menu_item_object', 'custom'),
(285, 110, '_menu_item_target', ''),
(286, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 110, '_menu_item_xfn', ''),
(288, 110, '_menu_item_url', 'http://www/fractus.pro#pricing'),
(290, 111, '_menu_item_type', 'custom'),
(291, 111, '_menu_item_menu_item_parent', '0'),
(292, 111, '_menu_item_object_id', '111'),
(293, 111, '_menu_item_object', 'custom'),
(294, 111, '_menu_item_target', ''),
(295, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(296, 111, '_menu_item_xfn', ''),
(297, 111, '_menu_item_url', 'http://www/fractus.pro#questions'),
(303, 107, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(304, 108, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(305, 109, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(306, 110, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(307, 111, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(308, 106, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(315, 99, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(318, 97, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(321, 95, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(324, 93, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(327, 91, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(330, 89, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(331, 112, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(346, 87, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(349, 85, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(354, 83, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(357, 78, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(360, 1, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_posts`
--

CREATE TABLE IF NOT EXISTS `y65g_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_posts`
--

INSERT INTO `y65g_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-26 15:32:27', '2018-02-26 12:32:27', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="738" height="549" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'publish', 'open', 'open', '', 'article1', '', '', '2018-03-26 15:30:10', '2018-03-26 12:30:10', '', 0, 'http://www/fractus.pro/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-26 15:32:27', '2018-02-26 12:32:27', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://www/fractus.pro/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-03-09 15:37:30', '2018-03-09 12:37:30', '', 0, 'http://www/fractus.pro/?page_id=2', 0, 'page', '', 0),
(24, 1, '2018-03-02 17:30:24', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-02 17:30:24', '0000-00-00 00:00:00', '', 0, 'http://www/fractus.pro/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-03-02 17:30:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-02 17:30:24', '0000-00-00 00:00:00', '', 0, 'http://www/fractus.pro/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-03-02 17:32:49', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-02 17:32:49', '0000-00-00 00:00:00', '', 0, 'http://www/fractus.pro/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-03-02 17:32:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-02 17:32:49', '0000-00-00 00:00:00', '', 0, 'http://www/fractus.pro/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-03-02 18:09:03', '2018-03-02 15:09:03', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-03-02 20:11:54', '2018-03-02 17:11:54', '', 0, 'http://www/fractus.pro/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-03-02 18:07:53', '2018-03-02 15:07:53', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-02 18:07:53', '2018-03-02 15:07:53', '', 28, 'http://www/fractus.pro/2018/03/02/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-03-02 18:08:41', '2018-03-02 15:08:41', '', 'about', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-02 18:08:41', '2018-03-02 15:08:41', '', 28, 'http://www/fractus.pro/2018/03/02/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-03-02 20:11:54', '2018-03-02 17:11:54', '', 'About us', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-03-02 20:11:54', '2018-03-02 17:11:54', '', 28, 'http://www/fractus.pro/2018/03/02/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-03-02 20:29:25', '2018-03-02 17:29:25', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2018-03-02 20:38:39', '2018-03-02 17:38:39', '', 41, 'http://www/fractus.pro/?page_id=35', 0, 'page', '', 0),
(38, 1, '2018-03-02 20:29:25', '2018-03-02 17:29:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-03-02 20:29:25', '2018-03-02 17:29:25', '', 35, 'http://www/fractus.pro/2018/03/02/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-03-02 20:30:16', '2018-03-02 17:30:16', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-02 17:30:16"\n    },\n    "page_for_posts": {\n        "value": "35",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-02 17:30:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fe36de86-7209-415b-9892-22371dda0347', '', '', '2018-03-02 20:30:16', '2018-03-02 17:30:16', '', 0, 'http://www/fractus.pro/2018/03/02/fe36de86-7209-415b-9892-22371dda0347/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-03-05 15:22:23', '2018-03-05 12:22:23', '', 'Home', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-03-05 15:22:23', '2018-03-05 12:22:23', '', 0, 'http://www/fractus.pro/?p=40', 0, 'post', '', 0),
(41, 1, '2018-03-02 20:33:57', '2018-03-02 17:33:57', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-03-02 20:42:14', '2018-03-02 17:42:14', '', 0, 'http://www/fractus.pro/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-03-02 20:33:57', '2018-03-02 17:33:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-03-02 20:33:57', '2018-03-02 17:33:57', '', 41, 'http://www/fractus.pro/2018/03/02/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-03-02 20:34:42', '2018-03-02 17:34:42', '{\n    "page_on_front": {\n        "value": "41",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-02 17:34:42"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97198b2d-8ee2-4e7f-9d49-db2ec48ff897', '', '', '2018-03-02 20:34:42', '2018-03-02 17:34:42', '', 0, 'http://www/fractus.pro/2018/03/02/97198b2d-8ee2-4e7f-9d49-db2ec48ff897/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-03-02 20:39:24', '2018-03-02 17:39:24', '', 'Blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2018-03-05 14:12:51', '2018-03-05 11:12:51', '', 0, 'http://www/fractus.pro/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-03-02 20:39:24', '2018-03-02 17:39:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-03-02 20:39:24', '2018-03-02 17:39:24', '', 44, 'http://www/fractus.pro/2018/03/02/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-03-02 20:40:09', '2018-03-02 17:40:09', '{\n    "page_for_posts": {\n        "value": "44",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-02 17:40:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fa200685-fc6f-4763-9f4b-95381c6346b6', '', '', '2018-03-02 20:40:09', '2018-03-02 17:40:09', '', 0, 'http://www/fractus.pro/2018/03/02/fa200685-fc6f-4763-9f4b-95381c6346b6/', 0, 'customize_changeset', '', 0),
(47, 1, '2018-03-02 20:41:50', '2018-03-02 17:41:50', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-02 17:41:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'da13b339-247e-499d-9018-0415422222b0', '', '', '2018-03-02 20:41:50', '2018-03-02 17:41:50', '', 0, 'http://www/fractus.pro/2018/03/02/da13b339-247e-499d-9018-0415422222b0/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-03-05 13:54:59', '2018-03-05 10:54:59', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-03-05 13:54:59', '2018-03-05 10:54:59', '', 0, 'http://www/fractus.pro/wp-content/uploads/2018/03/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(51, 1, '2018-03-05 14:13:17', '2018-03-05 11:13:17', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed-2', '', '', '2018-03-05 14:23:10', '2018-03-05 11:23:10', '', 0, 'http://www/fractus.pro/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-03-05 14:13:17', '2018-03-05 11:13:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-03-05 14:13:17', '2018-03-05 11:13:17', '', 51, 'http://www/fractus.pro/2018/03/05/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-03-05 14:17:32', '2018-03-05 11:17:32', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-05 14:17:32', '2018-03-05 11:17:32', '', 0, 'http://www/fractus.pro/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-03-05 14:17:32', '2018-03-05 11:17:32', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-03-05 14:17:32', '2018-03-05 11:17:32', '', 54, 'http://www/fractus.pro/2018/03/05/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-03-05 14:19:16', '2018-03-05 11:19:16', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-05 11:19:16"\n    },\n    "page_on_front": {\n        "value": "51",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-05 11:19:16"\n    },\n    "page_for_posts": {\n        "value": "54",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-05 11:19:16"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4371b13-54a6-4904-885f-4696780fb26c', '', '', '2018-03-05 14:19:16', '2018-03-05 11:19:16', '', 0, 'http://www/fractus.pro/2018/03/05/d4371b13-54a6-4904-885f-4696780fb26c/', 0, 'customize_changeset', '', 0),
(57, 1, '2018-03-05 14:23:25', '2018-03-05 11:23:25', '', 'Main', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2018-03-05 14:23:25', '2018-03-05 11:23:25', '', 0, 'http://www/fractus.pro/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-03-05 14:23:25', '2018-03-05 11:23:25', '', 'Main', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-03-05 14:23:25', '2018-03-05 11:23:25', '', 57, 'http://www/fractus.pro/2018/03/05/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-03-05 14:24:06', '2018-03-05 11:24:06', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-05 11:24:06"\n    },\n    "page_on_front": {\n        "value": "57",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-03-05 11:24:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd26799a3-2537-49a6-a241-31c2e23ec0b3', '', '', '2018-03-05 14:24:06', '2018-03-05 11:24:06', '', 0, 'http://www/fractus.pro/2018/03/05/d26799a3-2537-49a6-a241-31c2e23ec0b3/', 0, 'customize_changeset', '', 0),
(60, 1, '2018-03-05 14:36:26', '2018-03-05 11:36:26', 'бла бла бла', 'Первая запись в блоге', '', 'trash', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b0%d1%8f-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-%d0%b2-%d0%b1%d0%bb%d0%be%d0%b3%d0%b5__trashed', '', '', '2018-03-09 15:37:26', '2018-03-09 12:37:26', '', 54, 'http://www/fractus.pro/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-03-05 14:35:30', '2018-03-05 11:35:30', 'бла бла бла', 'Первая запись в блоге', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-03-05 14:35:30', '2018-03-05 11:35:30', '', 60, 'http://www/fractus.pro/2018/03/05/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-03-05 14:50:14', '2018-03-05 11:50:14', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-05 14:50:14', '2018-03-05 11:50:14', '', 1, 'http://www/fractus.pro/2018/03/05/1-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-03-05 15:22:23', '2018-03-05 12:22:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-05 15:22:23', '2018-03-05 12:22:23', '', 40, 'http://www/fractus.pro/2018/03/05/40-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-03-05 16:10:22', '2018-03-05 13:10:22', '', 'rtg45g', '', 'trash', 'open', 'open', '', 'rtg45g__trashed', '', '', '2018-03-05 16:11:48', '2018-03-05 13:11:48', '', 0, 'http://www/fractus.pro/?p=66', 0, 'post', '', 0),
(67, 1, '2018-03-05 16:10:22', '2018-03-05 13:10:22', '', 'rtg45g', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-03-05 16:10:22', '2018-03-05 13:10:22', '', 66, 'http://www/fractus.pro/2018/03/05/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-03-05 17:51:01', '2018-03-05 14:51:01', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід. Раніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом. Звичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій. Вередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-05 17:51:01', '2018-03-05 14:51:01', '', 1, 'http://www/fractus.pro/2018/03/05/1-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-03-05 17:52:24', '2018-03-05 14:52:24', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-05 17:52:24', '2018-03-05 14:52:24', '', 1, 'http://www/fractus.pro/2018/03/05/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-03-05 18:26:49', '2018-03-05 15:26:49', '', 'article1', '', 'inherit', 'open', 'closed', '', 'article1', '', '', '2018-03-05 18:26:49', '2018-03-05 15:26:49', '', 1, 'http://www/fractus.pro/wp-content/uploads/2018/02/article1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-03-07 14:39:00', '2018-03-07 11:39:00', '', 'article1inside', '', 'inherit', 'open', 'closed', '', 'article1inside', '', '', '2018-03-07 14:39:00', '2018-03-07 11:39:00', '', 1, 'http://www/fractus.pro/wp-content/uploads/2018/02/article1inside.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-03-07 14:39:17', '2018-03-07 11:39:17', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n<img class="alignnone size-medium wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="300" height="223" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-07 14:39:17', '2018-03-07 11:39:17', '', 1, 'http://www/fractus.pro/2018/03/07/1-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-03-07 14:40:23', '2018-03-07 11:40:23', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\n\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\n\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\n\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\n\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="807" height="600" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-03-07 14:40:23', '2018-03-07 11:40:23', '', 1, 'http://www/fractus.pro/2018/03/07/1-autosave-v1/', 0, 'revision', '', 0),
(75, 1, '2018-03-07 14:41:35', '2018-03-07 11:41:35', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="807" height="600" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-07 14:41:35', '2018-03-07 11:41:35', '', 1, 'http://www/fractus.pro/2018/03/07/1-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-03-07 14:41:58', '2018-03-07 11:41:58', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n<img class="alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="772" height="574" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-07 14:41:58', '2018-03-07 11:41:58', '', 1, 'http://www/fractus.pro/2018/03/07/1-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-03-07 14:42:30', '2018-03-07 11:42:30', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="738" height="549" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-07 14:42:30', '2018-03-07 11:42:30', '', 1, 'http://www/fractus.pro/2018/03/07/1-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-03-07 14:53:35', '2018-03-07 11:53:35', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'publish', 'open', 'open', '', 'article2', '', '', '2018-03-26 14:07:16', '2018-03-26 11:07:16', '', 0, 'http://www/fractus.pro/?p=78', 0, 'post', '', 0),
(79, 1, '2018-03-07 14:52:35', '2018-03-07 11:52:35', '', 'article2', '', 'inherit', 'open', 'closed', '', 'article2', '', '', '2018-03-07 14:52:35', '2018-03-07 11:52:35', '', 78, 'http://www/fractus.pro/wp-content/uploads/2018/03/article2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-03-07 14:52:36', '2018-03-07 11:52:36', '', 'article3', '', 'inherit', 'open', 'closed', '', 'article3', '', '', '2018-03-07 14:52:36', '2018-03-07 11:52:36', '', 78, 'http://www/fractus.pro/wp-content/uploads/2018/03/article3.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-03-07 14:52:36', '2018-03-07 11:52:36', '', 'article4', '', 'inherit', 'open', 'closed', '', 'article4', '', '', '2018-03-07 14:52:36', '2018-03-07 11:52:36', '', 78, 'http://www/fractus.pro/wp-content/uploads/2018/03/article4.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-03-07 14:53:35', '2018-03-07 11:53:35', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-03-07 14:53:35', '2018-03-07 11:53:35', '', 78, 'http://www/fractus.pro/2018/03/07/78-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-07 14:58:45', '2018-03-07 11:58:45', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'publish', 'open', 'open', '', 'shop-around-rethinking-e-commerce-strategies', '', '', '2018-03-26 15:29:23', '2018-03-26 12:29:23', '', 0, 'http://www/fractus.pro/?p=83', 0, 'post', '', 0),
(84, 1, '2018-03-07 14:58:45', '2018-03-07 11:58:45', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-03-07 14:58:45', '2018-03-07 11:58:45', '', 83, 'http://www/fractus.pro/2018/03/07/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-03-07 15:00:49', '2018-03-07 12:00:49', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="648" height="482" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be%d1%84%d0%b5%d1%81%d1%96%d0%be%d0%bd%d0%b0%d0%bb%d0%b8-%d0%bd%d0%b5-%d0%bf%d1%80%d0%be%d0%ba%d0%bb%d0%b8%d0%bd%d0%b0%d1%8e%d1%82%d1%8c-%d0%b0-%d0%bd%d0%b0%d0%b2%d1%87%d0%b0%d1%8e', '', '', '2018-03-26 14:06:55', '2018-03-26 11:06:55', '', 0, 'http://www/fractus.pro/?p=85', 0, 'post', '', 0),
(86, 1, '2018-03-07 15:00:49', '2018-03-07 12:00:49', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="648" height="482" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-03-07 15:00:49', '2018-03-07 12:00:49', '', 85, 'http://www/fractus.pro/2018/03/07/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-03-07 15:02:26', '2018-03-07 12:02:26', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be-%d0%bb%d0%be%d0%b3%d0%be%d1%82%d0%b8%d0%bf%d0%b8-%d1%96-%d0%bf%d0%bb%d1%8e%d1%88%d0%ba%d0%b8-%d0%b4%d0%bb%d1%8f-%d0%ba%d0%bb%d1%96%d1%94%d0%bd%d1%82%d1%96%d0%b2', '', '', '2018-03-26 14:06:37', '2018-03-26 11:06:37', '', 0, 'http://www/fractus.pro/?p=87', 0, 'post', '', 0),
(88, 1, '2018-03-07 15:02:26', '2018-03-07 12:02:26', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-03-07 15:02:26', '2018-03-07 12:02:26', '', 87, 'http://www/fractus.pro/2018/03/07/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-03-07 15:04:11', '2018-03-07 12:04:11', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'publish', 'open', 'open', '', 'shop-around-rethinking-e-commerce-strategies-2', '', '', '2018-03-26 14:06:27', '2018-03-26 11:06:27', '', 0, 'http://www/fractus.pro/?p=89', 0, 'post', '', 0),
(90, 1, '2018-03-07 15:04:11', '2018-03-07 12:04:11', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-03-07 15:04:11', '2018-03-07 12:04:11', '', 89, 'http://www/fractus.pro/2018/03/07/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-03-07 15:06:35', '2018-03-07 12:06:35', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="644" height="479" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be%d1%84%d0%b5%d1%81%d1%96%d0%be%d0%bd%d0%b0%d0%bb%d0%b8-%d0%bd%d0%b5-%d0%bf%d1%80%d0%be%d0%ba%d0%bb%d0%b8%d0%bd%d0%b0%d1%8e%d1%82%d1%8c-%d0%b0-%d0%bd%d0%b0%d0%b2%d1%87%d0%b0%d1%8e-2', '', '', '2018-03-26 14:06:17', '2018-03-26 11:06:17', '', 0, 'http://www/fractus.pro/?p=91', 0, 'post', '', 0),
(92, 1, '2018-03-07 15:06:35', '2018-03-07 12:06:35', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="644" height="479" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-03-07 15:06:35', '2018-03-07 12:06:35', '', 91, 'http://www/fractus.pro/2018/03/07/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-07 15:07:46', '2018-03-07 12:07:46', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be-%d0%bb%d0%be%d0%b3%d0%be%d1%82%d0%b8%d0%bf%d0%b8-%d1%96-%d0%bf%d0%bb%d1%8e%d1%88%d0%ba%d0%b8-%d0%b4%d0%bb%d1%8f-%d0%ba%d0%bb%d1%96%d1%94%d0%bd%d1%82%d1%96%d0%b2-2', '', '', '2018-03-26 15:30:31', '2018-03-26 12:30:31', '', 0, 'http://www/fractus.pro/?p=93', 0, 'post', '', 0),
(94, 1, '2018-03-07 15:07:46', '2018-03-07 12:07:46', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Про логотипи і плюшки для клієнтів', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-03-07 15:07:46', '2018-03-07 12:07:46', '', 93, 'http://www/fractus.pro/2018/03/07/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-03-07 15:08:45', '2018-03-07 12:08:45', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'publish', 'open', 'open', '', 'shop-around-rethinking-e-commerce-strategies-3', '', '', '2018-03-26 14:05:56', '2018-03-26 11:05:56', '', 0, 'http://www/fractus.pro/?p=95', 0, 'post', '', 0),
(96, 1, '2018-03-07 15:08:45', '2018-03-07 12:08:45', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:', 'Shop Around: Rethinking E-commerce Strategies', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-03-07 15:08:45', '2018-03-07 12:08:45', '', 95, 'http://www/fractus.pro/2018/03/07/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `y65g_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2018-03-07 15:10:02', '2018-03-07 12:10:02', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="img-fluid alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="584" height="434" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be%d1%84%d0%b5%d1%81%d1%96%d0%be%d0%bd%d0%b0%d0%bb%d0%b8-%d0%bd%d0%b5-%d0%bf%d1%80%d0%be%d0%ba%d0%bb%d0%b8%d0%bd%d0%b0%d1%8e%d1%82%d1%8c-%d0%b0-%d0%bd%d0%b0%d0%b2%d1%87%d0%b0%d1%8e-3', '', '', '2018-03-26 15:29:44', '2018-03-26 12:29:44', '', 0, 'http://www/fractus.pro/?p=97', 0, 'post', '', 0),
(98, 1, '2018-03-07 15:10:02', '2018-03-07 12:10:02', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="584" height="434" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-03-07 15:10:02', '2018-03-07 12:10:02', '', 97, 'http://www/fractus.pro/2018/03/07/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-03-07 15:34:57', '2018-03-07 12:34:57', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="img-fluid alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="617" height="459" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%be%d1%84%d0%b5%d1%81%d1%96%d0%be%d0%bd%d0%b0%d0%bb%d0%b8-%d0%bd%d0%b5-%d0%bf%d1%80%d0%be%d0%ba%d0%bb%d0%b8%d0%bd%d0%b0%d1%8e%d1%82%d1%8c-%d0%b0-%d0%bd%d0%b0%d0%b2%d1%87%d0%b0%d1%8e-4', '', '', '2018-03-26 14:05:34', '2018-03-26 11:05:34', '', 0, 'http://www/fractus.pro/?p=99', 0, 'post', '', 0),
(100, 1, '2018-03-07 15:34:57', '2018-03-07 12:34:57', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone  wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="617" height="459" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-03-07 15:34:57', '2018-03-07 12:34:57', '', 99, 'http://www/fractus.pro/2018/03/07/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-03-09 14:25:39', '2018-03-09 11:25:39', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="img-fluid alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="617" height="459" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-03-09 14:25:39', '2018-03-09 11:25:39', '', 99, 'http://www/fractus.pro/2018/03/09/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-03-09 14:56:14', '2018-03-09 11:56:14', 'Як відомо більшості досвідчених фрілансерів, часом нам доводиться позбуватися своїх клієнтів для їхнього ж і свого блага. Однак це неправильний підхід.\r\n\r\nРаніше я зазвичай сприймав співпрацю з вередливими клієнтами просто як складову креативної діяльності. Та потім я збагнув, що хоча, звісно, у будь-яких стосунках є щось, що викликає розчарування, зневіра у подальшій співпраці має бути лиш винятком, а не правилом.\r\n\r\nЗвичайно, трапляються моменти, коли вам хочеться перетворитися у таку собі фрілансерську подобу Дональда Трампа, який вигукує свою знамениту фразу «Вас звільнено!» всім, хто з вами незгоден. Однак насправді ми заслуговуємо саме на таких клієнтів, яких маємо. Погані клієнти не є результатом втручання космічних сил, які діють проти нас, більш ймовірно, що вони є результатом наших власних дій.\r\n\r\nВередливі клієнти є результатом певних помилок, допущених у процесі нашої діяльності. Щоб робити свою роботу бездоганно і працювати з найкращими клієнтами, слід бути уважним у стосунках зі своїми клієнтами. Ось про що йдеться:\r\n\r\n&nbsp;\r\n\r\n<img class="img-fluid alignnone wp-image-72" src="http://www/fractus.pro/wp-content/uploads/2018/02/article1inside-300x223.jpg" alt="" width="584" height="434" />', 'Професіонали не проклинають, а навчають вередливих клієнтів', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-03-09 14:56:14', '2018-03-09 11:56:14', '', 97, 'http://www/fractus.pro/2018/03/09/97-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-03-09 15:37:30', '2018-03-09 12:37:30', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://www/fractus.pro/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-09 15:37:30', '2018-03-09 12:37:30', '', 2, 'http://www/fractus.pro/2018/03/09/2-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-03-09 15:48:52', '2018-03-09 12:48:52', '', 'Блог', '', 'publish', 'closed', 'closed', '', '106', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=106', 6, 'nav_menu_item', '', 0),
(107, 1, '2018-03-09 16:11:54', '2018-03-09 13:11:54', '', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2018-03-09 16:14:00', '2018-03-09 13:14:00', '', 'Как это работает', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d1%8d%d1%82%d0%be-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0%d0%b5%d1%82', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=108', 2, 'nav_menu_item', '', 0),
(109, 1, '2018-03-09 16:17:01', '2018-03-09 13:17:01', '', 'Преимущества', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d0%b8%d0%bc%d1%83%d1%89%d0%b5%d1%81%d1%82%d0%b2%d0%b0', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=109', 3, 'nav_menu_item', '', 0),
(110, 1, '2018-03-09 16:22:12', '2018-03-09 13:22:12', '', 'Тарифы', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b0%d1%80%d0%b8%d1%84%d1%8b', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=110', 4, 'nav_menu_item', '', 0),
(111, 1, '2018-03-09 16:27:04', '2018-03-09 13:27:04', '', 'Поддержка', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b4%d0%b5%d1%80%d0%b6%d0%ba%d0%b0', '', '', '2018-03-13 19:31:00', '2018-03-13 16:31:00', '', 0, 'http://www/fractus.pro/?p=111', 5, 'nav_menu_item', '', 0),
(112, 1, '2018-03-26 13:28:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-26 13:28:59', '0000-00-00 00:00:00', '', 0, 'http://www/fractus.pro/?p=112', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_termmeta`
--

CREATE TABLE IF NOT EXISTS `y65g_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_terms`
--

CREATE TABLE IF NOT EXISTS `y65g_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_terms`
--

INSERT INTO `y65g_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(3, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(4, 'Новости', 'news', 0),
(5, 'Инструкции по работе с системой', 'instructions', 0),
(6, 'Полезные статьи', 'useful-articles', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_term_relationships`
--

CREATE TABLE IF NOT EXISTS `y65g_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_term_relationships`
--

INSERT INTO `y65g_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 6, 0),
(40, 1, 0),
(66, 1, 0),
(78, 5, 0),
(83, 4, 0),
(85, 4, 0),
(87, 5, 0),
(89, 6, 0),
(91, 4, 0),
(93, 4, 0),
(95, 6, 0),
(97, 6, 0),
(99, 5, 0),
(106, 3, 0),
(107, 3, 0),
(108, 3, 0),
(109, 3, 0),
(110, 3, 0),
(111, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `y65g_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_term_taxonomy`
--

INSERT INTO `y65g_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 4),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_usermeta`
--

CREATE TABLE IF NOT EXISTS `y65g_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_usermeta`
--

INSERT INTO `y65g_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nastya'),
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
(12, 1, 'y65g_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'y65g_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'y65g_dashboard_quick_press_last_post_id', '112'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(20, 1, 'session_tokens', 'a:1:{s:64:"f45d46ca4dcf5fadf7c7b2a3db0894b7f4e7acb856cedb0ab524f17228b45af4";a:4:{s:10:"expiration";i:1522232937;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36";s:5:"login";i:1522060137;}}'),
(21, 1, 'y65g_user-settings', 'editor=tinymce&libraryContent=browse&advImgDetails=show'),
(22, 1, 'y65g_user-settings-time', '1520594315'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(27, 1, 'nav_menu_recently_edited', '3'),
(28, 2, 'nickname', 'over_net'),
(29, 2, 'first_name', 'Mikhail'),
(30, 2, 'last_name', 'Kulik'),
(31, 2, 'description', ''),
(32, 2, 'rich_editing', 'true'),
(33, 2, 'syntax_highlighting', 'true'),
(34, 2, 'comment_shortcuts', 'false'),
(35, 2, 'admin_color', 'fresh'),
(36, 2, 'use_ssl', '0'),
(37, 2, 'show_admin_bar_front', 'true'),
(38, 2, 'locale', ''),
(39, 2, 'y65g_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(40, 2, 'y65g_user_level', '10'),
(41, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Структура таблицы `y65g_users`
--

CREATE TABLE IF NOT EXISTS `y65g_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `y65g_users`
--

INSERT INTO `y65g_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nastya', '$P$BesD0iE2iMrDf4BQwNXcFMJ3yof2Dd.', 'nastya', 'panchenko30394@gmail.com', '', '2018-02-26 12:32:27', '', 0, 'nastya'),
(2, 'over_net', '$P$BsE7Tmue4tfFVUGu1c0HU8vnCv2A0M/', 'over_net', 'kulik1979@ukr.net', '', '2018-03-12 14:27:16', '1520864840:$P$BdwLPYiOS3BJfnYXGD1WEzkdyDNYXI1', 0, 'Mikhail Kulik');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `y65g_commentmeta`
--
ALTER TABLE `y65g_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `y65g_comments`
--
ALTER TABLE `y65g_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `y65g_links`
--
ALTER TABLE `y65g_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `y65g_options`
--
ALTER TABLE `y65g_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `y65g_postmeta`
--
ALTER TABLE `y65g_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `y65g_posts`
--
ALTER TABLE `y65g_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `y65g_termmeta`
--
ALTER TABLE `y65g_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `y65g_terms`
--
ALTER TABLE `y65g_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `y65g_term_relationships`
--
ALTER TABLE `y65g_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `y65g_term_taxonomy`
--
ALTER TABLE `y65g_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `y65g_usermeta`
--
ALTER TABLE `y65g_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `y65g_users`
--
ALTER TABLE `y65g_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `y65g_commentmeta`
--
ALTER TABLE `y65g_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `y65g_comments`
--
ALTER TABLE `y65g_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `y65g_links`
--
ALTER TABLE `y65g_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `y65g_options`
--
ALTER TABLE `y65g_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=538;
--
-- AUTO_INCREMENT для таблицы `y65g_postmeta`
--
ALTER TABLE `y65g_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT для таблицы `y65g_posts`
--
ALTER TABLE `y65g_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT для таблицы `y65g_termmeta`
--
ALTER TABLE `y65g_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `y65g_terms`
--
ALTER TABLE `y65g_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `y65g_term_taxonomy`
--
ALTER TABLE `y65g_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `y65g_usermeta`
--
ALTER TABLE `y65g_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `y65g_users`
--
ALTER TABLE `y65g_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
