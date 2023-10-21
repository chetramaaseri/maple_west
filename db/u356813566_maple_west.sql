-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 03, 2023 at 05:31 PM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u356813566_maple_west`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `rid` int(11) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `source` text NOT NULL,
  `statusInCanada` text NOT NULL,
  `discussionAbout` text NOT NULL,
  `message` text NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `rid` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `applicationNumber` text NOT NULL,
  `applicationStatus` text NOT NULL,
  `remarks` text NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `rid` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `country` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `rid` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `min` varchar(10) NOT NULL,
  `priceCA` varchar(10) NOT NULL,
  `priceIN` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`rid`, `name`, `description`, `min`, `priceCA`, `priceIN`) VALUES
(1, '15 Minute Consultation', 'A consultation with Consultant will help answer questions, understand timelines, costs, and chances of success. All our consultations are conducted by Regulated Canadian Immigration Consultants.', '15', '50', 'Free'),
(2, '30 Minute Consultation', 'A consultation with Consultant will help answer questions, understand timelines, costs, and chances of success. All our consultations are conducted by Regulated Canadian Immigration Consultants.', '30', '250', 'Free'),
(3, 'Full Representation', 'Welcome to our comprehensive Canadian Immigration Services portal, your trusted resource for all things related to immigrating to Canada. Whether you\'re seeking permanent residence, temporary visas, family sponsorship, or citizenship, we\'re here to guide you through the entire process.', '∞', '1000', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(35, 'action_scheduler/migration_hook', 'complete', '2023-09-09 14:32:48', '2023-09-09 14:32:48', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1694269968;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1694269968;}', 1, 1, '2023-09-09 14:33:17', '2023-09-09 14:33:17', 0, NULL),
(36, 'wp_mail_smtp_summary_report_email', 'pending', '2023-09-11 14:00:00', '2023-09-11 14:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1694440800;s:18:\"\0*\0first_timestamp\";i:1694440800;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1694440800;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(37, 'wp_mail_smtp_admin_notifications_update', 'complete', '2023-09-09 14:38:19', '2023-09-09 14:38:19', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1694270299;s:18:\"\0*\0first_timestamp\";i:1694270299;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1694270299;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2023-09-09 14:41:01', '2023-09-09 14:41:01', 0, NULL),
(38, 'action_scheduler/migration_hook', 'complete', '2023-09-09 14:41:59', '2023-09-09 14:41:59', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1694270519;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1694270519;}', 1, 1, '2023-09-09 14:42:04', '2023-09-09 14:42:04', 0, NULL),
(39, 'wp_mail_smtp_admin_notifications_update', 'pending', '2023-09-10 14:41:01', '2023-09-10 14:41:01', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1694356861;s:18:\"\0*\0first_timestamp\";i:1694270299;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1694356861;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 35, 'action created', '2023-09-09 14:31:48', '2023-09-09 14:31:48'),
(2, 35, 'action started via WP Cron', '2023-09-09 14:33:16', '2023-09-09 14:33:16'),
(3, 35, 'action complete via WP Cron', '2023-09-09 14:33:17', '2023-09-09 14:33:17'),
(4, 36, 'action created', '2023-09-09 14:33:17', '2023-09-09 14:33:17'),
(5, 37, 'action created', '2023-09-09 14:37:19', '2023-09-09 14:37:19'),
(6, 38, 'action created', '2023-09-09 14:40:59', '2023-09-09 14:40:59'),
(7, 37, 'action started via Async Request', '2023-09-09 14:41:00', '2023-09-09 14:41:00'),
(8, 37, 'action complete via Async Request', '2023-09-09 14:41:01', '2023-09-09 14:41:01'),
(9, 39, 'action created', '2023-09-09 14:41:01', '2023-09-09 14:41:01'),
(10, 38, 'action started via WP Cron', '2023-09-09 14:42:03', '2023-09-09 14:42:03'),
(11, 38, 'action complete via WP Cron', '2023-09-09 14:42:04', '2023-09-09 14:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-09-07 18:14:51', '2023-09-07 18:14:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://seo.maplewestimmigration.com', 'yes'),
(2, 'home', 'https://seo.maplewestimmigration.com', 'yes'),
(3, 'blogname', 'Maple West Immigration Services', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'maplewestimmigration@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:1;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1709662484', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1696356892;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696356893;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1696356894;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1696356906;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1696357170;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696357774;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1696529699;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1696616093;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(120, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/editor.css\";i:3;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/editor.min.css\";i:4;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/style-rtl.css\";i:5;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/style.css\";i:7;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/archives/style.min.css\";i:8;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/editor.css\";i:11;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/editor.min.css\";i:12;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/style-rtl.css\";i:13;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/style.css\";i:15;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/style.min.css\";i:16;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/theme.css\";i:19;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/audio/theme.min.css\";i:20;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/editor.css\";i:23;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/editor.min.css\";i:24;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/style.css\";i:27;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/avatar/style.min.css\";i:28;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/block/editor-rtl.css\";i:29;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/block/editor.css\";i:31;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/block/editor.min.css\";i:32;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/editor-rtl.css\";i:33;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/editor.css\";i:35;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/editor.min.css\";i:36;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/style-rtl.css\";i:37;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/style.css\";i:39;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/button/style.min.css\";i:40;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/editor.css\";i:43;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/editor.min.css\";i:44;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/style.css\";i:47;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/buttons/style.min.css\";i:48;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/calendar/style.css\";i:51;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/calendar/style.min.css\";i:52;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/editor.css\";i:55;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/editor.min.css\";i:56;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/style-rtl.css\";i:57;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/style.css\";i:59;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/categories/style.min.css\";i:60;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/editor-rtl.css\";i:61;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/editor.css\";i:63;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/editor.min.css\";i:64;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/style-rtl.css\";i:65;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:60:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/style.css\";i:67;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/style.min.css\";i:68;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/theme-rtl.css\";i:69;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:60:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/theme.css\";i:71;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/code/theme.min.css\";i:72;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/editor.css\";i:75;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/editor.min.css\";i:76;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/style-rtl.css\";i:77;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/style.css\";i:79;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/columns/style.min.css\";i:80;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-content/style.css\";i:83;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-content/style.min.css\";i:84;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-template/style.css\";i:87;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comment-template/style.min.css\";i:88;s:88:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:92:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:84:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:88:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:84:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:83:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/style.css\";i:99;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-title/editor.css\";i:103;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/editor.css\";i:107;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/editor.min.css\";i:108;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/style-rtl.css\";i:109;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/style.css\";i:111;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/comments/style.min.css\";i:112;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/editor.css\";i:115;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/editor.min.css\";i:116;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/style-rtl.css\";i:117;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/style.css\";i:119;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/cover/style.min.css\";i:120;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/editor-rtl.css\";i:121;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/editor.css\";i:123;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/editor.min.css\";i:124;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/style-rtl.css\";i:125;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/style.css\";i:127;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/details/style.min.css\";i:128;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/editor.css\";i:131;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/editor.min.css\";i:132;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/style-rtl.css\";i:133;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/style.css\";i:135;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/style.min.css\";i:136;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/theme.css\";i:139;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/embed/theme.min.css\";i:140;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/editor-rtl.css\";i:141;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/editor.css\";i:143;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/editor.min.css\";i:144;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/style-rtl.css\";i:145;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:60:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/style.css\";i:147;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/file/style.min.css\";i:148;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/footnotes/style.css\";i:151;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/footnotes/style.min.css\";i:152;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/freeform/editor.css\";i:155;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/freeform/editor.min.css\";i:156;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/editor.css\";i:159;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/editor.min.css\";i:160;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/style.css\";i:163;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/style.min.css\";i:164;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/theme.css\";i:167;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/gallery/theme.min.css\";i:168;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/editor-rtl.css\";i:169;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/editor.css\";i:171;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/editor.min.css\";i:172;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/style-rtl.css\";i:173;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/style.css\";i:175;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/style.min.css\";i:176;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/theme-rtl.css\";i:177;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/theme.css\";i:179;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/group/theme.min.css\";i:180;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/heading/style-rtl.css\";i:181;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/heading/style.css\";i:183;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/heading/style.min.css\";i:184;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/html/editor-rtl.css\";i:185;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/html/editor.css\";i:187;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/html/editor.min.css\";i:188;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/editor-rtl.css\";i:189;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/editor.css\";i:191;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/editor.min.css\";i:192;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/style-rtl.css\";i:193;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/style.css\";i:195;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/style.min.css\";i:196;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/theme-rtl.css\";i:197;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/theme.css\";i:199;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/image/theme.min.css\";i:200;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-comments/style.css\";i:203;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/editor.css\";i:207;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/style.css\";i:211;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/list/style-rtl.css\";i:213;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:60:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/list/style.css\";i:215;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/list/style.min.css\";i:216;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/editor.css\";i:219;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/editor.min.css\";i:220;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/style.css\";i:223;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/media-text/style.min.css\";i:224;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/more/editor-rtl.css\";i:225;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/more/editor.css\";i:227;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/more/editor.min.css\";i:228;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/editor.css\";i:231;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/style.css\";i:235;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:83:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/editor.css\";i:243;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/editor.min.css\";i:244;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/style.css\";i:247;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/navigation/style.min.css\";i:248;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/nextpage/editor.css\";i:251;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/editor.css\";i:255;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/editor.min.css\";i:256;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/style.css\";i:259;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/page-list/style.min.css\";i:260;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/editor.css\";i:263;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/style.css\";i:267;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/paragraph/style.min.css\";i:268;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-author/style.css\";i:271;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-author/style.min.css\";i:272;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:83:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:78:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:82:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/style.css\";i:279;s:78:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-date/style.css\";i:283;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-date/style.min.css\";i:284;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/style.css\";i:291;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:84:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:83:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/style.css\";i:299;s:79:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:84:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:78:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/editor.css\";i:307;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/editor.min.css\";i:308;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/style.css\";i:311;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-template/style.min.css\";i:312;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-terms/style.css\";i:315;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-terms/style.min.css\";i:316;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-title/style.css\";i:319;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/post-title/style.min.css\";i:320;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/preformatted/style.css\";i:323;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/preformatted/style.min.css\";i:324;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/editor.css\";i:327;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/style.css\";i:331;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/style.min.css\";i:332;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/theme.css\";i:335;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:85:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:89:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:81:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:85:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:81:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/editor.css\";i:343;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/style.css\";i:347;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-title/style.css\";i:351;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query-title/style.min.css\";i:352;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query/editor-rtl.css\";i:353;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query/editor.css\";i:355;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/query/editor.min.css\";i:356;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/style-rtl.css\";i:357;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/style.css\";i:359;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/style.min.css\";i:360;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/theme.css\";i:363;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/quote/theme.min.css\";i:364;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/read-more/style.css\";i:367;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/read-more/style.min.css\";i:368;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:60:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/editor.css\";i:371;s:64:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/editor.min.css\";i:372;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/style-rtl.css\";i:373;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:59:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/style.css\";i:375;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/rss/style.min.css\";i:376;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/editor-rtl.css\";i:377;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/editor.css\";i:379;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/editor.min.css\";i:380;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/style-rtl.css\";i:381;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/style.css\";i:383;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/style.min.css\";i:384;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/theme-rtl.css\";i:385;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/theme.css\";i:387;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/search/theme.min.css\";i:388;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/editor.css\";i:391;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/editor.min.css\";i:392;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/style-rtl.css\";i:393;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/style.css\";i:395;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/style.min.css\";i:396;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/theme.css\";i:399;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/separator/theme.min.css\";i:400;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/shortcode/editor.css\";i:403;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/editor.css\";i:407;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/style.css\";i:411;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-logo/style.min.css\";i:412;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-tagline/editor.css\";i:415;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:75:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/editor.css\";i:419;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/editor.min.css\";i:420;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/style.css\";i:423;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/site-title/style.min.css\";i:424;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-link/editor.css\";i:427;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-link/editor.min.css\";i:428;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/editor.css\";i:431;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/editor.min.css\";i:432;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/style.css\";i:435;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/social-links/style.min.css\";i:436;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:71:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:63:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/editor.css\";i:439;s:67:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/editor.min.css\";i:440;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/style.css\";i:443;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/spacer/style.min.css\";i:444;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/editor-rtl.css\";i:445;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/editor.css\";i:447;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/editor.min.css\";i:448;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/style-rtl.css\";i:449;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/style.css\";i:451;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/style.min.css\";i:452;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/theme-rtl.css\";i:453;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/theme.css\";i:455;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/table/theme.min.css\";i:456;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/tag-cloud/style.css\";i:459;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:78:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/editor.css\";i:463;s:74:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/editor.min.css\";i:464;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/theme.css\";i:467;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/template-part/theme.min.css\";i:468;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:80:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/term-description/style.css\";i:471;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/term-description/style.min.css\";i:472;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:77:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/editor.css\";i:475;s:73:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:76:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:68:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/style.css\";i:479;s:72:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/text-columns/style.min.css\";i:480;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/verse/style-rtl.css\";i:481;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/verse/style.css\";i:483;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/verse/style.min.css\";i:484;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/editor-rtl.css\";i:485;s:70:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:62:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/editor.css\";i:487;s:66:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/editor.min.css\";i:488;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/style-rtl.css\";i:489;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/style.css\";i:491;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/style.min.css\";i:492;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/theme-rtl.css\";i:493;s:69:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:61:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/theme.css\";i:495;s:65:\"E:/xampp7.4/htdocs/imm/seo/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(124, 'https_detection_errors', 'a:0:{}', 'yes'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696314381;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1696314380;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(137, 'can_compress_scripts', '1', 'yes'),
(138, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"maplewestimmigration@gmail.com\";s:7:\"version\";s:5:\"6.3.1\";s:9:\"timestamp\";i:1694110511;}', 'no'),
(148, 'recently_activated', 'a:4:{s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:1694270610;s:48:\"simple-html-rich-text-for-block-editor/index.php\";i:1694113378;s:25:\"wp-graphql/wp-graphql.php\";i:1694111284;s:19:\"faustwp/faustwp.php\";i:1694110732;}', 'yes'),
(157, 'faustwp_settings', 'a:5:{s:12:\"frontend_uri\";s:21:\"http://localhost/imm/\";s:10:\"secret_key\";s:36:\"01f62444-6e7a-4318-aa06-141ce0cd7c7f\";s:14:\"menu_locations\";s:15:\"Primary, Footer\";s:15:\"enable_rewrites\";s:1:\"1\";s:16:\"enable_redirects\";s:1:\"1\";}', 'yes'),
(158, 'faustwp_current_version', '1.0.3', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(164, 'wp_graphql_version', '1.16.0', 'yes'),
(166, 'graphql_general_settings', '', 'yes'),
(174, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"21.1\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(175, 'wpseo', 'a:106:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"21.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1694111375;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:36:\"https://seo.maplewestimmigration.com\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1694111378;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:4:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1696156731;s:31:\"wpseo_unindexed_post_link_count\";i:1696156731;s:31:\"wpseo_unindexed_term_link_count\";i:1696156731;s:35:\"wpseo_total_unindexed_general_items\";i:1696156731;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(176, 'wpseo_titles', 'a:117:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(177, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(202, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(258, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":3,\"critical\":1}', 'yes'),
(287, 'action_scheduler_hybrid_store_demarkation', '34', 'yes'),
(288, 'schema-ActionScheduler_StoreSchema', '7.0.1694269906', 'yes'),
(289, 'schema-ActionScheduler_LoggerSchema', '3.0.1694269906', 'yes'),
(290, 'wp_mail_smtp_initial_version', '3.9.0', 'no'),
(291, 'wp_mail_smtp_version', '3.9.0', 'no'),
(292, 'wp_mail_smtp', 'a:3:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:30:\"maplewestimmigration@gmail.com\";s:9:\"from_name\";s:31:\"Maple West Immigration Services\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:2:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}}', 'no'),
(293, 'wp_mail_smtp_activated_time', '1694269906', 'no'),
(294, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1694269906;}', 'yes'),
(299, 'action_scheduler_lock_async-request-runner', '1694270670', 'yes'),
(303, 'wp_mail_smtp_migration_version', '5', 'yes'),
(304, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(305, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(306, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1694269918;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'no'),
(312, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1694270239;s:9:\"dismissed\";b:0;}', 'yes'),
(320, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1694270461;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(711, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1696616476', 'no'),
(712, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(778, '_site_transient_timeout_browser_22210ca73bf1af2ec2eace74a96ee356', '1696761531', 'no'),
(779, '_site_transient_browser_22210ca73bf1af2ec2eace74a96ee356', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"117.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(794, 'category_children', 'a:0:{}', 'yes'),
(852, '_site_transient_timeout_theme_roots', '1696316181', 'no'),
(853, '_site_transient_theme_roots', 'a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(854, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1696314381;s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"21.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.21.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:5:\"7.2.5\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"3.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"3.0\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"21.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1694112056:1'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1694112152'),
(6, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1694112153'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 6, '_edit_last', '1'),
(11, 6, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(12, 6, '_yoast_wpseo_wordproof_timestamp', ''),
(13, 11, '_edit_lock', '1694112235:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(16, 11, '_yoast_wpseo_wordproof_timestamp', ''),
(17, 13, '_edit_lock', '1696156685:1'),
(18, 13, '_edit_last', '1'),
(19, 13, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(20, 13, '_yoast_wpseo_wordproof_timestamp', ''),
(21, 15, '_edit_lock', '1696156743:1'),
(22, 15, '_edit_last', '1'),
(23, 15, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(24, 15, '_yoast_wpseo_wordproof_timestamp', ''),
(25, 17, '_edit_lock', '1694112794:1'),
(26, 17, '_edit_last', '1'),
(27, 17, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(28, 17, '_yoast_wpseo_wordproof_timestamp', ''),
(29, 19, '_edit_lock', '1694118519:1'),
(32, 19, '_wp_page_template', 'blank'),
(33, 19, '_edit_last', '1'),
(36, 19, '_yoast_wpseo_primary_category', ''),
(37, 19, '_yoast_wpseo_content_score', '60'),
(38, 19, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(39, 19, '_yoast_wpseo_wordproof_timestamp', ''),
(42, 19, '_wp_old_slug', '19'),
(43, 24, '_wp_attached_file', '2023/09/travel.png'),
(44, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:1456;s:4:\"file\";s:18:\"2023/09/travel.png\";s:8:\"filesize\";i:4487055;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"travel-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:103746;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"travel-1024x728.png\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1087225;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"travel-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38381;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"travel-768x546.png\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:598562;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"travel-1536x1092.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1092;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2318832;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 19, '_thumbnail_id', '24'),
(54, 19, '_wp_old_slug', 'hey-this-is-first-post'),
(55, 1, '_wp_trash_meta_status', 'publish'),
(56, 1, '_wp_trash_meta_time', '1694118668'),
(57, 1, '_wp_desired_post_slug', 'hello-world'),
(58, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(59, 31, '_edit_last', '1'),
(60, 31, '_edit_lock', '1694119082:1'),
(61, 32, '_wp_attached_file', '2023/09/Screenshot-2023-08-28-234146.png'),
(62, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:940;s:6:\"height\";i:479;s:4:\"file\";s:40:\"2023/09/Screenshot-2023-08-28-234146.png\";s:8:\"filesize\";i:124906;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2023-08-28-234146-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33693;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2023-08-28-234146-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28071;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2023-08-28-234146-768x391.png\";s:5:\"width\";i:768;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:221396;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 31, '_thumbnail_id', '32'),
(64, 31, '_wp_page_template', 'default'),
(67, 31, '_yoast_wpseo_content_score', '30'),
(68, 31, '_yoast_wpseo_estimated-reading-time-minutes', '2'),
(69, 31, '_yoast_wpseo_wordproof_timestamp', ''),
(70, 31, '_yoast_wpseo_primary_category', ''),
(71, 34, '_edit_last', '1'),
(72, 34, '_wp_page_template', 'default'),
(73, 34, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(74, 34, '_yoast_wpseo_wordproof_timestamp', ''),
(75, 34, '_edit_lock', '1694292324:1'),
(76, 13, '_wp_page_template', 'default'),
(77, 15, '_wp_page_template', 'default'),
(78, 40, '_edit_last', '1'),
(79, 40, '_edit_lock', '1696156771:1'),
(80, 40, '_wp_page_template', 'default'),
(81, 40, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(82, 40, '_yoast_wpseo_wordproof_timestamp', ''),
(83, 42, '_edit_last', '1'),
(84, 42, '_edit_lock', '1696156821:1'),
(85, 42, '_wp_page_template', 'default'),
(86, 42, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(87, 42, '_yoast_wpseo_wordproof_timestamp', ''),
(88, 44, '_edit_last', '1'),
(89, 44, '_edit_lock', '1696156865:1'),
(90, 44, '_wp_page_template', 'default'),
(91, 44, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(92, 44, '_yoast_wpseo_wordproof_timestamp', ''),
(93, 46, '_edit_last', '1'),
(94, 46, '_edit_lock', '1696157031:1'),
(95, 46, '_wp_page_template', 'default'),
(96, 46, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(97, 46, '_yoast_wpseo_wordproof_timestamp', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-09-07 18:14:51', '2023-09-07 18:14:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-09-07 20:31:08', '2023-09-07 20:31:08', '', 0, 'https://seo.maplewestimmigration.com/?p=1', 0, 'post', '', 1),
(2, 1, '2023-09-07 18:14:51', '2023-09-07 18:14:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://seo.maplewestimmigration.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-09-07 18:42:34', '2023-09-07 18:42:34', '', 0, 'https://seo.maplewestimmigration.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-09-07 18:14:51', '2023-09-07 18:14:51', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://seo.maplewestimmigration.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-09-07 18:42:33', '2023-09-07 18:42:33', '', 0, 'https://seo.maplewestimmigration.com/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-09-07 18:14:55', '2023-09-07 18:14:55', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-09-07 18:14:55', '2023-09-07 18:14:55', '', 0, 'https://seo.maplewestimmigration.com/2023/09/07/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-09-07 18:19:42', '2023-09-07 18:19:42', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-09-07 18:42:51', '2023-09-07 18:42:51', '', 0, 'https://seo.maplewestimmigration.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-09-07 18:19:32', '2023-09-07 18:19:32', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-09-07 18:19:32', '2023-09-07 18:19:32', '', 0, 'https://seo.maplewestimmigration.com/2023/09/07/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(8, 1, '2023-09-07 18:19:42', '2023-09-07 18:19:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-09-07 18:19:42', '2023-09-07 18:19:42', '', 6, 'https://seo.maplewestimmigration.com/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-09-07 18:42:33', '2023-09-07 18:42:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://seo.maplewestimmigration.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-09-07 18:42:33', '2023-09-07 18:42:33', '', 3, 'https://seo.maplewestimmigration.com/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-09-07 18:42:34', '2023-09-07 18:42:34', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://seo.maplewestimmigration.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-09-07 18:42:34', '2023-09-07 18:42:34', '', 2, 'https://seo.maplewestimmigration.com/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-09-07 18:43:51', '2023-09-07 18:43:51', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-09-07 18:43:53', '2023-09-07 18:43:53', '', 0, 'https://seo.maplewestimmigration.com/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-09-07 18:43:51', '2023-09-07 18:43:51', '', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-09-07 18:43:51', '2023-09-07 18:43:51', '', 11, 'https://seo.maplewestimmigration.com/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-09-07 18:44:53', '2023-09-07 18:44:53', '', 'Client Portal', '', 'publish', 'closed', 'closed', '', 'client-portal', '', '', '2023-10-01 10:39:46', '2023-10-01 10:39:46', '', 0, 'https://seo.maplewestimmigration.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2023-09-07 18:44:53', '2023-09-07 18:44:53', '', 'Application Status', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-09-07 18:44:53', '2023-09-07 18:44:53', '', 13, 'https://seo.maplewestimmigration.com/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-09-07 18:45:18', '2023-09-07 18:45:18', '', 'Latest News', '', 'publish', 'closed', 'closed', '', 'latest-news', '', '', '2023-10-01 10:41:05', '2023-10-01 10:41:05', '', 0, 'https://seo.maplewestimmigration.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-09-07 18:45:18', '2023-09-07 18:45:18', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-09-07 18:45:18', '2023-09-07 18:45:18', '', 15, 'https://seo.maplewestimmigration.com/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-09-07 18:45:48', '2023-09-07 18:45:48', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-09-07 18:45:49', '2023-09-07 18:45:49', '', 0, 'https://seo.maplewestimmigration.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2023-09-07 18:45:48', '2023-09-07 18:45:48', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2023-09-07 18:45:48', '2023-09-07 18:45:48', '', 17, 'https://seo.maplewestimmigration.com/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-09-07 18:59:43', '2023-09-07 18:59:43', 'Canadian Experience Class (CEC) is a Canadian immigration program that uses Express Entry. It is one of the most popular ways for people with Canadian work experience to obtain permanent residency. As the name suggests, one of the core eligibility requirements for CEC is to have Canadian work experience. Let’s dig deeper into CEC requirements.\r\n<h2>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam ipsam facere nihil! Perferendis, praesentium.</h2>\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Reiciendis obcaecati sed quibusdam, porro quod libero iste laborum ipsa dicta cumque id in voluptatum at sit amet minus ipsum recusandae nulla quaerat ut accusantium vero consectetur dolorum! Aliquid iusto cupiditate sint neque architecto incidunt eum odio tenetur reprehenderit voluptatibus? Maiores facere pariatur perspiciatis quo nam facilis. Quisquam, quod! Quisquam nam earum magni odit amet porro aspernatur nobis labore a nostrum, voluptatibus minima dignissimos ut! Error labore sed totam praesentium eveniet odit, aut at impedit voluptatibus explicabo? Fugiat necessitatibus molestiae facere quod voluptas rerum eaque voluptate quas temporibus, nulla est nostrum possimus!\r\n<h3>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi molestias, maxime eligendi velit nesciunt officia eum fugiat et ullam! Magnam, impedit odit ratione id nobis amet quisquam neque explicabo ab?</h3>\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quo harum officiis, non necessitatibus labore cupiditate facere eos ea cumque ab minus recusandae rem quae, a alias quis, aliquid qui commodi! Saepe ipsum voluptatem officia ex assumenda labore voluptate dicta cupiditate culpa suscipit magnam quisquam deleniti ullam iste, vel fuga veniam maxime qu<a>Lorem ipsum dolor sit amet consectetur adipisicing.</a>as ducimus nesciunt magni minus dolorum modi? Aperiam sed ipsum quia odit officia dolores, ea obcaecati impedit reprehenderit dolorem nulla sunt illo laboriosam! Quibusdam provident placeat repellat natus, rerum obcaecati, omnis maxime laudantium, similique praesentium dicta iste fugiat fuga accusamus nostrum. Animi neque esse illum quis! Sed velit amet modi iusto mollitia deleniti tempora unde aperiam, rem nesciunt dolores, veritatis omnis, eveniet eos! Nulla officiis reiciendis laboriosam eveniet? Asperiores eaque soluta a nesciunt doloribus doloremque laborum aliquid magni deserunt ratione accusamus, vero, molestias modi aut perspiciatis sapiente iusto fuga expedita praesentium, totam non debitis excepturi quis? Fugiat, ab at.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n</ul>', 'First Post On Wordpress Lets Deep Drive Into It', '', 'publish', 'open', 'open', '', 'i-dont-know-weather-it-works', '', '', '2023-09-07 20:09:28', '2023-09-07 20:09:28', '', 0, 'https://seo.maplewestimmigration.com/?p=19', 0, 'post', '', 0),
(20, 1, '2023-09-07 18:59:43', '2023-09-07 18:59:43', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<body>\n\n    <nav class=\"site-header sticky-top py-1\">\n      <div class=\"container d-flex flex-column flex-md-row justify-content-between\">\n        <a class=\"py-2\" href=\"#\">\n          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"d-block mx-auto\"><circle cx=\"12\" cy=\"12\" r=\"10\"></circle><line x1=\"14.31\" y1=\"8\" x2=\"20.05\" y2=\"17.94\"></line><line x1=\"9.69\" y1=\"8\" x2=\"21.17\" y2=\"8\"></line><line x1=\"7.38\" y1=\"12\" x2=\"13.12\" y2=\"2.06\"></line><line x1=\"9.69\" y1=\"16\" x2=\"3.95\" y2=\"6.06\"></line><line x1=\"14.31\" y1=\"16\" x2=\"2.83\" y2=\"16\"></line><line x1=\"16.62\" y1=\"12\" x2=\"10.88\" y2=\"21.94\"></line></svg>\n        </a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Tour</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Product</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Features</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Enterprise</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Support</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Pricing</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Cart</a>\n      </div>\n    </nav>\n\n    <div class=\"position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light\">\n      <div class=\"col-md-5 p-lg-5 mx-auto my-5\">\n        <h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\n        <p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\n        <a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\n      </div>\n      <div class=\"product-device box-shadow d-none d-md-block\"></div>\n      <div class=\"product-device product-device-2 box-shadow d-none d-md-block\"></div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <footer class=\"container py-5\">\n      <div class=\"row\">\n        <div class=\"col-12 col-md\">\n          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"d-block mb-2\"><circle cx=\"12\" cy=\"12\" r=\"10\"></circle><line x1=\"14.31\" y1=\"8\" x2=\"20.05\" y2=\"17.94\"></line><line x1=\"9.69\" y1=\"8\" x2=\"21.17\" y2=\"8\"></line><line x1=\"7.38\" y1=\"12\" x2=\"13.12\" y2=\"2.06\"></line><line x1=\"9.69\" y1=\"16\" x2=\"3.95\" y2=\"6.06\"></line><line x1=\"14.31\" y1=\"16\" x2=\"2.83\" y2=\"16\"></line><line x1=\"16.62\" y1=\"12\" x2=\"10.88\" y2=\"21.94\"></line></svg>\n          <small class=\"d-block mb-3 text-muted\">© 2017-2018</small>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Features</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Another one</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Last time</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Resources</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Resource</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Resources</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Business</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Education</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Government</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>About</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Team</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Locations</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Terms</a></li>\n          </ul>\n        </div>\n      </div>\n    </footer>\n\n\n    <!-- Bootstrap core JavaScript\n    ================================================== -->\n    <!-- Placed at the end of the document so the pages load faster -->\n    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n    <script>window.jQuery || document.write(\'<script src=\"../../assets/js/vendor/jquery-slim.min.js\"><\\/script>\')</script>\n    <script src=\"../../assets/js/vendor/popper.min.js\"></script>\n    <script src=\"../../dist/js/bootstrap.min.js\"></script>\n    <script src=\"../../assets/js/vendor/holder.min.js\"></script>\n    <script>\n      Holder.addTheme(\'thumb\', {\n        bg: \'#55595c\',\n        fg: \'#eceeef\',\n        text: \'Thumbnail\'\n      });\n    </script>\n  \n\n</body>\n<!-- /wp:html -->', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 18:59:43', '2023-09-07 18:59:43', '', 19, 'https://seo.maplewestimmigration.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-09-07 19:03:14', '2023-09-07 19:03:14', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<body>\n\n    <nav class=\"site-header sticky-top py-1\">\n      <div class=\"container d-flex flex-column flex-md-row justify-content-between\">\n        <a class=\"py-2\" href=\"#\">\n          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"d-block mx-auto\"><circle cx=\"12\" cy=\"12\" r=\"10\"></circle><line x1=\"14.31\" y1=\"8\" x2=\"20.05\" y2=\"17.94\"></line><line x1=\"9.69\" y1=\"8\" x2=\"21.17\" y2=\"8\"></line><line x1=\"7.38\" y1=\"12\" x2=\"13.12\" y2=\"2.06\"></line><line x1=\"9.69\" y1=\"16\" x2=\"3.95\" y2=\"6.06\"></line><line x1=\"14.31\" y1=\"16\" x2=\"2.83\" y2=\"16\"></line><line x1=\"16.62\" y1=\"12\" x2=\"10.88\" y2=\"21.94\"></line></svg>\n        </a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Tour</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Product</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Features</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Enterprise</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Support</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Pricing</a>\n        <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Cart</a>\n      </div>\n    </nav>\n\n    <div class=\"position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light\">\n      <div class=\"col-md-5 p-lg-5 mx-auto my-5\">\n        <h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\n        <p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\n        <a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\n      </div>\n      <div class=\"product-device box-shadow d-none d-md-block\"></div>\n      <div class=\"product-device product-device-2 box-shadow d-none d-md-block\"></div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 p-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n      <div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n        <div class=\"my-3 py-3\">\n          <h2 class=\"display-5\">Another headline</h2>\n          <p class=\"lead\">And an even wittier subheading.</p>\n        </div>\n        <div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n      </div>\n    </div>\n\n    <footer class=\"container py-5\">\n      <div class=\"row\">\n        <div class=\"col-12 col-md\">\n          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"d-block mb-2\"><circle cx=\"12\" cy=\"12\" r=\"10\"></circle><line x1=\"14.31\" y1=\"8\" x2=\"20.05\" y2=\"17.94\"></line><line x1=\"9.69\" y1=\"8\" x2=\"21.17\" y2=\"8\"></line><line x1=\"7.38\" y1=\"12\" x2=\"13.12\" y2=\"2.06\"></line><line x1=\"9.69\" y1=\"16\" x2=\"3.95\" y2=\"6.06\"></line><line x1=\"14.31\" y1=\"16\" x2=\"2.83\" y2=\"16\"></line><line x1=\"16.62\" y1=\"12\" x2=\"10.88\" y2=\"21.94\"></line></svg>\n          <small class=\"d-block mb-3 text-muted\">© 2017-2018</small>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Features</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Another one</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Last time</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Resources</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Resource</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>Resources</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Business</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Education</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Government</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\n          </ul>\n        </div>\n        <div class=\"col-6 col-md\">\n          <h5>About</h5>\n          <ul class=\"list-unstyled text-small\">\n            <li><a class=\"text-muted\" href=\"#\">Team</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Locations</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\n            <li><a class=\"text-muted\" href=\"#\">Terms</a></li>\n          </ul>\n        </div>\n      </div>\n    </footer>\n\n\n    <!-- Bootstrap core JavaScript\n    ================================================== -->\n    <!-- Placed at the end of the document so the pages load faster -->\n    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n    <script>window.jQuery || document.write(\'<script src=\"../../assets/js/vendor/jquery-slim.min.js\"><\\/script>\')</script>\n    <script src=\"../../assets/js/vendor/popper.min.js\"></script>\n    <script src=\"../../dist/js/bootstrap.min.js\"></script>\n    <script src=\"../../assets/js/vendor/holder.min.js\"></script>\n    <script>\n      Holder.addTheme(\'thumb\', {\n        bg: \'#55595c\',\n        fg: \'#eceeef\',\n        text: \'Thumbnail\'\n      });\n    </script>\n  \n\n</body>\n<!-- /wp:html -->', 'first post', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 19:03:14', '2023-09-07 19:03:14', '', 19, 'https://seo.maplewestimmigration.com/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-09-07 19:35:14', '2023-09-07 19:35:14', '<h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\n<p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\n<a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\n\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n<div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n<div class=\"my-3 py-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 p-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n</div>\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 p-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n<div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\n<div class=\"my-3 py-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n</div>\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 p-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 py-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n</div>\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 p-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\n<div class=\"my-3 py-3\">\n<h2 class=\"display-5\">Another headline</h2>\n<p class=\"lead\">And an even wittier subheading.</p>\n\n</div>\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\n</div>\n</div>\n<footer class=\"container py-5\">\n<div class=\"row\">\n<div class=\"col-12 col-md\"><small class=\"d-block mb-3 text-muted\">© 2017-2018</small></div>\n<div class=\"col-6 col-md\">\n<h5>Features</h5>\n<ul class=\"list-unstyled text-small\">\n 	<li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Another one</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Last time</a></li>\n</ul>\n</div>\n<div class=\"col-6 col-md\">\n<h5>Resources</h5>\n<ul class=\"list-unstyled text-small\">\n 	<li><a class=\"text-muted\" href=\"#\">Resource</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\n</ul>\n</div>\n<div class=\"col-6 col-md\">\n<h5>Resources</h5>\n<ul class=\"list-unstyled text-small\">\n 	<li><a class=\"text-muted\" href=\"#\">Business</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Education</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Government</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\n</ul>\n</div>\n<div class=\"col-6 col-md\">\n<h5>About</h5>\n<ul class=\"list-unstyled text-small\">\n 	<li><a class=\"text-muted\" href=\"#\">Team</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Locations</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\n 	<li><a class=\"text-muted\" href=\"#\">Terms</a></li>\n</ul>\n</div>\n</div>\n</footer>', 'first post', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2023-09-07 19:35:14', '2023-09-07 19:35:14', '', 19, 'https://seo.maplewestimmigration.com/?p=22', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(23, 1, '2023-09-07 19:05:27', '2023-09-07 19:05:27', '<nav class=\"site-header sticky-top py-1\">\r\n<div class=\"container d-flex flex-column flex-md-row justify-content-between\"><a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Tour</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Product</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Features</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Enterprise</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Support</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Pricing</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Cart</a></div>\r\n</nav>\r\n<div class=\"position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light\">\r\n<div class=\"col-md-5 p-lg-5 mx-auto my-5\">\r\n<h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\r\n<p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a></div>\r\n<div class=\"product-device box-shadow d-none d-md-block\"> </div>\r\n<div class=\"product-device product-device-2 box-shadow d-none d-md-block\"> </div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n<div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"> </div>\r\n</div>\r\n</div>\r\n<footer class=\"container py-5\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md\"><small class=\"d-block mb-3 text-muted\">© 2017-2018</small></div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Features</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n<li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Another one</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Last time</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n<li><a class=\"text-muted\" href=\"#\">Resource</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n<li><a class=\"text-muted\" href=\"#\">Business</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Education</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Government</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>About</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n<li><a class=\"text-muted\" href=\"#\">Team</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Locations</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\r\n<li><a class=\"text-muted\" href=\"#\">Terms</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</footer>', 'first post', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 19:05:27', '2023-09-07 19:05:27', '', 19, 'https://seo.maplewestimmigration.com/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-09-07 19:07:34', '2023-09-07 19:07:34', '', 'travel', '', 'inherit', 'open', 'closed', '', 'travel', '', '', '2023-09-07 19:07:34', '2023-09-07 19:07:34', '', 19, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2023-09-07 19:07:55', '2023-09-07 19:07:55', '<nav class=\"site-header sticky-top py-1\">\r\n<div class=\"container d-flex flex-column flex-md-row justify-content-between\"><a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Tour</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Product</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Features</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Enterprise</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Support</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Pricing</a> <a class=\"py-2 d-none d-md-inline-block\" href=\"#\">Cart</a></div>\r\n</nav>\r\n<div class=\"position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light\">\r\n<div class=\"col-md-5 p-lg-5 mx-auto my-5\">\r\n<h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\r\n<p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\r\n\r\n</div>\r\n<div class=\"product-device box-shadow d-none d-md-block\"></div>\r\n<div class=\"product-device product-device-2 box-shadow d-none d-md-block\"></div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<footer class=\"container py-5\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md\"><small class=\"d-block mb-3 text-muted\">© 2017-2018</small></div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Features</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another one</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Last time</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Business</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Education</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Government</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>About</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Team</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Locations</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Terms</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</footer>', 'first post', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 19:07:55', '2023-09-07 19:07:55', '', 19, 'https://seo.maplewestimmigration.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-09-07 19:33:19', '2023-09-07 19:33:19', '<div class=\"position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light\">\r\n<div class=\"col-md-5 p-lg-5 mx-auto my-5\">\r\n<h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\r\n<p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\r\n\r\n</div>\r\n<div class=\"product-device box-shadow d-none d-md-block\"></div>\r\n<div class=\"product-device product-device-2 box-shadow d-none d-md-block\"></div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<footer class=\"container py-5\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md\"><small class=\"d-block mb-3 text-muted\">© 2017-2018</small></div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Features</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another one</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Last time</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Business</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Education</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Government</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>About</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Team</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Locations</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Terms</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</footer>', 'first post', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 19:33:19', '2023-09-07 19:33:19', '', 19, 'https://seo.maplewestimmigration.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-09-07 19:35:16', '2023-09-07 19:35:16', '<h1 class=\"display-4 font-weight-normal\">Punny headline</h1>\r\n<p class=\"lead font-weight-normal\">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple\'s marketing pages.</p>\r\n<a class=\"btn btn-outline-secondary\" href=\"#\">Coming soon</a>\r\n\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-dark box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-primary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-light box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<div class=\"d-md-flex flex-md-equal w-100 my-md-3 pl-md-3\">\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 p-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n<div class=\"bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden\">\r\n<div class=\"my-3 py-3\">\r\n<h2 class=\"display-5\">Another headline</h2>\r\n<p class=\"lead\">And an even wittier subheading.</p>\r\n\r\n</div>\r\n<div class=\"bg-white box-shadow mx-auto\" style=\"width: 80%; height: 300px; border-radius: 21px 21px 0 0;\"></div>\r\n</div>\r\n</div>\r\n<footer class=\"container py-5\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md\"><small class=\"d-block mb-3 text-muted\">© 2017-2018</small></div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Features</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Cool stuff</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Random feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Team feature</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Stuff for developers</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another one</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Last time</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Resource name</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Another resource</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Final resource</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>Resources</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Business</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Education</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Government</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Gaming</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-6 col-md\">\r\n<h5>About</h5>\r\n<ul class=\"list-unstyled text-small\">\r\n 	<li><a class=\"text-muted\" href=\"#\">Team</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Locations</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Privacy</a></li>\r\n 	<li><a class=\"text-muted\" href=\"#\">Terms</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</footer>', 'first post', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 19:35:16', '2023-09-07 19:35:16', '', 19, 'https://seo.maplewestimmigration.com/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-09-07 20:09:28', '2023-09-07 20:09:28', 'Canadian Experience Class (CEC) is a Canadian immigration program that uses Express Entry. It is one of the most popular ways for people with Canadian work experience to obtain permanent residency. As the name suggests, one of the core eligibility requirements for CEC is to have Canadian work experience. Let’s dig deeper into CEC requirements.\r\n<h2>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam ipsam facere nihil! Perferendis, praesentium.</h2>\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Reiciendis obcaecati sed quibusdam, porro quod libero iste laborum ipsa dicta cumque id in voluptatum at sit amet minus ipsum recusandae nulla quaerat ut accusantium vero consectetur dolorum! Aliquid iusto cupiditate sint neque architecto incidunt eum odio tenetur reprehenderit voluptatibus? Maiores facere pariatur perspiciatis quo nam facilis. Quisquam, quod! Quisquam nam earum magni odit amet porro aspernatur nobis labore a nostrum, voluptatibus minima dignissimos ut! Error labore sed totam praesentium eveniet odit, aut at impedit voluptatibus explicabo? Fugiat necessitatibus molestiae facere quod voluptas rerum eaque voluptate quas temporibus, nulla est nostrum possimus!\r\n<h3>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi molestias, maxime eligendi velit nesciunt officia eum fugiat et ullam! Magnam, impedit odit ratione id nobis amet quisquam neque explicabo ab?</h3>\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Quo harum officiis, non necessitatibus labore cupiditate facere eos ea cumque ab minus recusandae rem quae, a alias quis, aliquid qui commodi! Saepe ipsum voluptatem officia ex assumenda labore voluptate dicta cupiditate culpa suscipit magnam quisquam deleniti ullam iste, vel fuga veniam maxime qu<a>Lorem ipsum dolor sit amet consectetur adipisicing.</a>as ducimus nesciunt magni minus dolorum modi? Aperiam sed ipsum quia odit officia dolores, ea obcaecati impedit reprehenderit dolorem nulla sunt illo laboriosam! Quibusdam provident placeat repellat natus, rerum obcaecati, omnis maxime laudantium, similique praesentium dicta iste fugiat fuga accusamus nostrum. Animi neque esse illum quis! Sed velit amet modi iusto mollitia deleniti tempora unde aperiam, rem nesciunt dolores, veritatis omnis, eveniet eos! Nulla officiis reiciendis laboriosam eveniet? Asperiores eaque soluta a nesciunt doloribus doloremque laborum aliquid magni deserunt ratione accusamus, vero, molestias modi aut perspiciatis sapiente iusto fuga expedita praesentium, totam non debitis excepturi quis? Fugiat, ab at.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n 	<li>Lorem ipsum dolor sit.</li>\r\n</ul>', 'First Post On Wordpress Lets Deep Drive Into It', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-09-07 20:09:28', '2023-09-07 20:09:28', '', 19, 'https://seo.maplewestimmigration.com/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-09-07 20:31:08', '2023-09-07 20:31:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-09-07 20:31:08', '2023-09-07 20:31:08', '', 1, 'https://seo.maplewestimmigration.com/?p=29', 0, 'revision', '', 0),
(31, 1, '2023-09-07 20:35:31', '2023-09-07 20:35:31', 'The minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\n<img class=\"wp-image-24 aligncenter\" src=\"https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel-300x213.png\" alt=\"\" width=\"406\" height=\"288\" />\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s', 'Lets Try to Create a Custom Post With Rich Text', '', 'publish', 'open', 'open', '', 'lets-try-to-create-a-custom-post-with-rich-text', '', '', '2023-09-07 20:35:31', '2023-09-07 20:35:31', '', 0, 'https://seo.maplewestimmigration.com/?p=31', 0, 'post', '', 0),
(32, 1, '2023-09-07 20:35:25', '2023-09-07 20:35:25', '', 'Screenshot 2023-08-28 234146', '', 'inherit', 'open', 'closed', '', 'screenshot-2023-08-28-234146', '', '', '2023-09-07 20:35:25', '2023-09-07 20:35:25', '', 31, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/Screenshot-2023-08-28-234146.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2023-09-07 20:35:31', '2023-09-07 20:35:31', 'The minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\n<img class=\"wp-image-24 aligncenter\" src=\"https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel-300x213.png\" alt=\"\" width=\"406\" height=\"288\" />\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s\r\n\r\nThe minimum requirements for CEC can largely be broken down into 4 categories: work experience, official language proficiency test results, intention to live outside of Quebec, and admissibility requirements. At a first glance, CEC requirements can seem pretty straightforward and simple. However, many applicants miss certain details about the key requirements which end up hurting their chance to immigrate through Express Entry’s', 'Lets Try to Create a Custom Post With Rich Text', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-09-07 20:35:31', '2023-09-07 20:35:31', '', 31, 'https://seo.maplewestimmigration.com/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-09-09 20:47:24', '2023-09-09 20:47:24', '', '404', '', 'publish', 'closed', 'closed', '', '404-page-not-found', '', '', '2023-09-09 20:47:24', '2023-09-09 20:47:24', '', 0, 'https://seo.maplewestimmigration.com/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-09-09 20:47:24', '2023-09-09 20:47:24', '', '404', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-09-09 20:47:24', '2023-09-09 20:47:24', '', 34, 'https://seo.maplewestimmigration.com/?p=35', 0, 'revision', '', 0),
(37, 1, '2023-10-01 10:38:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-01 10:38:51', '0000-00-00 00:00:00', '', 0, 'https://seo.maplewestimmigration.com/?p=37', 0, 'post', '', 0),
(38, 1, '2023-10-01 10:39:46', '2023-10-01 10:39:46', '', 'Client Portal', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2023-10-01 10:39:46', '2023-10-01 10:39:46', '', 13, 'https://seo.maplewestimmigration.com/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-10-01 10:41:05', '2023-10-01 10:41:05', '', 'Latest News', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-10-01 10:41:05', '2023-10-01 10:41:05', '', 15, 'https://seo.maplewestimmigration.com/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-10-01 10:41:52', '2023-10-01 10:41:52', '', 'Book Consultation', '', 'publish', 'closed', 'closed', '', 'book-consultation', '', '', '2023-10-01 10:41:52', '2023-10-01 10:41:52', '', 0, 'https://seo.maplewestimmigration.com/?page_id=40', 0, 'page', '', 0),
(41, 1, '2023-10-01 10:41:52', '2023-10-01 10:41:52', '', 'Book Consultation', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-10-01 10:41:52', '2023-10-01 10:41:52', '', 40, 'https://seo.maplewestimmigration.com/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-10-01 10:42:36', '2023-10-01 10:42:36', '', 'Business Visitor Visa', '', 'publish', 'closed', 'closed', '', 'business-visitor-visa', '', '', '2023-10-01 10:42:36', '2023-10-01 10:42:36', '', 0, 'https://seo.maplewestimmigration.com/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-10-01 10:42:36', '2023-10-01 10:42:36', '', 'Business Visitor Visa', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-10-01 10:42:36', '2023-10-01 10:42:36', '', 42, 'https://seo.maplewestimmigration.com/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-10-01 10:43:11', '2023-10-01 10:43:11', '', 'Permanenet Residency', '', 'publish', 'closed', 'closed', '', 'permanenet-residency', '', '', '2023-10-01 10:43:11', '2023-10-01 10:43:11', '', 0, 'https://seo.maplewestimmigration.com/?page_id=44', 0, 'page', '', 0),
(45, 1, '2023-10-01 10:43:11', '2023-10-01 10:43:11', '', 'Permanenet Residency', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-10-01 10:43:11', '2023-10-01 10:43:11', '', 44, 'https://seo.maplewestimmigration.com/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-10-01 10:43:50', '2023-10-01 10:43:50', '', 'Corporate Immigration and Mobility', '', 'publish', 'closed', 'closed', '', 'corporate-immigration-and-mobility', '', '', '2023-10-01 10:43:50', '2023-10-01 10:43:50', '', 0, 'https://seo.maplewestimmigration.com/?page_id=46', 0, 'page', '', 0),
(47, 1, '2023-10-01 10:43:50', '2023-10-01 10:43:50', '', 'Corporate Immigration and Mobility', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-10-01 10:43:50', '2023-10-01 10:43:50', '', 46, 'https://seo.maplewestimmigration.com/?p=47', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(19, 1, 0),
(31, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'maple_admin'),
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
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '37'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:24:\"yoast-seo/document-panel\";i:2;s:23:\"taxonomy-panel-category\";}s:20:\"welcomeGuideTemplate\";b:0;}s:9:\"_modified\";s:24:\"2023-09-07T18:58:01.009Z\";}'),
(20, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1694117367'),
(22, 1, 'session_tokens', 'a:1:{s:64:\"58c2ac89eb17ce84703b62be8f9f6834eedeafd043f2ccd06fcf4f9688a1db59\";a:4:{s:10:\"expiration\";i:1696329530;s:2:\"ip\";s:12:\"38.137.38.75\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1696156730;}}'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"38.137.38.0\";}'),
(24, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:12;s:9:\"\0*\0reason\";s:26:\"permalink_settings_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"maple_admin\";s:9:\"user_pass\";s:34:\"$P$BRCjxCoEt/UtFAp7fsm4uy8ZGasz63.\";s:13:\"user_nicename\";s:11:\"maple_admin\";s:10:\"user_email\";s:30:\"maplewestimmigration@gmail.com\";s:8:\"user_url\";s:24:\"http://localhost/imm/seo\";s:15:\"user_registered\";s:19:\"2023-09-07 18:14:50\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"maple_admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, '_yoast_wpseo_profile_updated', '1696156787');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'maple_admin', '$P$BRCjxCoEt/UtFAp7fsm4uy8ZGasz63.', 'maple_admin', 'maplewestimmigration@gmail.com', 'http://localhost/imm/seo', '2023-09-07 18:14:50', '', 0, 'maple_admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2023-09-09 14:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'https://seo.maplewestimmigration.com/home/', '42:eb6109d8e6469e79010e2faba1a8542c', 6, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:30:19', '2023-09-20 19:06:39', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-09-07 18:42:51', '2023-09-07 18:19:42', 0),
(2, 'https://seo.maplewestimmigration.com/author/maple_admin/', '56:f33a91a9408a73d41ebb8663eadc4514', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/c9d3d9d0a0def7d68fa642ff7ae9d68f?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/c9d3d9d0a0def7d68fa642ff7ae9d68f?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-09-07 18:30:20', '2023-10-01 10:43:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-10-01 10:43:50', '2023-09-07 18:19:32', NULL),
(3, 'https://seo.maplewestimmigration.com/?page_id=3', '47:65fe28286f1fe7fc2f4e8fbf727b2b61', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:30:20', '2023-09-20 20:13:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-09-07 18:42:33', '2023-09-07 18:14:51', 0),
(4, 'https://seo.maplewestimmigration.com/?page_id=2', '47:ea71b7c1e43824184f6592658f88447d', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:30:20', '2023-09-20 20:13:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-09-07 18:42:34', '2023-09-07 18:14:51', 0),
(5, 'https://seo.maplewestimmigration.com/', '37:aa752fa4a6487c24c38a2c8c4de1899f', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:32:24', '2023-10-01 10:43:51', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-10-01 10:43:50', '2023-09-07 18:59:43', NULL),
(6, 'https://seo.maplewestimmigration.com/category/uncategorized/', '60:18699f2ee0cea15bad9bcc3f724ebd83', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:43:50', '2023-09-20 19:10:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-09-07 20:35:31', '2023-09-07 18:59:43', NULL),
(7, 'https://seo.maplewestimmigration.com/about/', '43:f3f6326a3c34b78acb7a0a51c5f33285', 11, 'post', 'page', 1, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:43:52', '2023-09-20 19:06:52', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-09-07 18:43:53', '2023-09-07 18:43:51', 0),
(8, 'https://seo.maplewestimmigration.com/client-portal/', '51:7996cbf0f82c7736431866bd87ca040f', 13, 'post', 'page', 1, 0, NULL, NULL, 'Client Portal', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:44:53', '2023-10-01 10:39:47', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:39:46', '2023-09-07 18:44:53', 0),
(9, 'https://seo.maplewestimmigration.com/latest-news/', '49:ecd42dc8f2f75787f99083cb8cd85ab4', 15, 'post', 'page', 1, 0, NULL, NULL, 'Latest News', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:45:19', '2023-10-01 10:41:06', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:41:05', '2023-09-07 18:45:18', 0),
(10, 'https://seo.maplewestimmigration.com/contact-us/', '48:7a5224a1c0f54222ba7545c50d59426d', 17, 'post', 'page', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:45:48', '2023-09-20 19:53:53', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-09-07 18:45:49', '2023-09-07 18:45:48', 0),
(11, 'https://seo.maplewestimmigration.com/?p=1', '41:a8f3db48f9492a813e911a46b909ed58', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-07 18:57:28', '2023-09-20 20:13:35', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-09-07 20:31:08', '2023-09-07 18:14:51', 0),
(12, 'https://seo.maplewestimmigration.com/i-dont-know-weather-it-works/', '66:9a03cd99ce81c91776cfc336772e3beb', 19, 'post', 'post', 1, 0, NULL, NULL, 'First Post On WordPress Lets Deep Drive Into It', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel.png', NULL, '24', 'featured-image', NULL, NULL, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel-1024x728.png', '24', 'featured-image', '{\"width\":1024,\"height\":728,\"filesize\":1087225,\"path\":\"2023/09/travel-1024x728.png\",\"url\":\"https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/travel-1024x728.png\",\"size\":\"large\",\"id\":24,\"alt\":\"\",\"pixels\":745472,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-09-07 18:58:48', '2023-09-20 19:10:47', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2023-09-07 20:09:28', '2023-09-07 18:59:43', 0),
(13, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:59:51', '2023-09-20 19:06:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(14, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:59:51', '2023-09-09 13:39:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 18:59:51', '2023-09-09 13:39:33', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL),
(16, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 19:30:13', '2023-09-20 19:06:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(17, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 19:30:13', '2023-09-20 19:06:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(18, 'https://seo.maplewestimmigration.com/lets-try-to-create-a-custom-post-with-rich-text/', '85:6452ac4bba0cdcb828140e2c22ddc8ee', 31, 'post', 'post', 1, 0, NULL, NULL, 'Lets Try to Create a Custom Post With Rich Text', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/Screenshot-2023-08-28-234146.png', NULL, '32', 'featured-image', NULL, NULL, 'https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/Screenshot-2023-08-28-234146.png', '32', 'featured-image', '{\"width\":940,\"height\":479,\"filesize\":124906,\"url\":\"https://seo.maplewestimmigration.com/wp-content/uploads/2023/09/Screenshot-2023-08-28-234146.png\",\"path\":\"/home/u356813566/domains/maplewestimmigration.com/public_html/seo/wp-content/uploads/2023/09/Screenshot-2023-08-28-234146.png\",\"size\":\"full\",\"id\":32,\"alt\":\"\",\"pixels\":450260,\"type\":\"image/png\"}', 0, NULL, NULL, '2023-09-07 20:32:49', '2023-09-20 19:10:47', 1, NULL, NULL, NULL, NULL, 0, 2, 2, '2023-09-07 20:35:31', '2023-09-07 20:35:31', 0),
(19, 'https://seo.maplewestimmigration.com/404-page-not-found/', '56:eaf2734948d387ed13ded0549e8a770c', 34, 'post', 'page', 1, 0, NULL, NULL, '404', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-09-09 20:47:25', '2023-09-20 19:14:22', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-09-09 20:47:24', '2023-09-09 20:47:24', 0),
(20, 'https://seo.maplewestimmigration.com/book-consultation/', '55:aba945ed5bafdb75eac44c281d2d8583', 40, 'post', 'page', 1, 0, NULL, NULL, 'Book Consultation', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-10-01 10:41:43', '2023-10-01 10:41:53', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:41:52', '2023-10-01 10:41:52', 0),
(21, 'https://seo.maplewestimmigration.com/business-visitor-visa/', '59:df67950315306321b4678a1b297fb777', 42, 'post', 'page', 1, 0, NULL, NULL, 'Business Visitor Visa', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-10-01 10:42:27', '2023-10-01 10:42:37', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:42:36', '2023-10-01 10:42:36', 0),
(22, 'https://seo.maplewestimmigration.com/permanenet-residency/', '58:d2009a42909ec8e8493264997b12cd64', 44, 'post', 'page', 1, 0, NULL, NULL, 'Permanenet Residency', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-10-01 10:43:06', '2023-10-01 10:43:12', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:43:11', '2023-10-01 10:43:11', 0),
(23, 'https://seo.maplewestimmigration.com/corporate-immigration-and-mobility/', '72:bf55637f0f8c032214f852f52a77be11', 46, 'post', 'page', 1, 0, NULL, NULL, 'Corporate Immigration and Mobility', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-10-01 10:43:45', '2023-10-01 10:43:51', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-10-01 10:43:50', '2023-10-01 10:43:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(28, 'http://localhost/imm/seo/wp-content/uploads/2023/09/travel-300x213.png', 31, 24, 'image-in', 18, NULL, 1456, 2048, 4487055, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
