-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2015 at 08:49 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp_esplanade6`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-27 06:57:22', '2015-04-27 06:57:22', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_create_map`
--

CREATE TABLE `wp_create_map` (
`map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` text,
  `map_layer_setting` text,
  `map_polygon_setting` text,
  `map_polyline_setting` text,
  `map_cluster_setting` text,
  `map_overlay_setting` text
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_create_map`
--

INSERT INTO `wp_create_map` (`map_id`, `map_title`, `map_width`, `map_height`, `map_zoom_level`, `map_type`, `map_scrolling_wheel`, `map_visual_refresh`, `map_45imagery`, `map_street_view_setting`, `map_route_direction_setting`, `map_all_control`, `map_info_window_setting`, `style_google_map`, `map_locations`, `map_layer_setting`, `map_polygon_setting`, `map_polyline_setting`, `map_cluster_setting`, `map_overlay_setting`) VALUES
(3, 'Location Map', '', '630', '16', 'ROADMAP', 'true', 'false', '', 'a:4:{s:14:"street_control";s:5:"false";s:24:"street_view_close_button";s:5:"false";s:13:"links_control";s:4:"true";s:23:"street_view_pan_control";s:4:"true";}', 'N;', 'a:6:{s:11:"pan_control";s:4:"true";s:12:"zoom_control";s:4:"true";s:16:"map_type_control";s:4:"true";s:13:"scale_control";s:4:"true";s:19:"street_view_control";s:4:"true";s:20:"overview_map_control";s:4:"true";}', 'a:12:{s:11:"info_window";s:4:"true";s:26:"enable_info_window_setting";s:5:"false";s:17:"info_window_width";i:300;s:18:"info_window_height";s:0:"";s:24:"info_window_shadow_style";i:0;s:26:"info_window_border_radious";i:10;s:24:"info_window_border_width";i:1;s:24:"info_window_border_color";s:7:"#CCCCCC";s:28:"info_window_background_color";s:7:"#FFFFFF";s:22:"info_window_arrow_size";i:20;s:26:"info_window_arrow_position";i:50;s:23:"info_window_arrow_style";i:0;}', '', 'a:1:{i:0;s:1:"3";}', 'a:1:{s:12:"choose_layer";s:0:"";}', NULL, NULL, 'a:4:{s:4:"grid";s:2:"15";s:9:"map_style";s:2:"-1";s:8:"max_zoom";s:1:"1";s:14:"marker_cluster";s:5:"false";}', 'a:7:{s:20:"overlay_border_color";s:6:"f22800";s:13:"overlay_width";s:3:"200";s:14:"overlay_height";s:3:"200";s:16:"overlay_fontsize";s:2:"16";s:20:"overlay_border_width";s:1:"2";s:20:"overlay_border_style";s:7:"default";s:7:"overlay";s:5:"false";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_galleries`
--

CREATE TABLE `wp_gallery_galleries` (
`id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_gallery_galleries`
--

INSERT INTO `wp_gallery_galleries` (`id`, `title`, `created`, `modified`) VALUES
(1, 'g1', '2015-04-28 11:57:58', '2015-04-28 11:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_galleriesslides`
--

CREATE TABLE `wp_gallery_galleriesslides` (
`id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL DEFAULT '0',
  `slide_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_gallery_galleriesslides`
--

INSERT INTO `wp_gallery_galleriesslides` (`id`, `gallery_id`, `slide_id`, `order`, `created`, `modified`) VALUES
(1, 1, 1, 0, '2015-04-28 11:58:21', '2015-04-28 11:58:21'),
(2, 1, 2, 0, '2015-04-28 11:58:35', '2015-04-28 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gallery_slides`
--

CREATE TABLE `wp_gallery_slides` (
`id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '',
  `type` enum('file','url') NOT NULL DEFAULT 'file',
  `image_url` varchar(200) NOT NULL DEFAULT '',
  `uselink` enum('Y','N') NOT NULL DEFAULT 'N',
  `linktarget` enum('self','blank') NOT NULL DEFAULT 'self',
  `link` varchar(200) NOT NULL DEFAULT '',
  `order` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_gallery_slides`
--

INSERT INTO `wp_gallery_slides` (`id`, `title`, `description`, `image`, `type`, `image_url`, `uselink`, `linktarget`, `link`, `order`, `created`, `modified`) VALUES
(1, 'a', '', 'image_01.jpg', 'file', '', 'N', 'self', '', 0, '2015-04-28 11:58:21', '2015-04-28 11:58:21'),
(2, 'b', '', 'image_02.jpg', 'file', '', 'N', 'self', '', 0, '2015-04-28 11:58:35', '2015-04-28 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `wp_group_map`
--

CREATE TABLE `wp_group_map` (
`group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_map_locations`
--

CREATE TABLE `wp_map_locations` (
`location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_messages` text,
  `location_settings` text,
  `location_group_map` int(11) DEFAULT NULL,
  `location_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_map_locations`
--

INSERT INTO `wp_map_locations` (`location_id`, `location_title`, `location_address`, `location_draggable`, `location_latitude`, `location_longitude`, `location_messages`, `location_settings`, `location_group_map`, `location_added`) VALUES
(3, 'Auckland', 'Auckland, New Zealand', 'false', '-36.8484597', '174.76333150000005', 'YToxOntzOjMyOiJnb29nbGVtYXBfaW5mb3dpbmRvd19tZXNzYWdlX29uZSI7czowOiIiO30=', 'a:1:{s:15:"hide_infowindow";s:4:"true";}', 0, '2015-04-28 12:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_map_routes`
--

CREATE TABLE `wp_map_routes` (
`route_id` int(11) NOT NULL,
  `route_title` varchar(255) DEFAULT NULL,
  `route_stroke_color` varchar(255) DEFAULT NULL,
  `route_stroke_opacity` varchar(255) DEFAULT NULL,
  `route_stroke_weight` int(11) DEFAULT NULL,
  `route_travel_mode` text,
  `route_unit_system` text,
  `route_marker_draggable` text,
  `route_custom_marker` text,
  `route_optimize_waypoints` text,
  `route_start_location` int(11) DEFAULT NULL,
  `route_end_location` int(11) DEFAULT NULL,
  `route_way_points` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3194 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/esplanade6', 'yes'),
(2, 'home', 'http://localhost/esplanade6', 'yes'),
(3, 'blogname', 'Esplanade 6', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'daniel.oraca@gmail.com', 'yes'),
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
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:53:"acf-wordpress-wysiwyg-field-master/acf-wp_wysiwyg.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:41:"custom-post-widget/custom-post-widget.php";i:3;s:23:"revslider/revslider.php";i:4;s:31:"smooth-slider/smooth-slider.php";i:5;s:47:"tabby-responsive-tabs/tabby-responsive-tabs.php";i:6;s:46:"wonderplugin-carousel/wonderplugincarousel.php";i:7;s:46:"woocommerce-bookings/woocommmerce-bookings.php";i:8;s:27:"woocommerce/woocommerce.php";i:9;s:45:"wp-google-map-plugin/wp-google-map-plugin.php";i:10;s:39:"wp-video-lightbox/wp-video-lightbox.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'legenda', 'yes'),
(42, 'stylesheet', 'legenda-child', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:156:"<div class="video-tour">[video_lightbox_youtube video_id="plNoxaA6Tfc&amp;rel=0" width="640" height="480" class="see_how_we_work" anchor="VIDEO TOUR"]</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:46:"wonderplugin-carousel/wonderplugincarousel.php";s:31:"wonderplugin_carousel_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '30', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:136:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"manage_bookings";b:1;s:16:"slideshow_slides";b:1;s:19:"slideshow_galleries";b:1;s:18:"slideshow_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:111:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"manage_bookings";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:19:{s:19:"wp_inactive_widgets";a:0:{}s:12:"main-sidebar";a:0:{}s:12:"shop-sidebar";a:0:{}s:14:"single-sidebar";a:0:{}s:12:"cart-sidebar";a:0:{}s:19:"right-panel-sidebar";a:0:{}s:17:"top-panel-sidebar";a:0:{}s:17:"languages-sidebar";a:0:{}s:9:"prefooter";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer9";a:0:{}s:8:"footer10";a:0:{}s:11:"header-menu";a:1:{i:0;s:20:"custom_post_widget-2";}s:14:"footer-block-2";a:0:{}s:11:"footer-left";a:1:{i:0;s:20:"custom_post_widget-3";}s:12:"footer-right";a:1:{i:0;s:20:"custom_post_widget-4";}s:10:"video-tour";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:9:{i:1444064047;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444064877;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1444071444;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444074960;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1444089600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1444107247;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1444114649;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1444120961;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', '76d31a66b89e8ba0c5108c1bb9b337e2', 'yes'),
(104, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444061286;s:7:"checked";a:2:{s:13:"legenda-child";s:3:"1.0";s:7:"legenda";s:3:"2.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(128, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"daniel.oraca@gmail.com";s:7:"version";s:5:"4.2.5";s:9:"timestamp";i:1443105595;}', 'yes'),
(130, 'db_upgraded', '1', 'yes'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(137, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430122937;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(138, 'current_theme', 'LEGENDA Child - 8theme WordPress theme', 'yes'),
(139, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430122939;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'theme_mods_legenda-child', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"main-menu";i:2;s:11:"mobile-menu";i:2;}}', 'yes'),
(143, 'sc_chat_validate_license', '1', 'yes'),
(144, 'option_tree', 'a:108:{s:11:"main_layout";s:4:"wide";s:6:"to_top";a:1:{i:0;s:1:"1";}s:11:"nice_scroll";a:1:{i:0;s:1:"1";}s:13:"favicon_badge";a:1:{i:0;s:1:"1";}s:11:"footer_demo";a:1:{i:0;s:1:"1";}s:13:"mobile_loader";a:1:{i:0;s:1:"1";}s:11:"google_code";s:0:"";s:17:"main_color_scheme";s:5:"light";s:9:"activecol";s:4:"#fff";s:10:"pricecolor";s:7:"#EE3B3B";s:14:"background_img";a:5:{s:16:"background-color";s:0:"";s:17:"background-repeat";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";}s:16:"background_cover";s:6:"enable";s:8:"mainfont";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:5:"sfont";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h1";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h2";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h3";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h4";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h5";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:2:"h6";a:10:{s:10:"font-color";s:0:"";s:11:"font-family";s:0:"";s:11:"google-font";s:0:"";s:9:"font-size";s:0:"";s:10:"font-style";s:0:"";s:11:"font-weight";s:0:"";s:14:"letter-spacing";s:0:"";s:11:"line-height";s:0:"";s:15:"text-decoration";s:0:"";s:14:"text-transform";s:0:"";}s:11:"header_type";s:1:"3";s:4:"logo";s:63:"http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png";s:7:"favicon";s:33:"[template_url]/images/favicon.ico";s:9:"top_links";a:1:{i:0;s:1:"1";}s:15:"breadcrumb_type";s:0:"";s:11:"footer_type";s:1:"1";s:13:"checkout_page";s:10:"stepbystep";s:11:"ajax_filter";a:1:{i:0;s:1:"1";}s:14:"cats_accordion";a:1:{i:0;s:1:"1";}s:12:"out_of_label";a:1:{i:0;s:1:"1";}s:8:"new_icon";a:1:{i:0;s:1:"1";}s:14:"new_icon_width";s:2:"48";s:15:"new_icon_height";s:2:"48";s:12:"new_icon_url";s:0:"";s:9:"sale_icon";a:1:{i:0;s:1:"1";}s:15:"sale_icon_width";s:2:"48";s:16:"sale_icon_height";s:2:"48";s:13:"sale_icon_url";s:0:"";s:19:"product_bage_banner";s:72:"<p><img src="[template_url]/images/assets/shop-banner.jpg" alt="" /></p>";s:18:"empty_cart_content";s:96:"<h2>Your cart is currently empty</h2>\r\n<p>You have not added any items in your shopping cart</p>";s:22:"empty_category_content";s:31:"<h2>No products were found</h2>";s:15:"account_sidebar";a:1:{i:0;s:1:"1";}s:9:"view_mode";s:9:"grid_list";s:16:"prodcuts_per_row";s:1:"3";s:17:"products_per_page";s:2:"12";s:12:"grid_sidebar";s:4:"left";s:17:"product_img_hover";s:6:"slider";s:12:"descr_length";s:2:"30";s:24:"product_page_image_width";s:3:"500";s:25:"product_page_image_height";s:3:"700";s:24:"product_page_productname";a:1:{i:0;s:1:"1";}s:17:"product_page_cats";a:1:{i:0;s:1:"1";}s:18:"product_page_price";a:1:{i:0;s:1:"1";}s:22:"product_page_addtocart";a:1:{i:0;s:1:"1";}s:14:"single_sidebar";s:5:"right";s:15:"upsell_location";s:7:"sidebar";s:12:"show_related";a:1:{i:0;s:1:"1";}s:14:"ajax_addtocart";a:1:{i:0;s:1:"1";}s:11:"zoom_effect";s:6:"window";s:26:"single_product_thumb_width";s:3:"120";s:27:"single_product_thumb_height";s:3:"130";s:16:"gallery_lightbox";a:1:{i:0;s:1:"1";}s:9:"tabs_type";s:12:"tabs-default";s:11:"share_icons";a:1:{i:0;s:1:"1";}s:16:"custom_tab_title";s:18:"Returns & Delivery";s:10:"custom_tab";s:964:"<p>[row][column size="one-half"]</p>\r\n<h5>Returns and Exchanges</h5>\r\n<p>There are a few important things to keep in mind when returning a product you purchased.You can return unwanted items by post within 7 working days of receipt of your goods.</p>\r\n<p>[checklist style="arrow"]</p>\r\n<ul>\r\n<li>You have 14 calendar days to return an item from the date you received it. </li>\r\n<li>Only items that have been purchased directly from Us.</li>\r\n<li>Please ensure that the item you are returning is repackaged with all elements.</li>\r\n</ul>\r\n<p>[/checklist] [/column][column size="one-half"]</p>\r\n<h5>Ship your item back to Us</h5>\r\n<p>Firstly Print and return this Returns Form to:</p>\r\n<p>30 South Park Avenue, San Francisco, CA 94108, USA<br /> Please remember to ensure that the item you are returning is repackaged with all elements.</p>\r\n<p><span class="underline">For more information, view our full Returns and Exchanges information.</span>[/column][/row]</p>";s:10:"quick_view";a:1:{i:0;s:1:"1";}s:12:"quick_images";s:6:"slider";s:18:"quick_product_name";a:1:{i:0;s:1:"1";}s:11:"quick_price";a:1:{i:0;s:1:"1";}s:12:"quick_rating";a:1:{i:0;s:1:"1";}s:9:"quick_sku";a:1:{i:0;s:1:"1";}s:11:"quick_descr";a:1:{i:0;s:1:"1";}s:17:"quick_add_to_cart";a:1:{i:0;s:1:"1";}s:11:"quick_share";a:1:{i:0;s:1:"1";}s:10:"pp_content";s:154:"<p>You can add any HTML here (admin -&gt; Theme Options -&gt; Promo Popup).<br /> We suggest you create a static block and put it here using shortcode</p>";s:8:"pp_width";s:3:"750";s:9:"pp_height";s:3:"350";s:5:"pp_bg";a:5:{s:16:"background-color";s:0:"";s:17:"background-repeat";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";s:16:"background-image";s:0:"";}s:11:"blog_layout";s:7:"default";s:18:"ajax_posts_loading";a:1:{i:0;s:1:"1";}s:13:"blog_lightbox";a:1:{i:0;s:1:"1";}s:21:"blog_page_image_width";s:4:"1000";s:22:"blog_page_image_height";s:3:"500";s:24:"blog_page_image_cropping";a:1:{i:0;s:1:"1";}s:11:"posts_links";a:1:{i:0;s:1:"1";}s:10:"post_share";a:1:{i:0;s:1:"1";}s:12:"blog_sidebar";s:4:"left";s:18:"blog_sidebar_width";s:1:"4";s:23:"blog_sidebar_responsive";s:6:"bottom";s:15:"portfolio_count";s:2:"-1";s:17:"portfolio_columns";s:1:"3";s:12:"project_name";a:1:{i:0;s:1:"1";}s:14:"project_byline";a:1:{i:0;s:1:"1";}s:15:"project_excerpt";a:1:{i:0;s:1:"1";}s:15:"recent_projects";a:1:{i:0;s:1:"1";}s:18:"portfolio_comments";a:1:{i:0;s:1:"1";}s:18:"portfolio_lightbox";a:1:{i:0;s:1:"1";}s:21:"portfolio_image_width";s:3:"720";s:22:"portfolio_image_height";s:3:"550";s:24:"portfolio_image_cropping";a:1:{i:0;s:1:"1";}s:17:"google_map_enable";a:1:{i:0;s:1:"1";}s:17:"contact_page_type";s:7:"default";s:14:"contacts_email";s:14:"test@gmail.com";s:10:"google_map";s:17:"51.507622,-0.1305";s:10:"responsive";a:1:{i:0;s:1:"1";}s:15:"responsive_from";s:4:"1200";s:11:"new_options";s:0:"";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(145, 'option_tree_settings', 'a:3:{s:15:"contextual_help";a:2:{s:7:"content";a:1:{i:0;a:3:{s:2:"id";s:12:"general_help";s:5:"title";s:7:"General";s:7:"content";s:0:"";}}s:7:"sidebar";s:0:"";}s:8:"sections";a:16:{i:0;a:3:{s:2:"id";s:7:"general";s:5:"title";s:7:"General";s:4:"icon";s:8:"icon-cog";}i:1;a:3:{s:2:"id";s:12:"color_scheme";s:5:"title";s:12:"Color Scheme";s:4:"icon";s:12:"icon-picture";}i:2;a:3:{s:2:"id";s:10:"typography";s:5:"title";s:10:"Typography";s:4:"icon";s:16:"icon-text-height";}i:3;a:3:{s:2:"id";s:6:"header";s:5:"title";s:6:"Header";s:4:"icon";s:9:"icon-cogs";}i:4;a:3:{s:2:"id";s:6:"footer";s:5:"title";s:6:"Footer";s:4:"icon";s:9:"icon-cogs";}i:5;a:3:{s:2:"id";s:4:"shop";s:5:"title";s:4:"Shop";s:4:"icon";s:18:"icon-shopping-cart";}i:6;a:3:{s:2:"id";s:12:"product_grid";s:5:"title";s:20:"Products Page Layout";s:4:"icon";s:7:"icon-th";}i:7;a:3:{s:2:"id";s:14:"single_product";s:5:"title";s:19:"Single Product Page";s:4:"icon";s:13:"icon-file-alt";}i:8;a:3:{s:2:"id";s:10:"quick_view";s:5:"title";s:10:"Quick View";s:4:"icon";s:11:"icon-rocket";}i:9;a:3:{s:2:"id";s:11:"promo_popup";s:5:"title";s:11:"Promo Popup";s:4:"icon";s:9:"icon-gift";}i:10;a:3:{s:2:"id";s:9:"blog_page";s:5:"title";s:11:"Blog Layout";s:4:"icon";s:17:"icon-indent-right";}i:11;a:3:{s:2:"id";s:9:"portfolio";s:5:"title";s:9:"Portfolio";s:4:"icon";s:14:"icon-briefcase";}i:12;a:3:{s:2:"id";s:12:"contact_form";s:5:"title";s:12:"Contact Form";s:4:"icon";s:13:"icon-envelope";}i:13;a:3:{s:2:"id";s:10:"responsive";s:5:"title";s:10:"Responsive";s:4:"icon";s:17:"icon-mobile-phone";}i:14;a:3:{s:2:"id";s:10:"custom_css";s:5:"title";s:10:"Custom CSS";s:4:"icon";s:15:"icon-paper-clip";}i:15;a:3:{s:2:"id";s:6:"backup";s:5:"title";s:13:"Import/Export";s:4:"icon";s:8:"icon-cog";}}s:8:"settings";a:123:{i:0;a:6:{s:2:"id";s:11:"main_layout";s:5:"label";s:11:"Site Layout";s:7:"default";s:4:"wide";s:4:"type";s:6:"select";s:7:"section";s:7:"general";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:4:"wide";s:5:"label";s:4:"Wide";}i:1;a:2:{s:5:"value";s:5:"boxed";s:5:"label";s:5:"Boxed";}}}i:1;a:6:{s:2:"id";s:6:"to_top";s:5:"label";s:20:""Back To Top" button";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:2;a:6:{s:2:"id";s:9:"fixed_nav";s:5:"label";s:16:"Fixed navigation";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:3;a:6:{s:2:"id";s:11:"nice_scroll";s:5:"label";s:11:"Nice Scroll";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:4;a:6:{s:2:"id";s:13:"favicon_badge";s:5:"label";s:42:"Show products in cart count on the favicon";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:5;a:7:{s:2:"id";s:11:"footer_demo";s:5:"label";s:23:"Show footer demo blocks";s:4:"desc";s:42:"Will be shown if footer sidebars are empty";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:6;a:6:{s:2:"id";s:13:"mobile_loader";s:5:"label";s:21:"Show loader on mobile";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:7:"general";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:7;a:5:{s:2:"id";s:11:"google_code";s:5:"label";s:21:"Google Analytics Code";s:7:"default";s:0:"";s:4:"type";s:15:"textarea_simple";s:7:"section";s:7:"general";}i:8;a:6:{s:2:"id";s:17:"main_color_scheme";s:5:"label";s:17:"Main color scheme";s:7:"default";s:5:"light";s:4:"type";s:6:"select";s:7:"section";s:12:"color_scheme";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:5:"light";s:5:"label";s:5:"Light";}i:1;a:2:{s:5:"value";s:4:"dark";s:5:"label";s:4:"Dark";}}}i:9;a:5:{s:2:"id";s:9:"activecol";s:5:"label";s:10:"Main Color";s:7:"default";s:7:"#ed1c2e";s:4:"type";s:11:"colorpicker";s:7:"section";s:12:"color_scheme";}i:10;a:5:{s:2:"id";s:10:"pricecolor";s:5:"label";s:11:"Price Color";s:7:"default";s:7:"#EE3B3B";s:4:"type";s:11:"colorpicker";s:7:"section";s:12:"color_scheme";}i:11;a:6:{s:2:"id";s:14:"background_img";s:5:"label";s:15:"Site Background";s:4:"desc";s:0:"";s:7:"default";s:0:"";s:4:"type";s:10:"background";s:7:"section";s:12:"color_scheme";}i:12;a:6:{s:2:"id";s:16:"background_cover";s:5:"label";s:26:"Background Image Expanding";s:7:"default";s:0:"";s:4:"type";s:6:"select";s:7:"section";s:12:"color_scheme";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:6:"enable";s:5:"label";s:6:"enable";}i:1;a:2:{s:5:"value";s:7:"disable";s:5:"label";s:7:"disable";}}}i:13;a:5:{s:2:"id";s:8:"mainfont";s:5:"label";s:9:"Main Font";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:14;a:5:{s:2:"id";s:5:"sfont";s:5:"label";s:9:"Body Font";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:15;a:5:{s:2:"id";s:2:"h1";s:5:"label";s:2:"H1";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:16;a:5:{s:2:"id";s:2:"h2";s:5:"label";s:2:"H2";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:17;a:5:{s:2:"id";s:2:"h3";s:5:"label";s:2:"H3";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:18;a:5:{s:2:"id";s:2:"h4";s:5:"label";s:2:"H4";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:19;a:5:{s:2:"id";s:2:"h5";s:5:"label";s:2:"H5";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:20;a:5:{s:2:"id";s:2:"h6";s:5:"label";s:2:"H6";s:7:"default";s:0:"";s:4:"type";s:10:"typography";s:7:"section";s:10:"typography";}i:21;a:6:{s:2:"id";s:7:"top_bar";s:5:"label";s:14:"Enable top bar";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:22;a:6:{s:2:"id";s:9:"top_panel";s:5:"label";s:23:"Enable hidden top panel";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:23;a:7:{s:2:"id";s:11:"header_type";s:5:"label";s:11:"Header Type";s:7:"default";i:1;s:4:"type";s:11:"radio-image";s:7:"section";s:6:"header";s:5:"class";s:0:"";s:7:"choices";a:7:{i:0;a:3:{s:5:"value";i:1;s:5:"label";s:7:"Default";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v1.jpg";}i:1;a:3:{s:5:"value";i:2;s:5:"label";s:9:"Variant 2";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v2.jpg";}i:2;a:3:{s:5:"value";i:3;s:5:"label";s:9:"Variant 3";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v3.jpg";}i:3;a:3:{s:5:"value";i:4;s:5:"label";s:9:"Variant 4";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v4.jpg";}i:4;a:3:{s:5:"value";i:5;s:5:"label";s:9:"Variant 5";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v5.jpg";}i:5;a:3:{s:5:"value";i:6;s:5:"label";s:9:"Variant 6";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v6.jpg";}i:6;a:3:{s:5:"value";i:7;s:5:"label";s:7:"Default";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/header_v7.jpg";}}}i:24;a:6:{s:2:"id";s:14:"languages_area";s:5:"label";s:21:"Enable languages area";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:25;a:6:{s:2:"id";s:11:"right_panel";s:5:"label";s:20:"Use right side panel";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:26;a:6:{s:2:"id";s:4:"logo";s:5:"label";s:10:"Logo image";s:7:"default";s:0:"";s:4:"desc";s:34:"Upload image: png, jpg or gif file";s:4:"type";s:6:"upload";s:7:"section";s:6:"header";}i:27;a:6:{s:2:"id";s:7:"favicon";s:5:"label";s:7:"Favicon";s:7:"default";s:33:"[template_url]/images/favicon.ico";s:4:"desc";s:34:"Upload image: png, jpg or gif file";s:4:"type";s:6:"upload";s:7:"section";s:6:"header";}i:28;a:6:{s:2:"id";s:9:"top_links";s:5:"label";s:37:"Enable top links (Register | Sign In)";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:29;a:6:{s:2:"id";s:11:"cart_widget";s:5:"label";s:18:"Enable cart widget";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:30;a:6:{s:2:"id";s:11:"search_form";s:5:"label";s:28:"Enable search form in header";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:31;a:6:{s:2:"id";s:13:"wishlist_link";s:5:"label";s:18:"Show wishlist link";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:6:"header";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:32;a:7:{s:2:"id";s:15:"breadcrumb_type";s:5:"label";s:15:"Breadcrumb Type";s:7:"default";s:7:"default";s:4:"type";s:6:"select";s:7:"section";s:6:"header";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";s:0:"";s:5:"label";s:7:"Default";}i:1;a:2:{s:5:"value";s:8:"variant2";s:5:"label";s:10:"Wide block";}i:2;a:2:{s:5:"value";s:13:"without-title";s:5:"label";s:13:"Without title";}}}i:33;a:7:{s:2:"id";s:11:"footer_type";s:5:"label";s:11:"Footer Type";s:7:"default";i:1;s:4:"type";s:11:"radio-image";s:7:"section";s:6:"footer";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:3:{s:5:"value";i:1;s:5:"label";s:7:"Default";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/footer_v1.jpg";}i:1;a:3:{s:5:"value";i:2;s:5:"label";s:9:"Variant 2";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/footer_v2.jpg";}i:2;a:3:{s:5:"value";i:3;s:5:"label";s:9:"Variant 3";s:3:"src";s:94:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/footer_v3.jpg";}}}i:34;a:6:{s:2:"id";s:17:"google_map_enable";s:5:"label";s:17:"Enable Google Map";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:12:"contact_form";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:35;a:6:{s:2:"id";s:17:"contact_page_type";s:5:"label";s:26:"Choose contact page layout";s:7:"default";s:7:"default";s:4:"type";s:6:"select";s:7:"section";s:12:"contact_form";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:7:"default";s:5:"label";s:14:"Default Layout";}i:1;a:2:{s:5:"value";s:6:"custom";s:5:"label";s:13:"Custom layout";}}}i:36;a:5:{s:2:"id";s:14:"contacts_email";s:5:"label";s:27:"Your email for contact form";s:7:"default";s:14:"test@gmail.com";s:4:"type";s:4:"text";s:7:"section";s:12:"contact_form";}i:37;a:6:{s:2:"id";s:10:"google_map";s:5:"label";s:37:"Longitude and Latitude for google map";s:4:"desc";s:34:"<b>Example:</b>  51.507622,-0.1305";s:7:"default";s:17:"51.507622,-0.1305";s:4:"type";s:4:"text";s:7:"section";s:12:"contact_form";}i:38;a:7:{s:2:"id";s:12:"just_catalog";s:5:"label";s:12:"Just Catalog";s:4:"desc";s:46:"Disable "Add To Cart" button and shopping cart";s:7:"default";i:0;s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:39;a:6:{s:2:"id";s:13:"checkout_page";s:5:"label";s:13:"Checkout page";s:4:"type";s:6:"select";s:7:"section";s:4:"shop";s:7:"default";s:10:"stepbystep";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";s:10:"stepbystep";s:5:"label";s:12:"Step By Step";}i:1;a:2:{s:5:"value";s:7:"default";s:5:"label";s:7:"Default";}i:2;a:2:{s:5:"value";s:5:"quick";s:5:"label";s:14:"Quick Checkout";}}}i:40;a:6:{s:2:"id";s:11:"ajax_filter";s:5:"label";s:18:"Enable Ajax Filter";s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:41;a:6:{s:2:"id";s:14:"cats_accordion";s:5:"label";s:27:"Enable Navigation Accordion";s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:42;a:6:{s:2:"id";s:12:"out_of_label";s:5:"label";s:27:"Enable "Out Of Stock" label";s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:43;a:6:{s:2:"id";s:8:"new_icon";s:5:"label";s:17:"Enable "NEW" icon";s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:44;a:6:{s:2:"id";s:14:"new_icon_width";s:5:"label";s:16:""NEW" Icon width";s:4:"desc";s:19:"<b>Example: </b> 60";s:4:"type";s:4:"text";s:7:"section";s:4:"shop";s:7:"default";i:48;}i:45;a:6:{s:2:"id";s:15:"new_icon_height";s:5:"label";s:17:""NEW" Icon height";s:4:"desc";s:19:"<b>Example: </b> 20";s:4:"type";s:4:"text";s:7:"section";s:4:"shop";s:7:"default";i:48;}i:46;a:6:{s:2:"id";s:12:"new_icon_url";s:5:"label";s:16:""NEW" Icon Image";s:7:"default";s:0:"";s:4:"desc";s:34:"Upload image: png, jpg or gif file";s:4:"type";s:6:"upload";s:7:"section";s:4:"shop";}i:47;a:6:{s:2:"id";s:9:"sale_icon";s:5:"label";s:18:"Enable "Sale" icon";s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:48;a:6:{s:2:"id";s:15:"sale_icon_width";s:5:"label";s:17:""SALE" Icon width";s:7:"default";i:48;s:4:"desc";s:19:"<b>Example: </b> 60";s:4:"type";s:4:"text";s:7:"section";s:4:"shop";}i:49;a:6:{s:2:"id";s:16:"sale_icon_height";s:5:"label";s:18:""SALE" Icon height";s:7:"default";i:48;s:4:"desc";s:19:"<b>Example: </b> 20";s:4:"type";s:4:"text";s:7:"section";s:4:"shop";}i:50;a:6:{s:2:"id";s:13:"sale_icon_url";s:7:"default";s:0:"";s:5:"label";s:17:""SALE" Icon Image";s:4:"desc";s:34:"Upload image: png, jpg or gif file";s:4:"type";s:6:"upload";s:7:"section";s:4:"shop";}i:51;a:6:{s:2:"id";s:19:"product_bage_banner";s:5:"label";s:19:"Product Page Banner";s:7:"default";s:81:"\n<p>\n<img src="[template_url]/images/assets/shop-banner.jpg" />\n</p>\n            ";s:4:"desc";s:34:"Upload image: png, jpg or gif file";s:4:"type";s:8:"textarea";s:7:"section";s:4:"shop";}i:52;a:5:{s:2:"id";s:18:"empty_cart_content";s:5:"label";s:19:"Text for empty cart";s:7:"default";s:109:"\n<h2>Your cart is currently empty</h2>\n<p>You have not added any items in your shopping cart</p>\n            ";s:4:"type";s:8:"textarea";s:7:"section";s:4:"shop";}i:53;a:5:{s:2:"id";s:22:"empty_category_content";s:5:"label";s:23:"Text for empty category";s:7:"default";s:45:"\n<h2>No products were found</h2>\n            ";s:4:"type";s:8:"textarea";s:7:"section";s:4:"shop";}i:54;a:6:{s:2:"id";s:15:"account_sidebar";s:5:"label";s:35:"Enable sidebar on "My Account" page";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:4:"shop";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:55;a:7:{s:2:"id";s:9:"view_mode";s:5:"label";s:18:"Products view mode";s:4:"type";s:6:"select";s:7:"section";s:12:"product_grid";s:7:"default";s:9:"grid_list";s:5:"class";s:16:"prodcuts_per_row";s:7:"choices";a:4:{i:0;a:2:{s:5:"value";s:9:"grid_list";s:5:"label";s:9:"Grid/List";}i:1;a:2:{s:5:"value";s:9:"list_grid";s:5:"label";s:9:"List/Grid";}i:2;a:2:{s:5:"value";s:4:"grid";s:5:"label";s:9:"Only Grid";}i:3;a:2:{s:5:"value";s:4:"list";s:5:"label";s:9:"Only List";}}}i:56;a:7:{s:2:"id";s:16:"prodcuts_per_row";s:5:"label";s:16:"Products per row";s:4:"type";s:6:"select";s:7:"section";s:12:"product_grid";s:7:"default";i:3;s:5:"class";s:16:"prodcuts_per_row";s:7:"choices";a:4:{i:0;a:2:{s:5:"value";i:3;s:5:"label";s:1:"3";}i:1;a:2:{s:5:"value";i:4;s:5:"label";s:1:"4";}i:2;a:2:{s:5:"value";i:5;s:5:"label";s:1:"5";}i:3;a:2:{s:5:"value";i:6;s:5:"label";s:1:"6";}}}i:57;a:5:{s:2:"id";s:17:"products_per_page";s:5:"label";s:17:"Products per page";s:4:"type";s:4:"text";s:7:"default";i:12;s:7:"section";s:12:"product_grid";}i:58;a:8:{s:2:"id";s:12:"grid_sidebar";s:5:"label";s:6:"Layout";s:4:"desc";s:16:"Sidebar position";s:7:"default";s:4:"left";s:4:"type";s:11:"radio-image";s:7:"section";s:12:"product_grid";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:3:{s:5:"value";s:4:"left";s:5:"label";s:12:"Left Sidebar";s:3:"src";s:104:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/left-sidebar.png";}i:1;a:3:{s:5:"value";s:5:"right";s:5:"label";s:13:"Right Sidebar";s:3:"src";s:105:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/right-sidebar.png";}i:2;a:3:{s:5:"value";s:7:"without";s:5:"label";s:15:"Without Sidebar";s:3:"src";s:102:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/full-width.png";}}}i:59;a:6:{s:2:"id";s:17:"product_img_hover";s:5:"label";s:19:"Product Image Hover";s:4:"type";s:6:"select";s:7:"section";s:12:"product_grid";s:7:"default";s:6:"slider";s:7:"choices";a:5:{i:0;a:2:{s:5:"value";s:7:"disable";s:5:"label";s:7:"Disable";}i:1;a:2:{s:5:"value";s:11:"description";s:5:"label";s:11:"Description";}i:2;a:2:{s:5:"value";s:4:"swap";s:5:"label";s:4:"Swap";}i:3;a:2:{s:5:"value";s:7:"tooltip";s:5:"label";s:7:"Tooltip";}i:4;a:2:{s:5:"value";s:6:"slider";s:5:"label";s:13:"Images Slider";}}}i:60;a:5:{s:2:"id";s:12:"descr_length";s:5:"label";s:46:"Number of words for description (hover effect)";s:7:"default";i:30;s:4:"type";s:4:"text";s:7:"section";s:12:"product_grid";}i:61;a:5:{s:2:"id";s:24:"product_page_image_width";s:5:"label";s:20:"Product Images Width";s:7:"default";i:500;s:4:"type";s:4:"text";s:7:"section";s:12:"product_grid";}i:62;a:5:{s:2:"id";s:25:"product_page_image_height";s:5:"label";s:21:"Product Images Height";s:7:"default";i:700;s:4:"type";s:4:"text";s:7:"section";s:12:"product_grid";}i:63;a:6:{s:2:"id";s:27:"product_page_image_cropping";s:5:"label";s:14:"Image Cropping";s:4:"type";s:8:"checkbox";s:7:"default";a:1:{i:0;i:0;}s:7:"section";s:12:"product_grid";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:64;a:6:{s:2:"id";s:24:"product_page_productname";s:5:"label";s:17:"Show product name";s:4:"type";s:8:"checkbox";s:7:"section";s:12:"product_grid";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:65;a:6:{s:2:"id";s:17:"product_page_cats";s:5:"label";s:23:"Show product categories";s:4:"type";s:8:"checkbox";s:7:"section";s:12:"product_grid";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:66;a:6:{s:2:"id";s:18:"product_page_price";s:5:"label";s:10:"Show Price";s:4:"type";s:8:"checkbox";s:7:"section";s:12:"product_grid";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:67;a:6:{s:2:"id";s:22:"product_page_addtocart";s:5:"label";s:25:"Show "Add to cart" button";s:4:"type";s:8:"checkbox";s:7:"section";s:12:"product_grid";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:68;a:6:{s:2:"id";s:11:"blog_layout";s:5:"label";s:11:"Blog Layout";s:4:"type";s:6:"select";s:7:"section";s:9:"blog_page";s:7:"default";s:7:"default";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";s:7:"default";s:5:"label";s:7:"Default";}i:1;a:2:{s:5:"value";s:4:"grid";s:5:"label";s:4:"Grid";}i:2;a:2:{s:5:"value";s:8:"timeline";s:5:"label";s:8:"Timeline";}}}i:69;a:6:{s:2:"id";s:18:"ajax_posts_loading";s:5:"label";s:27:"AJAX Infinite Posts Loading";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"blog_page";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:70;a:6:{s:2:"id";s:13:"blog_lightbox";s:5:"label";s:30:"Enable Lightbox For Blog Posts";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"blog_page";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:71;a:6:{s:2:"id";s:11:"blog_slider";s:5:"label";s:31:"Enable Sliders for posts images";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"blog_page";s:7:"default";i:1;s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:72;a:5:{s:2:"id";s:21:"blog_page_image_width";s:5:"label";s:20:"Post Thumbnail Width";s:7:"default";i:1000;s:4:"type";s:4:"text";s:7:"section";s:9:"blog_page";}i:73;a:5:{s:2:"id";s:22:"blog_page_image_height";s:5:"label";s:21:"Post Thumbnail Height";s:7:"default";i:500;s:4:"type";s:4:"text";s:7:"section";s:9:"blog_page";}i:74;a:6:{s:2:"id";s:24:"blog_page_image_cropping";s:5:"label";s:14:"Image Cropping";s:4:"type";s:8:"checkbox";s:7:"default";a:1:{i:0;i:1;}s:7:"section";s:9:"blog_page";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:75;a:6:{s:2:"id";s:11:"posts_links";s:5:"label";s:34:"Show Previous and Next posts links";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"blog_page";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:76;a:6:{s:2:"id";s:10:"post_share";s:5:"label";s:18:"Show Share buttons";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"blog_page";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:77;a:7:{s:2:"id";s:12:"blog_sidebar";s:5:"label";s:16:"Sidebar position";s:7:"default";s:4:"left";s:4:"type";s:11:"radio-image";s:7:"section";s:9:"blog_page";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:3:{s:5:"value";s:10:"no_sidebar";s:5:"label";s:15:"Without Sidebar";s:3:"src";s:102:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/full-width.png";}i:1;a:3:{s:5:"value";s:4:"left";s:5:"label";s:12:"Left Sidebar";s:3:"src";s:104:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/left-sidebar.png";}i:2;a:3:{s:5:"value";s:5:"right";s:5:"label";s:13:"Right Sidebar";s:3:"src";s:105:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/right-sidebar.png";}}}i:78;a:7:{s:2:"id";s:18:"blog_sidebar_width";s:5:"label";s:13:"Sidebar width";s:7:"default";i:4;s:4:"type";s:6:"select";s:7:"section";s:9:"blog_page";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";i:4;s:5:"label";s:3:"1/3";}i:1;a:2:{s:5:"value";i:3;s:5:"label";s:3:"1/4";}i:2;a:2:{s:5:"value";i:2;s:5:"label";s:3:"1/6";}}}i:79;a:7:{s:2:"id";s:23:"blog_sidebar_responsive";s:5:"label";s:38:"Sidebar position for responsive layout";s:7:"default";s:6:"bottom";s:4:"type";s:6:"select";s:7:"section";s:9:"blog_page";s:5:"class";s:0:"";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:3:"top";s:5:"label";s:3:"Top";}i:1;a:2:{s:5:"value";s:6:"bottom";s:5:"label";s:6:"Bottom";}}}i:80;a:7:{s:2:"id";s:14:"single_sidebar";s:5:"label";s:16:"Sidebar position";s:7:"default";s:5:"right";s:4:"type";s:11:"radio-image";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:3:{s:5:"value";s:10:"no_sidebar";s:5:"label";s:15:"Without Sidebar";s:3:"src";s:102:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/full-width.png";}i:1;a:3:{s:5:"value";s:4:"left";s:5:"label";s:12:"Left Sidebar";s:3:"src";s:104:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/left-sidebar.png";}i:2;a:3:{s:5:"value";s:5:"right";s:5:"label";s:13:"Right Sidebar";s:3:"src";s:105:"http://localhost/esplanade6/wp-content/themes/legenda/option-tree//assets/images/layout/right-sidebar.png";}}}i:81;a:7:{s:2:"id";s:15:"upsell_location";s:5:"label";s:27:"Location of upsell products";s:7:"default";s:7:"sidebar";s:4:"type";s:6:"select";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:7:"sidebar";s:5:"label";s:7:"Sidebar";}i:1;a:2:{s:5:"value";s:13:"after_content";s:5:"label";s:13:"After content";}}}i:82;a:7:{s:2:"id";s:12:"show_related";s:5:"label";s:21:"Show related products";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:83;a:7:{s:2:"id";s:14:"ajax_addtocart";s:5:"label";s:45:"Ajax "Add To Cart" (for simple products only)";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:84;a:7:{s:2:"id";s:19:"show_name_on_single";s:5:"label";s:17:"Show Product name";s:7:"default";i:0;s:4:"type";s:8:"checkbox";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:85;a:7:{s:2:"id";s:11:"zoom_effect";s:5:"label";s:11:"Zoom effect";s:7:"default";s:6:"window";s:4:"type";s:6:"select";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";s:7:"disable";s:5:"label";s:7:"Disable";}i:1;a:2:{s:5:"value";s:6:"slippy";s:5:"label";s:6:"Slippy";}i:2;a:2:{s:5:"value";s:6:"window";s:5:"label";s:6:"Window";}}}i:86;a:5:{s:2:"id";s:26:"single_product_thumb_width";s:5:"label";s:24:"Product Thumbnails Width";s:7:"default";i:120;s:4:"type";s:4:"text";s:7:"section";s:14:"single_product";}i:87;a:5:{s:2:"id";s:27:"single_product_thumb_height";s:5:"label";s:25:"Product Thumbnails Height";s:7:"default";i:130;s:4:"type";s:4:"text";s:7:"section";s:14:"single_product";}i:88;a:7:{s:2:"id";s:16:"gallery_lightbox";s:5:"label";s:34:"Enable Lightbox for Product Images";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:89;a:7:{s:2:"id";s:9:"tabs_type";s:5:"label";s:9:"Tabs type";s:7:"default";s:12:"tabs_default";s:4:"type";s:6:"select";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:4:{i:0;a:2:{s:5:"value";s:12:"tabs-default";s:5:"label";s:7:"Default";}i:1;a:2:{s:5:"value";s:8:"left-bar";s:5:"label";s:8:"Left Bar";}i:2;a:2:{s:5:"value";s:9:"right-bar";s:5:"label";s:9:"Right Bar";}i:3;a:2:{s:5:"value";s:9:"accordion";s:5:"label";s:9:"Accordion";}}}i:90;a:7:{s:2:"id";s:11:"share_icons";s:5:"label";s:18:"Show share buttons";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:14:"single_product";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:91;a:5:{s:2:"id";s:16:"custom_tab_title";s:5:"label";s:16:"Custom Tab Title";s:7:"default";s:18:"Returns & Delivery";s:4:"type";s:4:"text";s:7:"section";s:14:"single_product";}i:92;a:6:{s:2:"id";s:10:"custom_tab";s:5:"label";s:6:"Return";s:4:"desc";s:90:"Enter custom content you would like to output to the product custom tab (for all products)";s:7:"default";s:938:"\n[row][column size="one-half"]<h5>Returns and Exchanges</h5><p>There are a few important things to keep in mind when returning a product you purchased.You can return unwanted items by post within 7 working days of receipt of your goods.</p>[checklist style="arrow"]\n<ul>\n<li>You have 14 calendar days to return an item from the date you received it. </li>\n<li>Only items that have been purchased directly from Us.</li>\n<li>Please ensure that the item you are returning is repackaged with all elements.</li>\n</ul>\n[/checklist] [/column][column size="one-half"]\n<h5>Ship your item back to Us</h5>Firstly Print and return this Returns Form to:<br /> <p>30 South Park Avenue, San Francisco, CA 94108, USA<br /> Please remember to ensure that the item you are returning is repackaged with all elements.</p><br /> <span class="underline">For more information, view our full Returns and Exchanges information.</span>[/column][/row]\n            ";s:4:"type";s:8:"textarea";s:7:"section";s:14:"single_product";}i:93;a:7:{s:2:"id";s:9:"demo_data";s:5:"label";s:39:"Install demo content just in few clicks";s:7:"default";s:0:"";s:4:"desc";s:0:"";s:4:"type";s:9:"demo_data";s:7:"section";s:6:"backup";s:7:"choices";a:2:{i:0;a:2:{s:5:"value";s:10:"e-commerce";s:5:"label";s:10:"E-commerce";}i:1;a:2:{s:5:"value";s:9:"corporate";s:5:"label";s:9:"Corporate";}}}i:94;a:6:{s:2:"id";s:13:"import_export";s:5:"label";s:41:"Import or Export your theme configuration";s:7:"default";s:0:"";s:4:"desc";s:0:"";s:4:"type";s:6:"backup";s:7:"section";s:6:"backup";}i:95;a:6:{s:2:"id";s:10:"quick_view";s:5:"label";s:17:"ENABLE QUICK VIEW";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:96;a:7:{s:2:"id";s:12:"quick_images";s:5:"label";s:14:"Product images";s:7:"default";s:6:"slider";s:4:"type";s:6:"select";s:7:"section";s:10:"quick_view";s:5:"class";s:0:"";s:7:"choices";a:3:{i:0;a:2:{s:5:"value";s:4:"none";s:5:"label";s:4:"None";}i:1;a:2:{s:5:"value";s:6:"slider";s:5:"label";s:6:"Slider";}i:2;a:2:{s:5:"value";s:6:"single";s:5:"label";s:6:"Single";}}}i:97;a:6:{s:2:"id";s:18:"quick_product_name";s:5:"label";s:12:"Product name";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:98;a:6:{s:2:"id";s:11:"quick_price";s:5:"label";s:5:"Price";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:99;a:6:{s:2:"id";s:12:"quick_rating";s:5:"label";s:19:"Product star reting";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:100;a:6:{s:2:"id";s:9:"quick_sku";s:5:"label";s:12:"Product code";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:101;a:6:{s:2:"id";s:11:"quick_descr";s:5:"label";s:17:"Short description";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:102;a:6:{s:2:"id";s:17:"quick_add_to_cart";s:5:"label";s:11:"Add to cart";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:103;a:6:{s:2:"id";s:11:"quick_share";s:5:"label";s:11:"Share icons";s:4:"type";s:8:"checkbox";s:7:"section";s:10:"quick_view";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:104;a:6:{s:2:"id";s:11:"promo_popup";s:5:"label";s:18:"Enable promo popup";s:4:"type";s:8:"checkbox";s:7:"section";s:11:"promo_popup";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:105;a:5:{s:2:"id";s:10:"pp_content";s:5:"label";s:13:"Popup content";s:4:"type";s:8:"textarea";s:7:"section";s:11:"promo_popup";s:7:"default";s:139:"You can add any HTML here (admin -> Theme Options -> Promo Popup).<br> We suggest you create a static block and put it here using shortcode";}i:106;a:5:{s:2:"id";s:8:"pp_width";s:5:"label";s:11:"Popup width";s:7:"default";i:750;s:4:"type";s:4:"text";s:7:"section";s:11:"promo_popup";}i:107;a:5:{s:2:"id";s:9:"pp_height";s:5:"label";s:12:"Popup height";s:7:"default";i:350;s:4:"type";s:4:"text";s:7:"section";s:11:"promo_popup";}i:108;a:5:{s:2:"id";s:5:"pp_bg";s:5:"label";s:16:"Popup background";s:7:"default";s:0:"";s:4:"type";s:10:"background";s:7:"section";s:11:"promo_popup";}i:109;a:6:{s:2:"id";s:15:"portfolio_count";s:5:"label";s:14:"Items per page";s:7:"default";i:-1;s:4:"desc";s:24:"Use -1 to show all items";s:4:"type";s:4:"text";s:7:"section";s:9:"portfolio";}i:110;a:6:{s:2:"id";s:17:"portfolio_columns";s:5:"label";s:7:"Columns";s:4:"type";s:6:"select";s:7:"section";s:9:"portfolio";s:7:"default";i:3;s:7:"choices";a:3:{i:0;a:2:{s:5:"value";i:2;s:5:"label";i:2;}i:1;a:2:{s:5:"value";i:3;s:5:"label";i:3;}i:2;a:2:{s:5:"value";i:4;s:5:"label";i:4;}}}i:111;a:6:{s:2:"id";s:12:"project_name";s:5:"label";s:18:"Show Project names";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:112;a:6:{s:2:"id";s:14:"project_byline";s:5:"label";s:11:"Show ByLine";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:113;a:6:{s:2:"id";s:15:"project_excerpt";s:5:"label";s:12:"Show Excerpt";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:114;a:6:{s:2:"id";s:15:"recent_projects";s:5:"label";s:20:"Show recent projects";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:115;a:6:{s:2:"id";s:18:"portfolio_comments";s:5:"label";s:28:"Enable Comments For Projects";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:116;a:6:{s:2:"id";s:18:"portfolio_lightbox";s:5:"label";s:28:"Enable Lightbox For Projects";s:4:"type";s:8:"checkbox";s:7:"section";s:9:"portfolio";s:7:"default";a:1:{i:0;i:1;}s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:117;a:5:{s:2:"id";s:21:"portfolio_image_width";s:5:"label";s:20:"Project Images Width";s:7:"default";i:720;s:4:"type";s:4:"text";s:7:"section";s:9:"portfolio";}i:118;a:5:{s:2:"id";s:22:"portfolio_image_height";s:5:"label";s:21:"Project Images Height";s:7:"default";i:550;s:4:"type";s:4:"text";s:7:"section";s:9:"portfolio";}i:119;a:6:{s:2:"id";s:24:"portfolio_image_cropping";s:5:"label";s:14:"Image Cropping";s:4:"type";s:8:"checkbox";s:7:"default";a:1:{i:0;i:1;}s:7:"section";s:9:"portfolio";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:120;a:6:{s:2:"id";s:10:"responsive";s:5:"label";s:24:"Enable Responsive Design";s:7:"default";a:1:{i:0;i:1;}s:4:"type";s:8:"checkbox";s:7:"section";s:10:"responsive";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}i:121;a:6:{s:2:"id";s:15:"responsive_from";s:5:"label";s:21:"Large resolution from";s:4:"desc";s:16:"By default: 1200";s:7:"default";i:1200;s:4:"type";s:4:"text";s:7:"section";s:10:"responsive";}i:122;a:7:{s:2:"id";s:10:"custom_css";s:5:"label";s:22:"Enable Custom CSS file";s:4:"desc";s:206:"Enable this option to load "custom.css" file in which you can override the default styling of the theme. To create "custom.css" you can use the file "default.custom.css" which is located in theme directory.";s:7:"default";i:0;s:4:"type";s:8:"checkbox";s:7:"section";s:10:"custom_css";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";i:1;s:5:"label";s:0:"";}}}}}', 'yes'),
(147, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(227, 'widget_custom_post_widget', 'a:4:{i:2;a:4:{s:14:"custom_post_id";s:2:"57";s:22:"show_custom_post_title";N;s:19:"show_featured_image";N;s:21:"apply_content_filters";N;}i:3;a:4:{s:14:"custom_post_id";s:2:"23";s:22:"show_custom_post_title";N;s:19:"show_featured_image";N;s:21:"apply_content_filters";N;}i:4;a:4:{s:14:"custom_post_id";s:2:"25";s:22:"show_custom_post_title";N;s:19:"show_featured_image";N;s:21:"apply_content_filters";N;}s:12:"_multiwidget";i:1;}', 'yes'),
(663, 'woocommerce_default_country', 'GB', 'yes'),
(664, 'woocommerce_allowed_countries', 'all', 'yes'),
(665, 'woocommerce_specific_allowed_countries', '', 'yes'),
(666, 'woocommerce_demo_store', 'no', 'yes'),
(667, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(668, 'woocommerce_api_enabled', 'yes', 'yes'),
(669, 'woocommerce_currency', 'GBP', 'yes'),
(670, 'woocommerce_currency_pos', 'left', 'yes'),
(671, 'woocommerce_price_thousand_sep', ',', 'yes'),
(672, 'woocommerce_price_decimal_sep', '.', 'yes'),
(673, 'woocommerce_price_num_decimals', '2', 'yes'),
(674, 'woocommerce_weight_unit', 'kg', 'yes'),
(675, 'woocommerce_dimension_unit', 'cm', 'yes'),
(676, 'woocommerce_enable_review_rating', 'yes', 'no'),
(677, 'woocommerce_review_rating_required', 'yes', 'no'),
(678, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(679, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(680, 'woocommerce_shop_page_id', '67', 'yes'),
(681, 'woocommerce_shop_page_display', '', 'yes'),
(682, 'woocommerce_category_archive_display', '', 'yes'),
(683, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(684, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(685, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(686, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(687, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(688, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(689, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(690, 'woocommerce_manage_stock', 'yes', 'yes'),
(691, 'woocommerce_hold_stock_minutes', '60', 'no'),
(692, 'woocommerce_notify_low_stock', 'yes', 'no'),
(693, 'woocommerce_notify_no_stock', 'yes', 'no'),
(694, 'woocommerce_stock_email_recipient', 'daniel.oraca@gmail.com', 'no'),
(695, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(696, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(697, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(698, 'woocommerce_stock_format', '', 'yes'),
(699, 'woocommerce_file_download_method', 'force', 'no'),
(700, 'woocommerce_downloads_require_login', 'no', 'no'),
(701, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(702, 'woocommerce_calc_taxes', 'no', 'yes'),
(703, 'woocommerce_prices_include_tax', 'no', 'yes'),
(704, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(705, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(706, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(707, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(708, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(709, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(710, 'woocommerce_price_display_suffix', '', 'yes'),
(711, 'woocommerce_tax_display_cart', 'excl', 'no'),
(712, 'woocommerce_tax_total_display', 'itemized', 'no'),
(713, 'woocommerce_enable_coupons', 'yes', 'no'),
(714, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(715, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(716, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(717, 'woocommerce_cart_page_id', '68', 'yes'),
(718, 'woocommerce_checkout_page_id', '69', 'yes'),
(719, 'woocommerce_terms_page_id', '', 'no'),
(720, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(721, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(722, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(723, 'woocommerce_calc_shipping', 'yes', 'yes'),
(724, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(725, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(726, 'woocommerce_shipping_method_format', '', 'no'),
(727, 'woocommerce_ship_to_destination', 'billing', 'no'),
(728, 'woocommerce_ship_to_countries', '', 'yes'),
(729, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(730, 'woocommerce_myaccount_page_id', '70', 'yes'),
(731, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(732, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(733, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(734, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(735, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(736, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(737, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(738, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(739, 'woocommerce_registration_generate_username', 'yes', 'no'),
(740, 'woocommerce_registration_generate_password', 'no', 'no'),
(741, 'woocommerce_email_from_name', 'Esplanade 6', 'no'),
(742, 'woocommerce_email_from_address', 'daniel.oraca@gmail.com', 'no'),
(743, 'woocommerce_email_header_image', '', 'no'),
(744, 'woocommerce_email_footer_text', 'Esplanade 6 - Powered by WooCommerce', 'no'),
(745, 'woocommerce_email_base_color', '#557da1', 'no'),
(746, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(747, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(748, 'woocommerce_email_text_color', '#505050', 'no'),
(752, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(756, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(757, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(761, 'wc_bookings_version', '1.7.5', 'yes'),
(766, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(771, 'woocommerce_allow_tracking', 'no', 'yes'),
(778, 'woocommerce_db_version', '2.3.8', 'yes'),
(779, 'woocommerce_version', '2.3.8', 'yes'),
(783, 'woocommerce_language_pack_version', 'a:2:{i:0;s:5:"2.3.8";i:1;s:5:"en_US";}', 'yes'),
(785, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(809, '_transient_product_query-transient-version', '1430204417', 'yes'),
(810, '_transient_product-transient-version', '1430204417', 'yes'),
(814, 'brand_children', 'a:0:{}', 'yes'),
(815, 'product_cat_children', 'a:0:{}', 'yes'),
(816, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(823, '_transient_bookings-transient-version', '1430197160', 'yes'),
(1063, 'smooth_slider_options', 'a:54:{s:10:"stylesheet";s:7:"default";s:8:"autostep";s:1:"1";s:2:"fx";s:10:"scrollHorz";s:5:"speed";s:1:"7";s:10:"transition";s:1:"5";s:8:"no_posts";s:1:"5";s:8:"bg_color";s:7:"#ffffff";s:6:"height";s:3:"250";s:5:"width";s:4:"1190";s:6:"border";s:1:"0";s:7:"brcolor";s:7:"#dddddd";s:9:"prev_next";s:1:"1";s:10:"goto_slide";s:1:"0";s:8:"navimg_w";s:1:"8";s:9:"navimg_ht";s:1:"8";s:10:"custom_nav";s:0:"";s:14:"allowable_tags";s:0:"";s:4:"more";s:0:"";s:13:"readmorecolor";s:7:"#0092E4";s:10:"user_level";s:17:"edit_others_posts";s:8:"noscript";s:0:"";s:9:"shortcode";s:1:"1";s:16:"multiple_sliders";s:1:"1";s:3:"css";s:0:"";s:10:"title_text";s:7:"Gallery";s:10:"title_from";s:1:"0";s:10:"title_font";s:26:"Arial,Helvetica,sans-serif";s:12:"title_fcolor";s:7:"#000000";s:11:"title_fsize";s:2:"20";s:12:"title_fstyle";s:4:"bold";s:11:"ptitle_font";s:26:"Arial,Helvetica,sans-serif";s:13:"ptitle_fcolor";s:7:"#777777";s:12:"ptitle_fsize";s:2:"14";s:13:"ptitle_fstyle";s:4:"bold";s:8:"img_pick";a:6:{i:0;s:1:"1";i:1;s:16:"slider_thumbnail";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}s:9:"img_align";s:5:"right";s:4:"crop";s:1:"0";s:8:"img_size";s:1:"0";s:9:"img_width";s:3:"165";s:10:"img_height";s:3:"520";s:10:"img_border";s:1:"0";s:11:"img_brcolor";s:7:"#000000";s:12:"content_font";s:26:"Arial,Helvetica,sans-serif";s:14:"content_fcolor";s:7:"#777777";s:13:"content_fsize";s:2:"14";s:14:"content_fstyle";s:6:"normal";s:12:"content_from";s:7:"content";s:13:"content_limit";s:0:"";s:13:"content_chars";s:5:"30000";s:7:"preview";s:1:"2";s:9:"slider_id";s:1:"1";s:9:"catg_slug";s:0:"";s:10:"active_tab";s:1:"1";s:5:"popup";s:1:"0";}', 'yes'),
(1064, 'smooth_db_version', '2.6.5', 'yes'),
(1147, 'categories_children', 'a:0:{}', 'yes'),
(1287, 'Gallerypermissions', 'a:1:{s:13:"administrator";a:3:{i:0;s:6:"slides";i:1;s:9:"galleries";i:2;s:8:"settings";}}', 'yes'),
(1288, 'Galleryimagespath', '/Applications/MAMP/htdocs/esplanade6/wp-content/uploads/slideshow-gallery/', 'yes'),
(1289, 'Gallerystyles', 'a:11:{s:6:"layout";s:10:"responsive";s:9:"resheight";s:2:"30";s:13:"resheighttype";s:1:"%";s:12:"resizeimages";s:1:"N";s:5:"width";s:3:"450";s:6:"height";s:3:"250";s:6:"border";s:17:"1px solid #CCCCCC";s:10:"background";s:7:"#000000";s:14:"infobackground";s:7:"#000000";s:9:"infocolor";s:7:"#ffffff";s:11:"thumbactive";s:0:"";}', 'yes'),
(1290, 'Gallerytimthumb_align', 'c', 'yes'),
(1291, 'Galleryfadespeed', '10', 'yes'),
(1292, 'Galleryshownav', 'Y', 'yes'),
(1293, 'Gallerynavopacity', '25', 'yes'),
(1294, 'Gallerynavhover', '70', 'yes'),
(1295, 'Galleryinformation', 'N', 'yes'),
(1296, 'Galleryinfospeed', '10', 'yes'),
(1298, 'Gallerythumbnails', 'Y', 'yes'),
(1299, 'Gallerythumbwidth', '100', 'yes'),
(1300, 'Gallerythumbheight', '75', 'yes'),
(1301, 'Gallerythumbposition', 'bottom', 'yes'),
(1302, 'Gallerythumbopacity', '70', 'yes'),
(1303, 'Gallerythumbscrollspeed', '5', 'yes'),
(1304, 'Gallerythumbspacing', '5', 'yes'),
(1305, 'Gallerythumbactive', '#FFFFFF', 'yes'),
(1306, 'Galleryautoslide', 'Y', 'yes'),
(1307, 'Galleryautospeed', '10', 'yes'),
(1308, 'Galleryalwaysauto', 'true', 'yes'),
(1309, 'Galleryimagesthickbox', 'N', 'yes'),
(1338, 'Gallerysave', 'Save Configuration', 'yes'),
(1339, 'Galleryinfohideonmobile', '1', 'yes'),
(1350, 'thumbnail_slider_settings', 'a:11:{s:9:"linkimage";b:0;s:16:"pauseonmouseover";b:1;s:4:"auto";b:0;s:5:"speed";i:1000;s:8:"circular";b:1;s:11:"imageheight";i:201;s:10:"imagewidth";i:280;s:7:"visible";s:1:"4";s:6:"scroll";s:1:"1";s:12:"resizeImages";i:1;s:17:"scollerBackground";s:4:"#fff";}', 'yes'),
(1353, 'thumbnail_slider_messages', 'a:0:{}', 'yes'),
(1400, 'wonderplugin-carousel-engine', 'WordPress Carousel Plugin', 'yes'),
(1402, 'wonderplugin_carousel_userrole', 'manage_options', 'yes'),
(1403, 'wonderplugin_carousel_thumbnailsize', 'medium', 'yes'),
(1565, 'wpgmp_zoomlevel', '16', 'yes'),
(1566, 'wpgmp_centerlatitude', '', 'yes'),
(1567, 'wpgmp_centerlongitude', '', 'yes'),
(1568, 'wpgmp_mapwidth', '', 'yes'),
(1569, 'wpgmp_mapheight', '', 'yes'),
(1570, 'wpgmp_language', 'en', 'yes'),
(1571, 'wpgmp_mashup', '', 'yes'),
(1572, 'wpgmp_categorydisplayformat', '', 'yes'),
(1832, 'actions_category_children', 'a:0:{}', 'yes'),
(1969, 'acf_version', '4.4.1', 'yes'),
(2235, 'category_children', 'a:0:{}', 'yes'),
(2677, 'wpvl_plugin_version', '1.6.9', 'yes'),
(2678, 'wpvl_enable_jquery', '1', 'yes'),
(2679, 'wpvl_enable_prettyPhoto', '1', 'yes'),
(2680, 'wpvl_prettyphoto_options', 'O:29:"WP_Video_Lightbox_prettyPhoto":21:{s:15:"animation_speed";s:4:"fast";s:9:"slideshow";s:4:"5000";s:18:"autoplay_slideshow";s:5:"false";s:7:"opacity";s:4:"0.80";s:10:"show_title";s:4:"true";s:12:"allow_resize";s:4:"true";s:12:"allow_expand";s:4:"true";s:13:"default_width";s:3:"640";s:14:"default_height";s:3:"480";s:23:"counter_separator_label";s:1:"/";s:5:"theme";s:10:"pp_default";s:18:"horizontal_padding";s:2:"20";s:9:"hideflash";s:5:"false";s:5:"wmode";s:6:"opaque";s:8:"autoplay";s:5:"false";s:5:"modal";s:5:"false";s:11:"deeplinking";s:5:"false";s:15:"overlay_gallery";s:4:"true";s:19:"overlay_gallery_max";s:2:"30";s:18:"keyboard_shortcuts";s:4:"true";s:12:"ie6_fallback";s:4:"true";}', 'yes'),
(3179, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1444061279;s:15:"version_checked";s:5:"4.2.5";s:12:"translations";a:0:{}}', 'yes'),
(3183, '_transient_timeout_external_ip_address_::1', '1444666077', 'no'),
(3184, '_transient_external_ip_address_::1', '188.220.124.198', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3187, 'rewrite_rules', 'a:331:{s:22:"^wc-api/v([1-2]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-2]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:10:"clients/?$";s:27:"index.php?post_type=clients";s:40:"clients/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=clients&feed=$matches[1]";s:35:"clients/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=clients&feed=$matches[1]";s:27:"clients/page/([0-9]{1,})/?$";s:45:"index.php?post_type=clients&paged=$matches[1]";s:10:"actions/?$";s:27:"index.php?post_type=actions";s:40:"actions/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=actions&feed=$matches[1]";s:35:"actions/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=actions&feed=$matches[1]";s:27:"actions/page/([0-9]{1,})/?$";s:45:"index.php?post_type=actions&paged=$matches[1]";s:15:"staticblocks/?$";s:32:"index.php?post_type=staticblocks";s:45:"staticblocks/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=staticblocks&feed=$matches[1]";s:40:"staticblocks/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=staticblocks&feed=$matches[1]";s:32:"staticblocks/page/([0-9]{1,})/?$";s:50:"index.php?post_type=staticblocks&paged=$matches[1]";s:12:"portfolio/?$";s:36:"index.php?post_type=etheme_portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=etheme_portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=etheme_portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:54:"index.php?post_type=etheme_portfolio&paged=$matches[1]";s:15:"testimonials/?$";s:31:"index.php?post_type=testimonial";s:45:"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:40:"testimonials/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:32:"testimonials/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"actions_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?actions_category=$matches[1]&feed=$matches[2]";s:52:"actions_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?actions_category=$matches[1]&feed=$matches[2]";s:45:"actions_category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?actions_category=$matches[1]&paged=$matches[2]";s:27:"actions_category/([^/]+)/?$";s:38:"index.php?actions_category=$matches[1]";s:46:"brand/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?brand=$matches[1]&feed=$matches[2]";s:41:"brand/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?brand=$matches[1]&feed=$matches[2]";s:34:"brand/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?brand=$matches[1]&paged=$matches[2]";s:16:"brand/([^/]+)/?$";s:27:"index.php?brand=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"product_variation/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"shop_order_refund/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"bookable_person/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"bookable_person/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"bookable_person/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"bookable_person/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"bookable_person/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"bookable_person/([^/]+)/trackback/?$";s:42:"index.php?bookable_person=$matches[1]&tb=1";s:44:"bookable_person/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?bookable_person=$matches[1]&paged=$matches[2]";s:51:"bookable_person/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?bookable_person=$matches[1]&cpage=$matches[2]";s:41:"bookable_person/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?bookable_person=$matches[1]&wc-api=$matches[3]";s:47:"bookable_person/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"bookable_person/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"bookable_person/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?bookable_person=$matches[1]&page=$matches[2]";s:32:"bookable_person/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"bookable_person/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"bookable_person/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"bookable_person/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"bookable_person/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"clients/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"clients/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"clients/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"clients/([^/]+)/trackback/?$";s:34:"index.php?clients=$matches[1]&tb=1";s:48:"clients/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?clients=$matches[1]&feed=$matches[2]";s:43:"clients/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?clients=$matches[1]&feed=$matches[2]";s:36:"clients/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?clients=$matches[1]&paged=$matches[2]";s:43:"clients/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?clients=$matches[1]&cpage=$matches[2]";s:33:"clients/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?clients=$matches[1]&wc-api=$matches[3]";s:39:"clients/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"clients/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"clients/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?clients=$matches[1]&page=$matches[2]";s:24:"clients/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"clients/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"clients/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"actions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"actions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"actions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"actions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"actions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"actions/([^/]+)/trackback/?$";s:34:"index.php?actions=$matches[1]&tb=1";s:48:"actions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?actions=$matches[1]&feed=$matches[2]";s:43:"actions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?actions=$matches[1]&feed=$matches[2]";s:36:"actions/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?actions=$matches[1]&paged=$matches[2]";s:43:"actions/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?actions=$matches[1]&cpage=$matches[2]";s:33:"actions/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?actions=$matches[1]&wc-api=$matches[3]";s:39:"actions/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"actions/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:28:"actions/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?actions=$matches[1]&page=$matches[2]";s:24:"actions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"actions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"actions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"actions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"actions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"staticblocks/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"staticblocks/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"staticblocks/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"staticblocks/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"staticblocks/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"staticblocks/([^/]+)/trackback/?$";s:39:"index.php?staticblocks=$matches[1]&tb=1";s:53:"staticblocks/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?staticblocks=$matches[1]&feed=$matches[2]";s:48:"staticblocks/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?staticblocks=$matches[1]&feed=$matches[2]";s:41:"staticblocks/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?staticblocks=$matches[1]&paged=$matches[2]";s:48:"staticblocks/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?staticblocks=$matches[1]&cpage=$matches[2]";s:38:"staticblocks/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?staticblocks=$matches[1]&wc-api=$matches[3]";s:44:"staticblocks/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"staticblocks/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"staticblocks/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?staticblocks=$matches[1]&page=$matches[2]";s:29:"staticblocks/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"staticblocks/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"staticblocks/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"staticblocks/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"staticblocks/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"portfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"portfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"portfolio/([^/]+)/trackback/?$";s:43:"index.php?etheme_portfolio=$matches[1]&tb=1";s:50:"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?etheme_portfolio=$matches[1]&feed=$matches[2]";s:45:"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?etheme_portfolio=$matches[1]&feed=$matches[2]";s:38:"portfolio/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?etheme_portfolio=$matches[1]&paged=$matches[2]";s:45:"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?etheme_portfolio=$matches[1]&cpage=$matches[2]";s:35:"portfolio/([^/]+)/wc-api(/(.*))?/?$";s:57:"index.php?etheme_portfolio=$matches[1]&wc-api=$matches[3]";s:41:"portfolio/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"portfolio/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"portfolio/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?etheme_portfolio=$matches[1]&page=$matches[2]";s:26:"portfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"portfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?categories=$matches[1]&feed=$matches[2]";s:44:"category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?categories=$matches[1]&feed=$matches[2]";s:37:"category/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?categories=$matches[1]&paged=$matches[2]";s:19:"category/([^/]+)/?$";s:32:"index.php?categories=$matches[1]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:52:"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:47:"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:37:"testimonial/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?testimonial=$matches[1]&wc-api=$matches[3]";s:43:"testimonial/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"testimonial/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:61:"testimonial-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?testimonial-category=$matches[1]&feed=$matches[2]";s:56:"testimonial-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?testimonial-category=$matches[1]&feed=$matches[2]";s:49:"testimonial-category/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?testimonial-category=$matches[1]&paged=$matches[2]";s:31:"testimonial-category/([^/]+)/?$";s:42:"index.php?testimonial-category=$matches[1]";s:41:"content_block/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"content_block/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"content_block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"content_block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"content_block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"content_block/([^/]+)/trackback/?$";s:40:"index.php?content_block=$matches[1]&tb=1";s:42:"content_block/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?content_block=$matches[1]&paged=$matches[2]";s:49:"content_block/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?content_block=$matches[1]&cpage=$matches[2]";s:39:"content_block/([^/]+)/wc-api(/(.*))?/?$";s:54:"index.php?content_block=$matches[1]&wc-api=$matches[3]";s:45:"content_block/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:56:"content_block/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"content_block/([^/]+)(/[0-9]+)?/?$";s:52:"index.php?content_block=$matches[1]&page=$matches[2]";s:30:"content_block/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"content_block/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"content_block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"content_block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"content_block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=30&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(3189, '_site_transient_timeout_theme_roots', '1444063080', 'yes'),
(3190, '_site_transient_theme_roots', 'a:2:{s:13:"legenda-child";s:7:"/themes";s:7:"legenda";s:7:"/themes";}', 'yes'),
(3193, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1444061286;s:8:"response";a:8:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.3";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.3.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.4.zip";}s:41:"custom-post-widget/custom-post-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"18812";s:4:"slug";s:18:"custom-post-widget";s:6:"plugin";s:41:"custom-post-widget/custom-post-widget.php";s:11:"new_version";s:5:"2.8.2";s:3:"url";s:49:"https://wordpress.org/plugins/custom-post-widget/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/custom-post-widget.zip";}s:31:"smooth-slider/smooth-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"10162";s:4:"slug";s:13:"smooth-slider";s:6:"plugin";s:31:"smooth-slider/smooth-slider.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:44:"https://wordpress.org/plugins/smooth-slider/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/smooth-slider.2.7.1.zip";}s:47:"tabby-responsive-tabs/tabby-responsive-tabs.php";O:8:"stdClass":7:{s:2:"id";s:5:"45731";s:4:"slug";s:21:"tabby-responsive-tabs";s:6:"plugin";s:47:"tabby-responsive-tabs/tabby-responsive-tabs.php";s:11:"new_version";s:5:"1.2.2";s:3:"url";s:52:"https://wordpress.org/plugins/tabby-responsive-tabs/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/tabby-responsive-tabs.zip";s:14:"upgrade_notice";s:44:"Included print stylesheet as a separate file";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.4.7";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.4.7.zip";}s:45:"wp-google-map-plugin/wp-google-map-plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"39250";s:4:"slug";s:20:"wp-google-map-plugin";s:6:"plugin";s:45:"wp-google-map-plugin/wp-google-map-plugin.php";s:11:"new_version";s:5:"3.0.5";s:3:"url";s:51:"https://wordpress.org/plugins/wp-google-map-plugin/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-google-map-plugin.zip";}s:39:"wp-video-lightbox/wp-video-lightbox.php";O:8:"stdClass":6:{s:2:"id";s:5:"32535";s:4:"slug";s:17:"wp-video-lightbox";s:6:"plugin";s:39:"wp-video-lightbox/wp-video-lightbox.php";s:11:"new_version";s:5:"1.7.6";s:3:"url";s:48:"https://wordpress.org/plugins/wp-video-lightbox/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-video-lightbox.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=591 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_wp_attached_file', '2015/04/logo.png'),
(3, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:277;s:6:"height";i:100;s:4:"file";s:16:"2015/04/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x100.png";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1430369238:1'),
(6, 6, '_content_block_information', ''),
(7, 6, 'slide_template', 'default'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1430369264:1'),
(10, 8, '_content_block_information', ''),
(11, 8, 'slide_template', 'default'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1433235921:1'),
(14, 10, '_content_block_information', ''),
(15, 10, 'slide_template', 'default'),
(16, 15, '_edit_last', '1'),
(17, 15, '_edit_lock', '1430372632:1'),
(18, 15, '_content_block_information', ''),
(19, 15, 'slide_template', 'default'),
(20, 17, '_edit_last', '1'),
(21, 17, '_edit_lock', '1430369348:1'),
(22, 17, '_content_block_information', ''),
(23, 17, 'slide_template', 'default'),
(24, 19, '_edit_last', '1'),
(25, 19, '_edit_lock', '1430369374:1'),
(26, 19, '_content_block_information', ''),
(27, 19, 'slide_template', 'default'),
(28, 21, '_edit_last', '1'),
(29, 21, '_edit_lock', '1433235921:1'),
(30, 21, '_content_block_information', ''),
(31, 21, 'slide_template', 'default'),
(32, 23, '_edit_last', '1'),
(33, 23, '_edit_lock', '1430369439:1'),
(34, 23, '_content_block_information', ''),
(35, 23, 'slide_template', 'default'),
(36, 25, '_edit_last', '1'),
(37, 25, '_edit_lock', '1430369479:1'),
(38, 25, '_content_block_information', ''),
(39, 25, 'slide_template', 'default'),
(40, 27, '_wp_attached_file', '2015/04/logo-studioeleven.png'),
(41, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:82;s:6:"height";i:17;s:4:"file";s:29:"2015/04/logo-studioeleven.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(44, 30, '_edit_last', '1'),
(45, 30, '_edit_lock', '1434117848:1'),
(46, 30, '_wp_page_template', 'page-home.php'),
(47, 30, 'slide_template', 'default'),
(48, 30, 'page_heading', 'enable'),
(49, 30, 'page_slider', 'no_slider'),
(50, 32, '_edit_last', '1'),
(51, 32, '_wp_page_template', 'default'),
(52, 32, 'slide_template', 'default'),
(53, 32, 'page_heading', 'enable'),
(54, 32, 'page_slider', 'no_slider'),
(55, 32, '_edit_lock', '1434118221:1'),
(56, 34, '_edit_last', '1'),
(57, 34, '_wp_page_template', 'default'),
(58, 34, 'slide_template', 'default'),
(59, 34, 'page_heading', 'enable'),
(60, 34, 'page_slider', 'no_slider'),
(61, 34, '_edit_lock', '1430370639:1'),
(62, 36, '_edit_last', '1'),
(63, 36, '_wp_page_template', 'default'),
(64, 36, 'slide_template', 'default'),
(65, 36, 'page_heading', 'enable'),
(66, 36, 'page_slider', 'no_slider'),
(67, 36, '_edit_lock', '1430125257:1'),
(68, 38, '_edit_last', '1'),
(69, 38, '_wp_page_template', 'default'),
(70, 38, 'slide_template', 'default'),
(71, 38, 'page_heading', 'enable'),
(72, 38, 'page_slider', 'no_slider'),
(73, 38, '_edit_lock', '1430125267:1'),
(74, 40, '_edit_last', '1'),
(75, 40, '_edit_lock', '1430125281:1'),
(76, 40, '_wp_page_template', 'default'),
(77, 40, 'slide_template', 'default'),
(78, 40, 'page_heading', 'enable'),
(79, 40, 'page_slider', 'no_slider'),
(80, 42, '_edit_last', '1'),
(81, 42, '_wp_page_template', 'default'),
(82, 42, 'slide_template', 'default'),
(83, 42, 'page_heading', 'enable'),
(84, 42, 'page_slider', 'no_slider'),
(85, 42, '_edit_lock', '1430125298:1'),
(86, 44, '_edit_last', '1'),
(87, 44, '_wp_page_template', 'default'),
(88, 44, 'slide_template', 'default'),
(89, 44, 'page_heading', 'enable'),
(90, 44, 'page_slider', 'no_slider'),
(91, 44, '_edit_lock', '1430125312:1'),
(92, 46, '_edit_last', '1'),
(93, 46, '_wp_page_template', 'default'),
(94, 46, 'slide_template', 'default'),
(95, 46, 'page_heading', 'enable'),
(96, 46, 'page_slider', 'no_slider'),
(97, 46, '_edit_lock', '1430370624:1'),
(98, 48, '_menu_item_type', 'post_type'),
(99, 48, '_menu_item_menu_item_parent', '0'),
(100, 48, '_menu_item_object_id', '30'),
(101, 48, '_menu_item_object', 'page'),
(102, 48, '_menu_item_target', ''),
(103, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 48, '_menu_item_xfn', ''),
(105, 48, '_menu_item_url', ''),
(179, 57, '_edit_last', '1'),
(180, 57, '_edit_lock', '1430370389:1'),
(181, 57, '_content_block_information', ''),
(182, 57, 'slide_template', 'default'),
(183, 65, '_wp_attached_file', 'revslider/customers-say/logo-allendale.png'),
(184, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:149;s:6:"height";i:100;s:4:"file";s:42:"revslider/customers-say/logo-allendale.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(185, 72, '_edit_last', '1'),
(186, 72, '_edit_lock', '1430371208:1'),
(187, 73, '_wp_attached_file', '2015/04/booking1.jpg'),
(188, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:566;s:6:"height";i:378;s:4:"file";s:20:"2015/04/booking1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"booking1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"booking1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"booking1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"booking1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(189, 72, '_thumbnail_id', '73'),
(190, 72, '_visibility', 'visible'),
(191, 72, '_stock_status', 'instock'),
(192, 72, '_product_video_gallery', ''),
(193, 72, '_product_video_code', ''),
(194, 72, 'total_sales', '0'),
(195, 72, '_downloadable', 'no'),
(196, 72, '_virtual', 'no'),
(197, 72, '_regular_price', ''),
(198, 72, '_sale_price', ''),
(199, 72, '_purchase_note', ''),
(200, 72, '_featured', 'yes'),
(201, 72, '_weight', ''),
(202, 72, '_length', ''),
(203, 72, '_width', ''),
(204, 72, '_height', ''),
(205, 72, '_sku', '1'),
(206, 72, '_product_attributes', 'a:0:{}'),
(207, 72, '_sale_price_dates_from', ''),
(208, 72, '_sale_price_dates_to', ''),
(209, 72, '_price', '300'),
(210, 72, '_sold_individually', ''),
(211, 72, '_manage_stock', 'no'),
(212, 72, '_backorders', 'no'),
(213, 72, '_stock', ''),
(214, 72, '_upsell_ids', 'a:0:{}'),
(215, 72, '_crosssell_ids', 'a:0:{}'),
(216, 72, '_wc_booking_base_cost', '200'),
(217, 72, '_wc_booking_cost', '100'),
(218, 72, '_wc_display_cost', '300'),
(219, 72, '_wc_booking_min_duration', '1'),
(220, 72, '_wc_booking_max_duration', '1'),
(221, 72, '_wc_booking_enable_range_picker', 'no'),
(222, 72, '_wc_booking_calendar_display_mode', ''),
(223, 72, '_wc_booking_qty', '1'),
(224, 72, '_wc_booking_has_persons', 'no'),
(225, 72, '_wc_booking_person_qty_multiplier', 'no'),
(226, 72, '_wc_booking_person_cost_multiplier', 'no'),
(227, 72, '_wc_booking_min_persons_group', '1'),
(228, 72, '_wc_booking_max_persons_group', ''),
(229, 72, '_wc_booking_has_person_types', 'no'),
(230, 72, '_wc_booking_has_resources', 'no'),
(231, 72, '_wc_booking_resources_assignment', 'customer'),
(232, 72, '_wc_booking_duration_type', 'fixed'),
(233, 72, '_wc_booking_duration', '1'),
(234, 72, '_wc_booking_duration_unit', 'month'),
(235, 72, '_wc_booking_user_can_cancel', ''),
(236, 72, '_wc_booking_cancel_limit', '1'),
(237, 72, '_wc_booking_cancel_limit_unit', 'month'),
(238, 72, '_wc_booking_max_date', '12'),
(239, 72, '_wc_booking_max_date_unit', 'month'),
(240, 72, '_wc_booking_min_date', ''),
(241, 72, '_wc_booking_min_date_unit', 'week'),
(242, 72, '_wc_booking_first_block_time', ''),
(243, 72, '_wc_booking_requires_confirmation', 'no'),
(244, 72, '_wc_booking_default_date_availability', 'available'),
(245, 72, '_wc_booking_check_availability_against', ''),
(246, 72, '_wc_booking_resouce_label', ''),
(247, 72, '_wc_booking_availability', 'a:0:{}'),
(248, 72, '_wc_booking_pricing', 'a:0:{}'),
(249, 72, '_has_additional_costs', 'no'),
(250, 72, '_product_image_gallery', ''),
(251, 72, 'product_new', 'disable'),
(252, 72, 'slide_template', 'default'),
(253, 72, '_wpgmp_location_address', ''),
(254, 72, '_wpgmp_metabox_latitude', ''),
(255, 72, '_wpgmp_metabox_longitude', ''),
(256, 72, '_wpgmp_map_id', 's:2:"N;";'),
(257, 72, '_wpgmp_metabox_marker_id', ''),
(258, 76, '_edit_last', '1'),
(259, 76, '_edit_lock', '1430209018:1'),
(260, 76, '_thumbnail_id', '73'),
(261, 76, '_visibility', 'visible'),
(262, 76, '_stock_status', 'instock'),
(263, 76, '_product_video_gallery', ''),
(264, 76, '_product_video_code', ''),
(265, 76, '_downloadable', 'no'),
(266, 76, '_virtual', 'no'),
(267, 76, '_regular_price', ''),
(268, 76, '_sale_price', ''),
(269, 76, '_purchase_note', ''),
(270, 76, '_featured', 'yes'),
(271, 76, '_weight', ''),
(272, 76, '_length', ''),
(273, 76, '_width', ''),
(274, 76, '_height', ''),
(275, 76, '_sku', '1'),
(276, 76, '_product_attributes', 'a:0:{}'),
(277, 76, '_sale_price_dates_from', ''),
(278, 76, '_sale_price_dates_to', ''),
(279, 76, '_price', '300'),
(280, 76, '_sold_individually', ''),
(281, 76, '_manage_stock', 'no'),
(282, 76, '_backorders', 'no'),
(283, 76, '_stock', ''),
(284, 76, '_upsell_ids', 'a:0:{}'),
(285, 76, '_crosssell_ids', 'a:0:{}'),
(286, 76, '_wc_booking_base_cost', '200'),
(287, 76, '_wc_booking_cost', '100'),
(288, 76, '_wc_display_cost', '300'),
(289, 76, '_wc_booking_min_duration', '1'),
(290, 76, '_wc_booking_max_duration', '1'),
(291, 76, '_wc_booking_enable_range_picker', 'no'),
(292, 76, '_wc_booking_calendar_display_mode', ''),
(293, 76, '_wc_booking_qty', '1'),
(294, 76, '_wc_booking_has_persons', 'no'),
(295, 76, '_wc_booking_person_qty_multiplier', 'no'),
(296, 76, '_wc_booking_person_cost_multiplier', 'no'),
(297, 76, '_wc_booking_min_persons_group', '1'),
(298, 76, '_wc_booking_max_persons_group', ''),
(299, 76, '_wc_booking_has_person_types', 'no'),
(300, 76, '_wc_booking_has_resources', 'no'),
(301, 76, '_wc_booking_resources_assignment', 'customer'),
(302, 76, '_wc_booking_duration_type', 'fixed'),
(303, 76, '_wc_booking_duration', '1'),
(304, 76, '_wc_booking_duration_unit', 'month'),
(305, 76, '_wc_booking_user_can_cancel', ''),
(306, 76, '_wc_booking_cancel_limit', '1'),
(307, 76, '_wc_booking_cancel_limit_unit', 'month'),
(308, 76, '_wc_booking_max_date', '12'),
(309, 76, '_wc_booking_max_date_unit', 'month'),
(310, 76, '_wc_booking_min_date', ''),
(311, 76, '_wc_booking_min_date_unit', 'week'),
(312, 76, '_wc_booking_first_block_time', ''),
(313, 76, '_wc_booking_requires_confirmation', 'no'),
(314, 76, '_wc_booking_default_date_availability', 'available'),
(315, 76, '_wc_booking_check_availability_against', ''),
(316, 76, '_wc_booking_resouce_label', ''),
(317, 76, '_wc_booking_availability', 'a:0:{}'),
(318, 76, '_wc_booking_pricing', 'a:0:{}'),
(319, 76, '_has_additional_costs', 'no'),
(320, 76, '_product_image_gallery', ''),
(321, 76, 'product_new', 'disable'),
(322, 76, 'slide_template', 'default'),
(323, 76, '_wpgmp_location_address', ''),
(324, 76, '_wpgmp_metabox_latitude', ''),
(325, 76, '_wpgmp_metabox_longitude', ''),
(326, 76, '_wpgmp_map_id', 's:2:"N;";'),
(327, 76, '_wpgmp_metabox_marker_id', ''),
(385, 76, 'total_sales', '0'),
(386, 77, '_wp_attached_file', 'revslider/homepage/slide_01.png'),
(387, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:655;s:4:"file";s:31:"revslider/homepage/slide_01.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slide_01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide_01-300x79.png";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slide_01-1024x268.png";s:5:"width";i:1024;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slide_01-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slide_01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slide_01-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(388, 78, '_wp_attached_file', 'revslider/homepage/slide_02.png'),
(389, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:655;s:4:"file";s:31:"revslider/homepage/slide_02.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slide_02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide_02-300x79.png";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slide_02-1024x268.png";s:5:"width";i:1024;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slide_02-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slide_02-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slide_02-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(390, 79, '_wp_attached_file', 'revslider/homepage/slide_03.png'),
(391, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:655;s:4:"file";s:31:"revslider/homepage/slide_03.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slide_03-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide_03-300x79.png";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slide_03-1024x268.png";s:5:"width";i:1024;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slide_03-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slide_03-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slide_03-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(392, 80, '_wp_attached_file', 'revslider/homepage/slide_04.png'),
(393, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:655;s:4:"file";s:31:"revslider/homepage/slide_04.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slide_04-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide_04-300x79.png";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slide_04-1024x268.png";s:5:"width";i:1024;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slide_04-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slide_04-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slide_04-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(394, 81, '_wp_attached_file', '2015/04/esplanade_01.jpg'),
(395, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:24:"2015/04/esplanade_01.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"esplanade_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"esplanade_01-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"esplanade_01-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"esplanade_01-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"esplanade_01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"esplanade_01-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(396, 82, '_edit_last', '1'),
(397, 82, '_edit_lock', '1430371698:1'),
(398, 83, '_wp_attached_file', '2015/04/portfolio-item1.jpg'),
(399, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:566;s:6:"height";i:378;s:4:"file";s:27:"2015/04/portfolio-item1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"portfolio-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"portfolio-item1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"portfolio-item1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"portfolio-item1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(400, 82, '_thumbnail_id', '83'),
(401, 82, 'slide_template', 'default'),
(402, 82, '_wpgmp_location_address', ''),
(403, 82, '_wpgmp_metabox_latitude', ''),
(404, 82, '_wpgmp_metabox_longitude', ''),
(405, 82, '_wpgmp_map_id', 's:2:"N;";'),
(406, 82, '_wpgmp_metabox_marker_id', ''),
(407, 84, '_edit_last', '1'),
(408, 84, '_edit_lock', '1430371744:1'),
(409, 84, '_thumbnail_id', '83'),
(410, 84, 'slide_template', 'default'),
(411, 84, '_wpgmp_location_address', ''),
(412, 84, '_wpgmp_metabox_latitude', ''),
(413, 84, '_wpgmp_metabox_longitude', ''),
(414, 84, '_wpgmp_map_id', 's:2:"N;";'),
(415, 84, '_wpgmp_metabox_marker_id', ''),
(416, 82, '_smooth_slider_style', 'default'),
(417, 84, '_smooth_slider_style', 'default'),
(418, 15, '_smooth_slider_style', 'default'),
(423, 88, '_wp_attached_file', '2015/04/image_01.jpg'),
(424, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:201;s:4:"file";s:20:"2015/04/image_01.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"image_01-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(425, 89, '_wp_attached_file', '2015/04/image_02.jpg'),
(426, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:279;s:6:"height";i:202;s:4:"file";s:20:"2015/04/image_02.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"image_02-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(427, 90, '_wp_attached_file', '2015/04/image_03.jpg'),
(428, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:201;s:4:"file";s:20:"2015/04/image_03.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"image_03-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(429, 88, 'smooth_slide_redirect_url', ''),
(430, 88, 'smooth_sslider_nolink', ''),
(431, 89, 'smooth_slide_redirect_url', ''),
(432, 89, 'smooth_sslider_nolink', ''),
(433, 90, 'smooth_slide_redirect_url', ''),
(434, 90, 'smooth_sslider_nolink', ''),
(435, 91, '_wp_attached_file', '2015/04/image_04.jpg'),
(436, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:279;s:6:"height";i:202;s:4:"file";s:20:"2015/04/image_04.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_04-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"image_04-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(437, 91, 'smooth_slide_redirect_url', ''),
(438, 91, 'smooth_sslider_nolink', ''),
(439, 19, '_smooth_slider_style', 'default'),
(440, 25, '_smooth_slider_style', 'default'),
(442, 21, '_smooth_slider_style', 'default'),
(443, 108, '_edit_last', '1'),
(444, 108, '_edit_lock', '1430371547:1'),
(445, 108, 'address', '8 Duke Street,\r\nQueenstown 9300,\r\nNew Zealand'),
(446, 108, '_smooth_slider_style', 'default'),
(447, 108, 'slide_template', 'default'),
(448, 109, '_wp_attached_file', '2015/04/jervois-steak-house.jpg'),
(449, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:393;s:6:"height";i:500;s:4:"file";s:31:"2015/04/jervois-steak-house.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"jervois-steak-house-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"jervois-steak-house-236x300.jpg";s:5:"width";i:236;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"jervois-steak-house-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"jervois-steak-house-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(450, 108, '_thumbnail_id', '109'),
(451, 113, '_edit_last', '1'),
(452, 113, '_edit_lock', '1430371503:1'),
(453, 113, '_thumbnail_id', '109'),
(454, 113, 'address', 'the address'),
(455, 113, '_smooth_slider_style', 'default'),
(456, 113, 'slide_template', 'default'),
(457, 114, '_edit_last', '1'),
(458, 114, '_smooth_slider_style', 'default'),
(459, 114, 'field_5540b2ea54254', 'a:12:{s:3:"key";s:19:"field_5540b2ea54254";s:5:"label";s:6:"Images";s:4:"name";s:14:"actions_images";s:4:"type";s:10:"wp_wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:5:"teeny";s:1:"0";s:13:"media_buttons";s:1:"1";s:3:"dfw";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(461, 114, 'position', 'normal'),
(462, 114, 'layout', 'default'),
(463, 114, 'hide_on_screen', ''),
(464, 114, 'slide_template', 'default'),
(465, 114, '_edit_lock', '1430371447:1'),
(470, 113, 'images', 'images here'),
(471, 113, '_images', 'field_5540b2ea54254'),
(474, 113, 'actions_images', 'images now'),
(475, 113, '_actions_images', 'field_5540b2ea54254'),
(476, 114, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"actions";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(477, 108, 'actions_images', '<div class="row-fluid action_images">\r\n<div class="span6">\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_01.jpg" alt="dining_01" width="198" height="248" class="alignnone size-full wp-image-120" />\r\n<div class="action_label">Fergburger</div>\r\n</div>\r\n</div>\r\n<div class="span6">\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_02.jpg" alt="dining_02" width="198" height="122" class="alignnone size-full wp-image-121" />\r\n<div class="action_label">Rata dining</div>\r\n</div>\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_03.jpg" alt="dining_03" width="198" height="123" class="alignnone size-full wp-image-122" />\r\n<div class="action_label">The Bunker</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span6">\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_04.jpg" alt="dining_04" width="198" height="123" class="alignnone size-full wp-image-123" />\r\n<div class="action_label">Flame Bar & Grill</div>\r\n</div>\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_05.jpg" alt="dining_05" width="198" height="123" class="alignnone size-full wp-image-124" />\r\n<div class="action_label">Botswana Butchery</div>\r\n</div>\r\n</div>\r\n<div class="span6">\r\n<div class="action_image">\r\n<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/dining_06.jpg" alt="dining_06" width="198" height="248" class="alignnone size-full wp-image-125" />\r\n<div class="action_label">Madam Woo</div>\r\n</div>\r\n</div>\r\n</div>'),
(478, 108, '_actions_images', 'field_5540b2ea54254'),
(479, 120, '_wp_attached_file', '2015/04/dining_01.jpg'),
(480, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:248;s:4:"file";s:21:"2015/04/dining_01.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_01-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(481, 121, '_wp_attached_file', '2015/04/dining_02.jpg'),
(482, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:122;s:4:"file";s:21:"2015/04/dining_02.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_02-150x122.jpg";s:5:"width";i:150;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_02-180x122.jpg";s:5:"width";i:180;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(483, 122, '_wp_attached_file', '2015/04/dining_03.jpg'),
(484, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:123;s:4:"file";s:21:"2015/04/dining_03.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_03-150x123.jpg";s:5:"width";i:150;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_03-180x123.jpg";s:5:"width";i:180;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(485, 123, '_wp_attached_file', '2015/04/dining_04.jpg'),
(486, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:123;s:4:"file";s:21:"2015/04/dining_04.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_04-150x123.jpg";s:5:"width";i:150;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_04-180x123.jpg";s:5:"width";i:180;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(487, 124, '_wp_attached_file', '2015/04/dining_05.jpg'),
(488, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:123;s:4:"file";s:21:"2015/04/dining_05.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_05-150x123.jpg";s:5:"width";i:150;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_05-180x123.jpg";s:5:"width";i:180;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(489, 125, '_wp_attached_file', '2015/04/dining_06.jpg'),
(490, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:248;s:4:"file";s:21:"2015/04/dining_06.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dining_06-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"dining_06-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(491, 10, '_smooth_slider_style', 'default'),
(501, 132, '_menu_item_type', 'custom'),
(502, 132, '_menu_item_menu_item_parent', '0'),
(503, 132, '_menu_item_object_id', '132'),
(504, 132, '_menu_item_object', 'custom'),
(505, 132, '_menu_item_target', ''),
(506, 132, '_menu_item_classes', 'a:1:{i:0;s:18:"special_video_menu";}'),
(507, 132, '_menu_item_xfn', 'wp-video-lightbox'),
(508, 132, '_menu_item_url', 'https://www.youtube.com/watch?v=_Bxcdi8vnVM&rel=0&width=640&height=480'),
(510, 32, '_smooth_slider_style', 'default'),
(511, 138, '_menu_item_type', 'custom'),
(512, 138, '_menu_item_menu_item_parent', '0'),
(513, 138, '_menu_item_object_id', '138'),
(514, 138, '_menu_item_object', 'custom'),
(515, 138, '_menu_item_target', ''),
(516, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(517, 138, '_menu_item_xfn', ''),
(518, 138, '_menu_item_url', 'http://localhost/esplanade6/#location'),
(520, 139, '_menu_item_type', 'custom'),
(521, 139, '_menu_item_menu_item_parent', '0'),
(522, 139, '_menu_item_object_id', '139'),
(523, 139, '_menu_item_object', 'custom'),
(524, 139, '_menu_item_target', ''),
(525, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(526, 139, '_menu_item_xfn', ''),
(527, 139, '_menu_item_url', 'http://localhost/esplanade6/#facilities'),
(528, 139, '_menu_item_orphaned', '1435302493'),
(529, 140, '_menu_item_type', 'custom'),
(530, 140, '_menu_item_menu_item_parent', '0'),
(531, 140, '_menu_item_object_id', '140'),
(532, 140, '_menu_item_object', 'custom'),
(533, 140, '_menu_item_target', ''),
(534, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(535, 140, '_menu_item_xfn', ''),
(536, 140, '_menu_item_url', 'http://localhost/esplanade6/#gallery'),
(537, 140, '_menu_item_orphaned', '1435302577'),
(538, 141, '_menu_item_type', 'custom'),
(539, 141, '_menu_item_menu_item_parent', '0'),
(540, 141, '_menu_item_object_id', '141'),
(541, 141, '_menu_item_object', 'custom'),
(542, 141, '_menu_item_target', ''),
(543, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(544, 141, '_menu_item_xfn', ''),
(545, 141, '_menu_item_url', 'http://localhost/esplanade6/#testimonials'),
(546, 141, '_menu_item_orphaned', '1435302614'),
(547, 142, '_menu_item_type', 'custom'),
(548, 142, '_menu_item_menu_item_parent', '0'),
(549, 142, '_menu_item_object_id', '142'),
(550, 142, '_menu_item_object', 'custom'),
(551, 142, '_menu_item_target', ''),
(552, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(553, 142, '_menu_item_xfn', ''),
(554, 142, '_menu_item_url', 'http://localhost/esplanade6/#facilities'),
(556, 143, '_menu_item_type', 'custom'),
(557, 143, '_menu_item_menu_item_parent', '0'),
(558, 143, '_menu_item_object_id', '143'),
(559, 143, '_menu_item_object', 'custom'),
(560, 143, '_menu_item_target', ''),
(561, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(562, 143, '_menu_item_xfn', ''),
(563, 143, '_menu_item_url', 'http://localhost/esplanade6/#gallery'),
(565, 144, '_menu_item_type', 'custom'),
(566, 144, '_menu_item_menu_item_parent', '0'),
(567, 144, '_menu_item_object_id', '144'),
(568, 144, '_menu_item_object', 'custom'),
(569, 144, '_menu_item_target', ''),
(570, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(571, 144, '_menu_item_xfn', ''),
(572, 144, '_menu_item_url', 'http://localhost/esplanade6/#testimonials'),
(574, 145, '_menu_item_type', 'custom'),
(575, 145, '_menu_item_menu_item_parent', '0'),
(576, 145, '_menu_item_object_id', '145'),
(577, 145, '_menu_item_object', 'custom'),
(578, 145, '_menu_item_target', ''),
(579, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(580, 145, '_menu_item_xfn', ''),
(581, 145, '_menu_item_url', 'http://localhost/esplanade6/#events'),
(583, 146, '_menu_item_type', 'custom'),
(584, 146, '_menu_item_menu_item_parent', '0'),
(585, 146, '_menu_item_object_id', '146'),
(586, 146, '_menu_item_object', 'custom'),
(587, 146, '_menu_item_target', ''),
(588, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(589, 146, '_menu_item_xfn', ''),
(590, 146, '_menu_item_url', 'http://localhost/esplanade6/#location');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=147 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-27 06:57:22', '2015-04-27 06:57:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-27 06:57:22', '2015-04-27 06:57:22', '', 0, 'http://localhost/esplanade6/?p=1', 0, 'post', '', 1),
(4, 1, '2015-04-27 08:22:20', '2015-04-27 08:22:20', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2015-04-27 08:22:20', '2015-04-27 08:22:20', '', 0, 'http://localhost/esplanade6/?option-tree=media', 0, 'option-tree', '', 0),
(5, 1, '2015-04-27 08:41:16', '2015-04-27 08:41:16', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2015-04-27 08:41:16', '2015-04-27 08:41:16', '', 4, 'http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2015-04-27 08:44:30', '2015-04-27 08:44:30', '<div class="row-fluid">\r\n<div class="span8">\r\n<h1>PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES</h1>\r\n<p>Unwind and relax in this superbly appointed 3 bedroom waterfront accommodation minutes from the heart of Queenstown.</p>\r\n</div>\r\n<div class="span4">\r\n<div id="home_assistance">\r\nNEED ASSISTANCE?<br />\r\nCALL US +64 3 442 4420\r\n</div>\r\n<a href="#" id="home_book">Book Your Stay</a>\r\n</div>\r\n</div>', 'Home 01 - PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES', '', 'publish', 'closed', 'closed', '', 'home-01-plan-your-stay-in-one-of-queenstowns-premier-holiday-homes', '', '', '2015-04-28 06:55:13', '2015-04-28 06:55:13', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=6', 0, 'content_block', '', 0),
(7, 1, '2015-04-27 08:44:30', '2015-04-27 08:44:30', '<div class="row-fluid">\r\n<div class="span8">\r\n<h1>PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES</h1>\r\n<p>Unwind and relax in this superbly appointed 3 bedroom waterfront accommodation minutes from the heart of Queenstown.</p>\r\n</div>\r\n<div class="span4">\r\n<div id="home_assistance">\r\nNEED ASSISTANCE?<br />\r\nCALL US +64 3 442 4420\r\n</div>\r\n<div id="home_book">Book Your Stay</div>\r\n</div>\r\n</div>', 'Home 01 - PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-27 08:44:30', '2015-04-27 08:44:30', '', 6, 'http://localhost/esplanade6/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-04-27 08:44:56', '2015-04-27 08:44:56', '[s11_featured]', 'Home 02 - Queenstown Apartments  on the Lake Shore', '', 'publish', 'closed', 'closed', '', 'home-02-queenstown-apartments-on-the-lake-shore', '', '', '2015-04-28 06:53:32', '2015-04-28 06:53:32', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=8', 0, 'content_block', '', 0),
(9, 1, '2015-04-27 08:44:56', '2015-04-27 08:44:56', 'show listings', 'Home 02 - Queenstown Apartments  on the Lake Shore', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-27 08:44:56', '2015-04-27 08:44:56', '', 8, 'http://localhost/esplanade6/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-04-27 08:50:29', '2015-04-27 08:50:29', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<h2 class="home_tariffs">OUR TARIFFS <span id="change_home_tariffs"></span></h2>\r\n<div id="home_tariffs">\r\nlocation\r\n</div>', 'Home 03 - Our Amenities', '', 'publish', 'closed', 'closed', '', 'home-03-our-amenities', '', '', '2015-06-02 08:46:54', '2015-06-02 08:46:54', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=10', 0, 'content_block', '', 0),
(11, 1, '2015-04-27 08:50:29', '2015-04-27 08:50:29', '<h1>Our Amenities</h1>\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday home comes fully equipped with all the latest modern conveniences</p>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n<div class="span4">\r\n\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-27 08:50:29', '2015-04-27 08:50:29', '', 10, 'http://localhost/esplanade6/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-06-02 08:39:03', '2015-06-02 08:39:03', '<h1>Our Amenities</h1>\n<hr />\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\n&nbsp;\n&nbsp;\n\n<div class="row-fluid">\n<div class="span4">\n<ul class="home_amenities" id="ha_11">\n<li><h4>3 spacious bedrooms</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_12">\n<li><h4>Fully equipped kitchen</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_13">\n<li><h4>Various forms of heating</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n</div>\n\n<div class="row-fluid">\n<div class="span4">\n<ul class="home_amenities" id="ha_21">\n<li><h4>Lock up garage</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_22">\n<li><h4>2 Bathrooms</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_23">\n<li><h4>Media centre</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n</div>\n\n<div class="row-fluid">\n<div class="span4">\n<ul class="home_amenities" id="ha_31">\n<li><h4>Private secure courtyard</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_32">\n<li><h4>Full laundry facilities</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n\n<div class="span4">\n<ul class="home_amenities" id="ha_33">\n<li><h4>Free Wi-Fi Internet</h4></li>\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\n</ul>\n</div>\n</div>\n\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\n<div id="home_location">\nlocation\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'open', 'open', '', '10-autosave-v1', '', '', '2015-06-02 08:39:03', '2015-06-02 08:39:03', '', 10, 'http://localhost/esplanade6/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-04-27 08:52:48', '2015-04-27 08:52:48', '<h1>Our Amenities</h1>\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday home comes fully equipped with all the latest modern conveniences</p>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-27 08:52:48', '2015-04-27 08:52:48', '', 10, 'http://localhost/esplanade6/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-04-27 08:53:08', '2015-04-27 08:53:08', '<h1>Our Amenities</h1>\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday home comes fully equipped with all the latest modern conveniences</p>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-27 08:53:08', '2015-04-27 08:53:08', '', 10, 'http://localhost/esplanade6/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-04-27 08:53:29', '2015-04-27 08:53:29', '[smoothslider id=''1'']\r\n[wonderplugin_carousel id="1"]', 'Home 04 - Gallery', '', 'publish', 'closed', 'closed', '', 'home-04-gallery', '', '', '2015-04-28 12:08:17', '2015-04-28 12:08:17', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=15', 0, 'content_block', '', 0),
(16, 1, '2015-04-27 08:53:29', '2015-04-27 08:53:29', 'Gallery', 'Home 04 - Gallery', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-04-27 08:53:29', '2015-04-27 08:53:29', '', 15, 'http://localhost/esplanade6/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-04-27 08:53:49', '2015-04-27 08:53:49', '<h1 style="text-align: center;">What Our Guests Say</h1>\r\n<hr />\r\n[rev_slider customers-say]', 'Home 05 - What Our Guests Say', '', 'publish', 'closed', 'closed', '', 'home-05-what-our-guests-say', '', '', '2015-04-27 15:37:45', '2015-04-27 15:37:45', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=17', 0, 'content_block', '', 0),
(18, 1, '2015-04-27 08:53:49', '2015-04-27 08:53:49', '<h1>What Our Guests Say</h1>', 'Home 05 - What Our Guests Say', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-04-27 08:53:49', '2015-04-27 08:53:49', '', 17, 'http://localhost/esplanade6/?p=18', 0, 'revision', '', 0),
(19, 1, '2015-04-27 08:54:11', '2015-04-27 08:54:11', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_actions type="Dining"]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n[show_actions type="Activities"]\r\n[/tab] [tab title="Events" class="tab_events"]\r\n[show_actions type="Events"]\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'publish', 'closed', 'closed', '', 'home-06-local-queenstown-events-activities', '', '', '2015-04-29 18:03:38', '2015-04-29 18:03:38', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=19', 0, 'content_block', '', 0),
(20, 1, '2015-04-27 08:54:11', '2015-04-27 08:54:11', '<h1>Local Queenstown Events & Activities</h1>', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-04-27 08:54:11', '2015-04-27 08:54:11', '', 19, 'http://localhost/esplanade6/?p=20', 0, 'revision', '', 0),
(21, 1, '2015-04-27 08:54:27', '2015-04-27 08:54:27', '<div class="row-fluid">\r\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\r\n<div class="span4">\r\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\r\n<div id="home_location">\r\nlocation\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h2 class="home_contactus">Contact Us <span id="change_home_contactus"></span></h2>\r\n<div id="home_contactus">\r\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\r\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\r\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\r\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\r\n</div>\r\n</div>\r\n</div>', 'Home 07 - Location', '', 'publish', 'closed', 'closed', '', 'home-07-location', '', '', '2015-04-29 08:46:53', '2015-04-29 08:46:53', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=21', 0, 'content_block', '', 0),
(22, 1, '2015-04-27 08:54:27', '2015-04-27 08:54:27', 'Location', 'Home 07 - Location', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-04-27 08:54:27', '2015-04-27 08:54:27', '', 21, 'http://localhost/esplanade6/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-04-27 08:55:40', '2015-04-27 08:55:40', '<a href="#">HOME</a>  |  <a href="#">PRIVACY POLICY</a>  |  <a href="#">CONTACT</a>  |  <a href="#">BACK TO TOP</a>', 'Footer Left', '', 'publish', 'closed', 'closed', '', 'footer-left', '', '', '2015-04-27 08:55:40', '2015-04-27 08:55:40', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=23', 0, 'content_block', '', 0),
(24, 1, '2015-04-27 08:55:40', '2015-04-27 08:55:40', '<a href="#">HOME</a>  |  <a href="#">PRIVACY POLICY</a>  |  <a href="#">CONTACT</a>  |  <a href="#">BACK TO TOP</a>', 'Footer Left', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2015-04-27 08:55:40', '2015-04-27 08:55:40', '', 23, 'http://localhost/esplanade6/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-04-27 08:56:23', '2015-04-27 08:56:23', '<p style="text-align: right;"><img class=" size-full wp-image-27 alignright" src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo-studioeleven.png" alt="logo-studioeleven" width="82" height="17" />Website design by</p>', 'Footer Right', '', 'publish', 'closed', 'closed', '', 'footer-right', '', '', '2015-04-28 13:23:44', '2015-04-28 13:23:44', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=25', 0, 'content_block', '', 0),
(26, 1, '2015-04-27 08:56:23', '2015-04-27 08:56:23', 'Website design by ', 'Footer Right', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-27 08:56:23', '2015-04-27 08:56:23', '', 25, 'http://localhost/esplanade6/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-04-27 08:56:30', '2015-04-27 08:56:30', '', 'logo-studioeleven', '', 'inherit', 'open', 'open', '', 'logo-studioeleven', '', '', '2015-04-27 08:56:30', '2015-04-27 08:56:30', '', 25, 'http://localhost/esplanade6/wp-content/uploads/2015/04/logo-studioeleven.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2015-04-27 08:56:36', '2015-04-27 08:56:36', '<img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo-studioeleven.png" alt="logo-studioeleven" width="82" height="17" class="alignnone size-full wp-image-27" />Website design by ', 'Footer Right', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-27 08:56:36', '2015-04-27 08:56:36', '', 25, 'http://localhost/esplanade6/?p=28', 0, 'revision', '', 0),
(30, 1, '2015-04-27 09:02:53', '2015-04-27 09:02:53', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-27 09:02:53', '2015-04-27 09:02:53', '', 0, 'http://localhost/esplanade6/?page_id=30', 0, 'page', '', 0),
(31, 1, '2015-04-27 09:02:53', '2015-04-27 09:02:53', '', 'Home', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-04-27 09:02:53', '2015-04-27 09:02:53', '', 30, 'http://localhost/esplanade6/?p=31', 0, 'revision', '', 0),
(32, 1, '2015-04-27 09:03:02', '2015-04-27 09:03:02', '\r\n<a href="https://www.youtube.com/watch?v=plNoxaA6Tfc&rel=0&width=640&height=480" rel="wp-video-lightbox">VIDEO TOUR</a>', 'Video Tour', '', 'publish', 'open', 'open', '', 'video-tour', '', '', '2015-06-12 14:10:19', '2015-06-12 14:10:19', '', 0, 'http://localhost/esplanade6/?page_id=32', 0, 'page', '', 0),
(33, 1, '2015-04-27 09:03:02', '2015-04-27 09:03:02', '', 'Video Tour', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2015-04-27 09:03:02', '2015-04-27 09:03:02', '', 32, 'http://localhost/esplanade6/?p=33', 0, 'revision', '', 0),
(34, 1, '2015-04-27 09:03:11', '2015-04-27 09:03:11', '', 'Facilities', '', 'publish', 'open', 'open', '', 'facilities', '', '', '2015-04-27 09:03:11', '2015-04-27 09:03:11', '', 0, 'http://localhost/esplanade6/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-04-27 09:03:11', '2015-04-27 09:03:11', '', 'Facilities', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-04-27 09:03:11', '2015-04-27 09:03:11', '', 34, 'http://localhost/esplanade6/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-04-27 09:03:19', '2015-04-27 09:03:19', '', 'Our Location', '', 'publish', 'open', 'open', '', 'our-location', '', '', '2015-04-27 09:03:19', '2015-04-27 09:03:19', '', 0, 'http://localhost/esplanade6/?page_id=36', 0, 'page', '', 0),
(37, 1, '2015-04-27 09:03:19', '2015-04-27 09:03:19', '', 'Our Location', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-04-27 09:03:19', '2015-04-27 09:03:19', '', 36, 'http://localhost/esplanade6/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-04-27 09:03:27', '2015-04-27 09:03:27', '', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2015-04-27 09:03:27', '2015-04-27 09:03:27', '', 0, 'http://localhost/esplanade6/?page_id=38', 0, 'page', '', 0),
(39, 1, '2015-04-27 09:03:27', '2015-04-27 09:03:27', '', 'Gallery', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2015-04-27 09:03:27', '2015-04-27 09:03:27', '', 38, 'http://localhost/esplanade6/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-04-27 09:03:39', '2015-04-27 09:03:39', '', 'Tariffs', '', 'publish', 'open', 'open', '', 'tariffs', '', '', '2015-04-27 09:03:39', '2015-04-27 09:03:39', '', 0, 'http://localhost/esplanade6/?page_id=40', 0, 'page', '', 0),
(41, 1, '2015-04-27 09:03:39', '2015-04-27 09:03:39', '', 'Tariffs', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-04-27 09:03:39', '2015-04-27 09:03:39', '', 40, 'http://localhost/esplanade6/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-04-27 09:03:59', '2015-04-27 09:03:59', '', 'What our Guests Say', '', 'publish', 'open', 'open', '', 'what-our-guests-say', '', '', '2015-04-27 09:03:59', '2015-04-27 09:03:59', '', 0, 'http://localhost/esplanade6/?page_id=42', 0, 'page', '', 0),
(43, 1, '2015-04-27 09:03:59', '2015-04-27 09:03:59', '', 'What our Guests Say', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-04-27 09:03:59', '2015-04-27 09:03:59', '', 42, 'http://localhost/esplanade6/?p=43', 0, 'revision', '', 0),
(44, 1, '2015-04-27 09:04:14', '2015-04-27 09:04:14', '', 'Queenstown Events & Activities', '', 'publish', 'open', 'open', '', 'queenstown-events-activities', '', '', '2015-04-27 09:04:14', '2015-04-27 09:04:14', '', 0, 'http://localhost/esplanade6/?page_id=44', 0, 'page', '', 0),
(45, 1, '2015-04-27 09:04:14', '2015-04-27 09:04:14', '', 'Queenstown Events & Activities', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-27 09:04:14', '2015-04-27 09:04:14', '', 44, 'http://localhost/esplanade6/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-27 09:04:21', '2015-04-27 09:04:21', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-04-27 09:04:21', '2015-04-27 09:04:21', '', 0, 'http://localhost/esplanade6/?page_id=46', 0, 'page', '', 0),
(47, 1, '2015-04-27 09:04:21', '2015-04-27 09:04:21', '', 'Contact', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-04-27 09:04:21', '2015-04-27 09:04:21', '', 46, 'http://localhost/esplanade6/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-04-27 09:05:58', '2015-04-27 09:05:58', ' ', '', '', 'publish', 'closed', 'open', '', '48', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=48', 1, 'nav_menu_item', '', 0),
(57, 1, '2015-04-27 09:21:23', '2015-04-27 09:21:23', '<div class="row-fluid">\r\n<div class="span4">\r\n<a href="#">Home</a>\r\n<a href="#">Video Tour</a>\r\n<a href="#">Facilities</a>\r\n</div>\r\n\r\n<div class="span4">\r\n<a href="#">Our Location</a>\r\n<a href="#">Gallery</a>\r\n<a href="#">Tariffs</a>\r\n</div>\r\n\r\n<div class="span4">\r\n<a href="#">What our Guests Say</a>\r\n<a href="#">Queenstown Events & Activities</a>\r\n<a href="#">Contact</a>\r\n</div>\r\n</div>', 'Header Menu', '', 'publish', 'closed', 'closed', '', 'header-menu', '', '', '2015-04-27 09:21:23', '2015-04-27 09:21:23', '', 0, 'http://localhost/esplanade6/?post_type=content_block&#038;p=57', 0, 'content_block', '', 0),
(58, 1, '2015-04-27 09:21:23', '2015-04-27 09:21:23', '<div class="row-fluid">\r\n<div class="span4">\r\n<a href="#">Home</a>\r\n<a href="#">Video Tour</a>\r\n<a href="#">Facilities</a>\r\n</div>\r\n\r\n<div class="span4">\r\n<a href="#">Our Location</a>\r\n<a href="#">Gallery</a>\r\n<a href="#">Tariffs</a>\r\n</div>\r\n\r\n<div class="span4">\r\n<a href="#">What our Guests Say</a>\r\n<a href="#">Queenstown Events & Activities</a>\r\n<a href="#">Contact</a>\r\n</div>\r\n</div>', 'Header Menu', '', 'inherit', 'closed', 'open', '', '57-revision-v1', '', '', '2015-04-27 09:21:23', '2015-04-27 09:21:23', '', 57, 'http://localhost/esplanade6/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-04-27 15:20:18', '2015-04-27 15:20:18', '<h1>Our Amenities</h1>\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-04-27 15:20:18', '2015-04-27 15:20:18', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-04-27 15:20:35', '2015-04-27 15:20:35', '<h1>Our Amenities</h1>\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-04-27 15:20:35', '2015-04-27 15:20:35', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-04-27 15:29:00', '2015-04-27 15:29:00', '<h1>Local Queenstown Events &amp; Activities</h1>\r\n[tabs] [tab title="Tab 1"]Tab 1 text[/tab] [tab title="Tab 2"]Tab 2 text[/tab] [/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-27 15:29:00', '2015-04-27 15:29:00', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-04-27 15:30:11', '2015-04-27 15:30:11', '<h1 style="text-align: center;">What Our Guests Say</h1>', 'Home 05 - What Our Guests Say', '', 'inherit', 'closed', 'open', '', '17-revision-v1', '', '', '2015-04-27 15:30:11', '2015-04-27 15:30:11', '', 17, 'http://localhost/esplanade6/17-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-04-27 15:31:25', '2015-04-27 15:31:25', '<h1 style="text-align: center;">What Our Guests Say</h1>\r\n<hr />', 'Home 05 - What Our Guests Say', '', 'inherit', 'closed', 'open', '', '17-revision-v1', '', '', '2015-04-27 15:31:25', '2015-04-27 15:31:25', '', 17, 'http://localhost/esplanade6/17-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-04-27 15:34:03', '2015-04-27 15:34:03', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-04-27 15:34:03', '2015-04-27 15:34:03', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-04-27 15:36:55', '2015-04-27 15:36:55', '', 'logo-allendale.png', '', 'inherit', 'closed', 'closed', '', 'logo-allendale-png', '', '', '2015-04-27 15:36:55', '2015-04-27 15:36:55', '', 0, 'http://localhost/esplanade6/wp-content/uploads/revslider/customers-say/logo-allendale.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2015-04-27 15:37:45', '2015-04-27 15:37:45', '<h1 style="text-align: center;">What Our Guests Say</h1>\r\n<hr />\r\n[rev_slider customers-say]', 'Home 05 - What Our Guests Say', '', 'inherit', 'closed', 'open', '', '17-revision-v1', '', '', '2015-04-27 15:37:45', '2015-04-27 15:37:45', '', 17, 'http://localhost/esplanade6/17-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-04-28 04:53:33', '2015-04-28 04:53:33', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2015-04-28 04:53:33', '2015-04-28 04:53:33', '', 0, 'http://localhost/esplanade6/shop/', 0, 'page', '', 0),
(68, 1, '2015-04-28 04:53:33', '2015-04-28 04:53:33', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2015-04-28 04:53:33', '2015-04-28 04:53:33', '', 0, 'http://localhost/esplanade6/cart/', 0, 'page', '', 0),
(69, 1, '2015-04-28 04:53:33', '2015-04-28 04:53:33', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2015-04-28 04:53:33', '2015-04-28 04:53:33', '', 0, 'http://localhost/esplanade6/checkout/', 0, 'page', '', 0),
(70, 1, '2015-04-28 04:53:33', '2015-04-28 04:53:33', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2015-04-28 04:53:33', '2015-04-28 04:53:33', '', 0, 'http://localhost/esplanade6/my-account/', 0, 'page', '', 0),
(72, 1, '2015-04-28 04:58:55', '2015-04-28 04:58:55', 'Esplanade Residences is situated on the lake-front of Lake Wakatipu New Zealand. Imagine staring out the window soaking up the stunning lake views and mountain vistas. Our luxury 3 bedroom villa styled Queenstown Apartments share lake-front views and are located only a short walk from the centre of Queenstown. \r\n\r\nFully equipped with a chef’s kitchen our villas are perfectly suited to entertaining your family and friends in the spacious living and dining areas. ', 'Queenstown Apartments  on the Lake Shore', 'Esplanade Residences is situated on the lake-front of Lake Wakatipu New Zealand. Imagine staring out the window soaking up the stunning lake views and mountain vistas. Our luxury 3 bedroom villa styled Queenstown Apartments share lake-front views and are located only a short walk from the centre of Queenstown. ', 'publish', 'closed', 'closed', '', 'queenstown-apartments-on-the-lake-shore', '', '', '2015-04-28 05:00:15', '2015-04-28 05:00:15', '', 0, 'http://localhost/esplanade6/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2015-04-28 04:58:31', '2015-04-28 04:58:31', '', 'booking1', '', 'inherit', 'closed', 'open', '', 'booking1', '', '', '2015-04-28 04:58:31', '2015-04-28 04:58:31', '', 72, 'http://localhost/esplanade6/wp-content/uploads/2015/04/booking1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2015-04-28 06:53:32', '2015-04-28 06:53:32', '[s11_featured]', 'Home 02 - Queenstown Apartments  on the Lake Shore', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-04-28 06:53:32', '2015-04-28 06:53:32', '', 8, 'http://localhost/esplanade6/8-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-04-28 06:55:13', '2015-04-28 06:55:13', '<div class="row-fluid">\r\n<div class="span8">\r\n<h1>PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES</h1>\r\n<p>Unwind and relax in this superbly appointed 3 bedroom waterfront accommodation minutes from the heart of Queenstown.</p>\r\n</div>\r\n<div class="span4">\r\n<div id="home_assistance">\r\nNEED ASSISTANCE?<br />\r\nCALL US +64 3 442 4420\r\n</div>\r\n<a href="#" id="home_book">Book Your Stay</a>\r\n</div>\r\n</div>', 'Home 01 - PLAN YOUR STAY IN ONE OF QUEENSTOWN’S PREMIER HOLIDAY HOMES', '', 'inherit', 'closed', 'open', '', '6-revision-v1', '', '', '2015-04-28 06:55:13', '2015-04-28 06:55:13', '', 6, 'http://localhost/esplanade6/6-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-04-28 07:00:11', '2015-04-28 07:00:11', 'Esplanade Residences is situated on the lake-front of Lake Wakatipu New Zealand. Imagine staring out the window soaking up the stunning lake views and mountain vistas. Our luxury 3 bedroom villa styled Queenstown Apartments share lake-front views and are located only a short walk from the centre of Queenstown. \r\n\r\nFully equipped with a chef’s kitchen our villas are perfectly suited to entertaining your family and friends in the spacious living and dining areas. ', 'Queenstown Apartments  on the Lake Shore (Copy)', 'Esplanade Residences is situated on the lake-front of Lake Wakatipu New Zealand. Imagine staring out the window soaking up the stunning lake views and mountain vistas. Our luxury 3 bedroom villa styled Queenstown Apartments share lake-front views and are located only a short walk from the centre of Queenstown. ', 'publish', 'closed', 'closed', '', 'queenstown-apartments-on-the-lake-shore-copy', '', '', '2015-04-28 07:00:17', '2015-04-28 07:00:17', '', 0, 'http://localhost/esplanade6/product/queenstown-apartments-on-the-lake-shore-copy/', 0, 'product', '', 0),
(77, 1, '2015-04-28 08:20:06', '2015-04-28 08:20:06', '', 'slide_01.png', '', 'inherit', 'closed', 'closed', '', 'slide-01-png', '', '', '2015-04-28 08:20:06', '2015-04-28 08:20:06', '', 0, 'http://localhost/esplanade6/wp-content/uploads/revslider/homepage/slide_01.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2015-04-28 08:20:07', '2015-04-28 08:20:07', '', 'slide_02.png', '', 'inherit', 'closed', 'closed', '', 'slide-02-png', '', '', '2015-04-28 08:20:07', '2015-04-28 08:20:07', '', 0, 'http://localhost/esplanade6/wp-content/uploads/revslider/homepage/slide_02.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2015-04-28 08:20:08', '2015-04-28 08:20:08', '', 'slide_03.png', '', 'inherit', 'closed', 'closed', '', 'slide-03-png', '', '', '2015-04-28 08:20:08', '2015-04-28 08:20:08', '', 0, 'http://localhost/esplanade6/wp-content/uploads/revslider/homepage/slide_03.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2015-04-28 08:20:09', '2015-04-28 08:20:09', '', 'slide_04.png', '', 'inherit', 'closed', 'closed', '', 'slide-04-png', '', '', '2015-04-28 08:20:09', '2015-04-28 08:20:09', '', 0, 'http://localhost/esplanade6/wp-content/uploads/revslider/homepage/slide_04.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2015-04-28 08:21:13', '2015-04-28 08:21:13', '', 'esplanade_01', '', 'inherit', 'closed', 'open', '', 'esplanade_01', '', '', '2015-04-28 08:21:13', '2015-04-28 08:21:13', '', 0, 'http://localhost/esplanade6/wp-content/uploads/2015/04/esplanade_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2015-04-28 08:32:14', '2015-04-28 08:32:14', 'Queenstown really has to be one of the most breath taking destinations in the world and if you are a first time visitor you might not be sure what to expect. We have put together a Queenstown Accommodation Photo Gallery to showcase the beautiful scenery that Queenstown has to offer. The best thing is you can enjoy the spectacular views from your apartment. ', 'Item 1', '', 'publish', 'closed', 'open', '', 'item-1', '', '', '2015-04-28 08:54:29', '2015-04-28 08:54:29', '', 0, 'http://localhost/esplanade6/?post_type=etheme_portfolio&#038;p=82', 0, 'etheme_portfolio', '', 0),
(83, 1, '2015-04-28 08:32:10', '2015-04-28 08:32:10', '', 'portfolio-item1', '', 'inherit', 'closed', 'open', '', 'portfolio-item1', '', '', '2015-04-28 08:32:10', '2015-04-28 08:32:10', '', 82, 'http://localhost/esplanade6/wp-content/uploads/2015/04/portfolio-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2015-04-28 08:33:12', '2015-04-28 08:33:12', 'the content on item 2', 'Item 2', '', 'publish', 'closed', 'open', '', 'item-2', '', '', '2015-04-28 09:13:50', '2015-04-28 09:13:50', '', 0, 'http://localhost/esplanade6/?post_type=etheme_portfolio&#038;p=84', 0, 'etheme_portfolio', '', 0),
(85, 1, '2015-04-28 08:35:31', '2015-04-28 08:35:31', 'Gallery\r\n[s11_show_our_clients]', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 08:35:31', '2015-04-28 08:35:31', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-04-28 08:43:16', '2015-04-28 08:43:16', 'Gallery\r\n[smoothslider id=''1'']', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 08:43:16', '2015-04-28 08:43:16', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-04-28 08:59:35', '2015-04-28 08:59:35', '[smoothslider id=''1'']', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 08:59:35', '2015-04-28 08:59:35', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-04-28 09:30:11', '2015-04-28 09:30:11', '', 'image_01', '', 'inherit', 'closed', 'open', '', 'image_01', '', '', '2015-04-28 09:32:16', '2015-04-28 09:32:16', '', 0, 'http://localhost/esplanade6/wp-content/uploads/2015/04/image_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2015-04-28 09:30:48', '2015-04-28 09:30:48', '', 'image_02', '', 'inherit', 'closed', 'open', '', 'image_02', '', '', '2015-04-28 09:32:16', '2015-04-28 09:32:16', '', 0, 'http://localhost/esplanade6/wp-content/uploads/2015/04/image_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2015-04-28 09:31:56', '2015-04-28 09:31:56', '', 'image_03', '', 'inherit', 'closed', 'open', '', 'image_03', '', '', '2015-04-28 09:32:16', '2015-04-28 09:32:16', '', 0, 'http://localhost/esplanade6/wp-content/uploads/2015/04/image_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2015-04-28 09:32:28', '2015-04-28 09:32:28', '', 'image_04', '', 'inherit', 'closed', 'open', '', 'image_04', '', '', '2015-04-29 10:48:44', '2015-04-29 10:48:44', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/image_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2015-04-28 09:33:28', '2015-04-28 09:33:28', '[smoothslider id=''1'']\r\n[smoothslider id=''2'']', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 09:33:28', '2015-04-28 09:33:28', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-04-28 11:59:02', '2015-04-28 11:59:02', '[smoothslider id=''1'']\r\n [tribulant_slideshow gallery_id="1"] ', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 11:59:02', '2015-04-28 11:59:02', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-04-28 12:02:03', '2015-04-28 12:02:03', '[smoothslider id=''1'']\r\n[print_thumbnail_slider]', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 12:02:03', '2015-04-28 12:02:03', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2015-04-28 12:08:17', '2015-04-28 12:08:17', '[smoothslider id=''1'']\r\n[wonderplugin_carousel id="1"]', 'Home 04 - Gallery', '', 'inherit', 'closed', 'open', '', '15-revision-v1', '', '', '2015-04-28 12:08:17', '2015-04-28 12:08:17', '', 15, 'http://localhost/esplanade6/15-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-04-28 12:15:31', '2015-04-28 12:15:31', '<h1>Local Queenstown Events &amp; Activities</h1>\r\n[tabs] [tab title="Tab 1" class="tab_1"]Tab 1 text[/tab] [tab title="Tab 2"]Tab 2 text[/tab] [/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-28 12:15:31', '2015-04-28 12:15:31', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-04-29 09:00:39', '2015-04-29 09:00:39', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\n[tabs]\n[tab title="Dining" class="tab_dining"]\n<div class="row-fluid">\n<div class="span8">\n[show_dining_activities]\n</div>\n<div class="span4">\nphotos\n</div>\n</div>\n[/tab] [tab title="Activities" class="tab_activities"]\nTab 2 text\n[/tab] [tab title="Events" class="tab_events"]\nTab 3 text\n[/tab]\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-autosave-v1', '', '', '2015-04-29 09:00:39', '2015-04-29 09:00:39', '', 19, 'http://localhost/esplanade6/19-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2015-04-28 12:18:18', '2015-04-28 12:18:18', '<h1>Local Queenstown Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\nTab 1 text\r\n[/tab] \r\n[tab title="Activities" class="tab_activities"]\r\nTab 2 text\r\n[/tab] \r\n[tab title="Events" class="tab_events"]\r\nTab 3 text\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-28 12:18:18', '2015-04-28 12:18:18', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-04-28 12:18:33', '2015-04-28 12:18:33', '<h1>Local Queenstown Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\nTab 1 text\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\nTab 2 text\r\n[/tab] [tab title="Events" class="tab_events"]\r\nTab 3 text\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-28 12:18:33', '2015-04-28 12:18:33', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-04-28 12:39:29', '2015-04-28 12:39:29', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\nTab 1 text\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\nTab 2 text\r\n[/tab] [tab title="Events" class="tab_events"]\r\nTab 3 text\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-28 12:39:29', '2015-04-28 12:39:29', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-04-28 13:23:36', '2015-04-28 13:23:36', '<img class=" size-full wp-image-27 alignright" src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo-studioeleven.png" alt="logo-studioeleven" width="82" height="17" />Website design by', 'Footer Right', '', 'inherit', 'closed', 'open', '', '25-revision-v1', '', '', '2015-04-28 13:23:36', '2015-04-28 13:23:36', '', 25, 'http://localhost/esplanade6/25-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-04-28 13:23:44', '2015-04-28 13:23:44', '<p style="text-align: right;"><img class=" size-full wp-image-27 alignright" src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo-studioeleven.png" alt="logo-studioeleven" width="82" height="17" />Website design by</p>', 'Footer Right', '', 'inherit', 'closed', 'open', '', '25-revision-v1', '', '', '2015-04-28 13:23:44', '2015-04-28 13:23:44', '', 25, 'http://localhost/esplanade6/25-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-04-29 08:28:11', '2015-04-29 08:28:11', '<div class="row-fluid">\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\n<div class="span4">\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\n<div id="home_location">\nlocation\n</div>\n</div>\n\n<div class="span4">\n<h2 class="home_contactus">Contact Us</h2>\n<div id="home_contactus">\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\n</div>\n</div>\n</div>', 'Home 07 - Location', '', 'inherit', 'closed', 'open', '', '21-autosave-v1', '', '', '2015-04-29 08:28:11', '2015-04-29 08:28:11', '', 21, 'http://localhost/esplanade6/21-autosave-v1/', 0, 'revision', '', 0),
(104, 1, '2015-04-29 08:17:09', '2015-04-29 08:17:09', '<div class="row-fluid">\r\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\r\n<div class="span4">\r\n<h2 class="home_location">Location</h2>\r\n<div id="home_location">\r\nlocation\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h2 class="home_contactus">Contact Us</h2>\r\n<div id="home_contactus">\r\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\r\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\r\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\r\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\r\n</div>\r\n</div>\r\n</div>', 'Home 07 - Location', '', 'inherit', 'closed', 'open', '', '21-revision-v1', '', '', '2015-04-29 08:17:09', '2015-04-29 08:17:09', '', 21, 'http://localhost/esplanade6/21-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-04-29 08:28:21', '2015-04-29 08:28:21', '<div class="row-fluid">\r\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\r\n<div class="span4">\r\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\r\n<div id="home_location">\r\nlocation\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h2 class="home_contactus">Contact Us <span id="change_home_contactus"></span></h2>\r\n<div id="home_contactus">\r\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\r\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\r\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\r\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\r\n</div>\r\n</div>\r\n</div>', 'Home 07 - Location', '', 'inherit', 'closed', 'open', '', '21-revision-v1', '', '', '2015-04-29 08:28:21', '2015-04-29 08:28:21', '', 21, 'http://localhost/esplanade6/21-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-04-29 08:46:24', '2015-04-29 08:46:24', '<div class="row-fluid">\r\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\r\n<div class="span4">\r\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\r\n<div id="home_location">\r\nlocation\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h2 class="home_contactus">Contact Us <span id="change_home_contactus"></span></h2>\r\n<div id="home_contactus">\r\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\r\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\r\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\r\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\r\n</div>\r\n</div>\r\n</div>', 'Home 07 - Location', '', 'inherit', 'closed', 'open', '', '21-revision-v1', '', '', '2015-04-29 08:46:24', '2015-04-29 08:46:24', '', 21, 'http://localhost/esplanade6/21-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-04-29 08:46:53', '2015-04-29 08:46:53', '<div class="row-fluid">\r\n<div class="span4"><img src="http://localhost/esplanade6/wp-content/uploads/2015/04/logo.png" alt="logo" width="277" height="100" class="alignnone size-full wp-image-5" /></div>\r\n<div class="span4">\r\n<h2 class="home_location">Location <span id="change_home_location"></span></h2>\r\n<div id="home_location">\r\nlocation\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h2 class="home_contactus">Contact Us <span id="change_home_contactus"></span></h2>\r\n<div id="home_contactus">\r\nE&nbsp;&nbsp;&nbsp;&nbsp;enquiries@luxuryqueenstown.co.nz\r\nP&nbsp;&nbsp;&nbsp;&nbsp;+64 211 243 243\r\nM&nbsp;&nbsp;&nbsp;&nbsp;+64 21 999 035\r\nP&nbsp;&nbsp;&nbsp;&nbsp;PO BOX 91478 AMSC\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AUCKLAND NZ 1142\r\n</div>\r\n</div>\r\n</div>', 'Home 07 - Location', '', 'inherit', 'closed', 'open', '', '21-revision-v1', '', '', '2015-04-29 08:46:53', '2015-04-29 08:46:53', '', 21, 'http://localhost/esplanade6/21-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-04-29 08:55:29', '2015-04-29 08:55:29', 'Queenstown best steak house.\r\nLocated in the heart of Queenstown, JSH has quickly become a must do dining experience for visitors and locals alike.', 'Jervois Steak House', '', 'publish', 'closed', 'closed', '', 'jervois-steak-house', '', '', '2015-04-30 04:29:42', '2015-04-30 04:29:42', '', 0, 'http://localhost/esplanade6/?post_type=actions&#038;p=108', 0, 'actions', '', 0),
(109, 1, '2015-04-29 08:55:59', '2015-04-29 08:55:59', '', 'jervois-steak-house', '', 'inherit', 'closed', 'open', '', 'jervois-steak-house-2', '', '', '2015-04-29 08:55:59', '2015-04-29 08:55:59', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/jervois-steak-house.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2015-04-29 08:57:37', '2015-04-29 08:57:37', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\nget dining activities\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\nTab 2 text\r\n[/tab] [tab title="Events" class="tab_events"]\r\nTab 3 text\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 08:57:37', '2015-04-29 08:57:37', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2015-04-29 09:04:34', '2015-04-29 09:04:34', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_dining_activities]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\nTab 2 text\r\n[/tab] [tab title="Events" class="tab_events"]\r\nTab 3 text\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 09:04:34', '2015-04-29 09:04:34', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2015-04-29 09:05:29', '2015-04-29 09:05:29', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_dining]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_activities]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Events" class="tab_events"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_events]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 09:05:29', '2015-04-29 09:05:29', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2015-04-29 09:20:18', '2015-04-29 09:20:18', 'Content ', 'Second dining', '', 'publish', 'closed', 'closed', '', 'second-dining', '', '', '2015-04-29 17:43:40', '2015-04-29 17:43:40', '', 0, 'http://localhost/esplanade6/?post_type=actions&#038;p=113', 0, 'actions', '', 0),
(114, 1, '2015-04-29 10:31:36', '2015-04-29 10:31:36', '', 'Actions Gallery', '', 'publish', 'closed', 'closed', '', 'acf_actions-gallery', '', '', '2015-04-29 10:42:28', '2015-04-29 10:42:28', '', 0, 'http://localhost/esplanade6/?post_type=acf&#038;p=114', 0, 'acf', '', 0),
(115, 1, '2015-04-29 10:40:37', '2015-04-29 10:40:37', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_dining]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_activities]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Events" class="tab_events"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_events]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 10:40:37', '2015-04-29 10:40:37', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2015-04-29 17:41:59', '2015-04-29 17:41:59', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_dining type="dining"]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_activities]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Events" class="tab_events"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_events]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 17:41:59', '2015-04-29 17:41:59', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2015-04-29 17:45:19', '2015-04-29 17:45:19', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_dining type="Dining"]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_activities]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Events" class="tab_events"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_events]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 17:45:19', '2015-04-29 17:45:19', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-04-29 18:02:27', '2015-04-29 18:02:27', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_actions type="Dining"]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_actions type="Activities"]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab] [tab title="Events" class="tab_events"]\r\n<div class="row-fluid">\r\n<div class="span8">\r\n[show_actions type="Events"]\r\n</div>\r\n<div class="span4">\r\nphotos\r\n</div>\r\n</div>\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 18:02:27', '2015-04-29 18:02:27', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-04-29 18:03:38', '2015-04-29 18:03:38', '<h1>Local Queenstown<br />Events &amp; Activities</h1>\r\n[tabs]\r\n[tab title="Dining" class="tab_dining"]\r\n[show_actions type="Dining"]\r\n[/tab] [tab title="Activities" class="tab_activities"]\r\n[show_actions type="Activities"]\r\n[/tab] [tab title="Events" class="tab_events"]\r\n[show_actions type="Events"]\r\n[/tab]\r\n[/tabs]', 'Home 06 - Local Queenstown  Events & Activities', '', 'inherit', 'closed', 'open', '', '19-revision-v1', '', '', '2015-04-29 18:03:38', '2015-04-29 18:03:38', '', 19, 'http://localhost/esplanade6/19-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-04-30 04:19:20', '2015-04-30 04:19:20', '', 'dining_01', '', 'inherit', 'closed', 'open', '', 'dining_01', '', '', '2015-04-30 04:19:20', '2015-04-30 04:19:20', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2015-04-30 04:20:01', '2015-04-30 04:20:01', '', 'dining_02', '', 'inherit', 'closed', 'open', '', 'dining_02', '', '', '2015-04-30 04:20:01', '2015-04-30 04:20:01', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-04-30 04:20:19', '2015-04-30 04:20:19', '', 'dining_03', '', 'inherit', 'closed', 'open', '', 'dining_03', '', '', '2015-04-30 04:20:19', '2015-04-30 04:20:19', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2015-04-30 04:21:49', '2015-04-30 04:21:49', '', 'dining_04', '', 'inherit', 'closed', 'open', '', 'dining_04', '', '', '2015-04-30 04:21:49', '2015-04-30 04:21:49', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2015-04-30 04:22:25', '2015-04-30 04:22:25', '', 'dining_05', '', 'inherit', 'closed', 'open', '', 'dining_05', '', '', '2015-04-30 04:22:25', '2015-04-30 04:22:25', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_05.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-04-30 04:22:54', '2015-04-30 04:22:54', '', 'dining_06', '', 'inherit', 'closed', 'open', '', 'dining_06', '', '', '2015-04-30 04:22:54', '2015-04-30 04:22:54', '', 108, 'http://localhost/esplanade6/wp-content/uploads/2015/04/dining_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2015-06-02 08:35:32', '2015-06-02 08:35:32', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\nwow\r\n</div>\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-06-02 08:35:32', '2015-06-02 08:35:32', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2015-06-02 08:36:00', '2015-06-02 08:36:00', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\nwow', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-06-02 08:36:00', '2015-06-02 08:36:00', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2015-06-02 08:40:37', '2015-06-02 08:40:37', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<h2 class="home_tariffs">Location <span id="change_home_tariffs"></span></h2>\r\n<div id="home_tariffs">\r\nlocation\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-06-02 08:40:37', '2015-06-02 08:40:37', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-06-02 08:46:54', '2015-06-02 08:46:54', '<h1>Our Amenities</h1>\r\n<hr />\r\n<p>We know that our holiday guests appreciate the finer details, the Esplanade6 luxury holiday<br />home comes fully equipped with all the latest modern conveniences</p>\r\n&nbsp;\r\n&nbsp;\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_11">\r\n<li><h4>3 spacious bedrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_12">\r\n<li><h4>Fully equipped kitchen</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_13">\r\n<li><h4>Various forms of heating</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_21">\r\n<li><h4>Lock up garage</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_22">\r\n<li><h4>2 Bathrooms</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_23">\r\n<li><h4>Media centre</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_31">\r\n<li><h4>Private secure courtyard</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_32">\r\n<li><h4>Full laundry facilities</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="span4">\r\n<ul class="home_amenities" id="ha_33">\r\n<li><h4>Free Wi-Fi Internet</h4></li>\r\n<li>Each villa sleeps up to 6 guests - 1 king, 1 queen and spitable king bed all with luxurious plush bedding & electric blankets</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<h2 class="home_tariffs">OUR TARIFFS <span id="change_home_tariffs"></span></h2>\r\n<div id="home_tariffs">\r\nlocation\r\n</div>', 'Home 03 - Our Amenities', '', 'inherit', 'closed', 'open', '', '10-revision-v1', '', '', '2015-06-02 08:46:54', '2015-06-02 08:46:54', '', 10, 'http://localhost/esplanade6/10-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2015-06-12 10:03:54', '2015-06-12 10:03:54', '', 'MY VIDEO', '', 'publish', 'closed', 'open', '', 'my-video', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=132', 2, 'nav_menu_item', '', 0),
(133, 1, '2015-06-12 14:06:52', '2015-06-12 14:06:52', '[video_lightbox_youtube video_id="plNoxaA6Tfc&amp;rel=0" width="640" height="480" class="see_how_we_work" anchor="VIDEO TOUR"]', 'Video Tour', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2015-06-12 14:06:52', '2015-06-12 14:06:52', '', 32, 'http://localhost/esplanade6/32-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-06-12 14:09:47', '2015-06-12 14:09:47', '[video_lightbox_youtube video_id="plNoxaA6Tfc&amp;rel=0" width="640" height="480" class="see_how_we_work" anchor="VIDEO TOUR"]\r\n\r\n<a class="see_how_we_work" title="" href="https://www.youtube.com/watch?v=plNoxaA6Tfc&rel=0&width=640&height=480" rel="wp-video-lightbox">VIDEO TOUR</a>', 'Video Tour', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2015-06-12 14:09:47', '2015-06-12 14:09:47', '', 32, 'http://localhost/esplanade6/32-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-06-12 14:10:01', '2015-06-12 14:10:01', '\r\n\r\n<a class="see_how_we_work" title="" href="https://www.youtube.com/watch?v=plNoxaA6Tfc&rel=0&width=640&height=480" rel="wp-video-lightbox">VIDEO TOUR</a>', 'Video Tour', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2015-06-12 14:10:01', '2015-06-12 14:10:01', '', 32, 'http://localhost/esplanade6/32-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-06-12 14:10:19', '2015-06-12 14:10:19', '\r\n<a href="https://www.youtube.com/watch?v=plNoxaA6Tfc&rel=0&width=640&height=480" rel="wp-video-lightbox">VIDEO TOUR</a>', 'Video Tour', '', 'inherit', 'closed', 'open', '', '32-revision-v1', '', '', '2015-06-12 14:10:19', '2015-06-12 14:10:19', '', 32, 'http://localhost/esplanade6/32-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2015-06-26 07:07:00', '2015-06-26 07:07:00', '', 'OUR Location', '', 'publish', 'closed', 'open', '', 'our-location', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=138', 4, 'nav_menu_item', '', 0),
(139, 1, '2015-06-26 07:08:13', '0000-00-00 00:00:00', '', 'Amenities', '', 'draft', 'closed', 'open', '', '', '', '', '2015-06-26 07:08:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/esplanade6/?p=139', 1, 'nav_menu_item', '', 0),
(140, 1, '2015-06-26 07:09:37', '0000-00-00 00:00:00', '', 'Gallery', '', 'draft', 'closed', 'open', '', '', '', '', '2015-06-26 07:09:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/esplanade6/?p=140', 1, 'nav_menu_item', '', 0),
(141, 1, '2015-06-26 07:10:14', '0000-00-00 00:00:00', '', 'What our Guests Say', '', 'draft', 'closed', 'open', '', '', '', '', '2015-06-26 07:10:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/esplanade6/?p=141', 1, 'nav_menu_item', '', 0),
(142, 1, '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 'Amenities', '', 'publish', 'closed', 'open', '', 'amenities', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=142', 3, 'nav_menu_item', '', 0),
(143, 1, '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 'Gallery', '', 'publish', 'closed', 'open', '', 'gallery', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=143', 5, 'nav_menu_item', '', 0),
(144, 1, '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 'What our Guests Say', '', 'publish', 'closed', 'open', '', 'what-our-guests-say', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=144', 6, 'nav_menu_item', '', 0),
(145, 1, '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 'Queenstown Events & Activities', '', 'publish', 'closed', 'open', '', 'queenstown-events-activities', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=145', 7, 'nav_menu_item', '', 0),
(146, 1, '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 'Contact', '', 'publish', 'closed', 'open', '', 'contact', '', '', '2015-06-26 07:22:09', '2015-06-26 07:22:09', '', 0, 'http://localhost/esplanade6/?p=146', 8, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE `wp_revslider_css` (
`id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `hover` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(48, '.tp-caption.argus_black', '{"hover":"false"}', '""', '{"color":"#98999b","text-shadow":"none","background-color":"transparent","text-decoration":"none","text-align":"center","display":"block","float":"left","max-width":"60%","font-family":"\\"Lato\\"","font-style":"italic","font-weight":"300","font-size":"18px","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(49, '.tp-caption.argus_black_italic', '{"hover":"false"}', '""', '{"color":"#777777","text-shadow":"none","background-color":"transparent","text-decoration":"none","text-align":"center","display":"block","max-width":"60%","white-space":"normal !important","font-family":"\\"Lato\\"","font-style":"italic","font-weight":"400","font-size":"16px","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(50, '.tp-caption.esplanade_say', '{"hover":"false"}', '""', '{"color":"#000000","text-shadow":"none","background-color":"transparent","text-decoration":"none","display":"block","float":"left","max-width":"60%","font-family":"\\"Source Sans Pro\\"","font-style":"italic","font-weight":"300","font-size":"18px","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE `wp_revslider_layer_animations` (
`id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE `wp_revslider_settings` (
`id` int(9) NOT NULL,
  `general` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE `wp_revslider_sliders` (
`id` int(9) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'Customers Say', 'customers-say', '{"title":"Customers Say","alias":"customers-say","shortcode":"[rev_slider customers-say]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","width":"960","height":"150","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"load_googlefont":"false","google_font":["<link href=\\\\''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700\\\\'' rel=\\\\''stylesheet\\\\'' type=\\\\''text\\/css\\\\''>"],"position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","show_timerbar":"hide","padding":0,"background_color":"","background_dotted_overlay":"none","show_background_image":"false","background_image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","use_spinner":"0","spinner_color":"#FFFFFF","touchenabled":"on","stop_on_hover":"on","navigaion_type":"none","navigation_arrows":"solo","navigation_style":"navbar","navigaion_always_on":"true","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"center","leftarrow_align_vert":"bottom","leftarrow_offset_hor":-20,"leftarrow_offset_vert":-80,"rightarrow_align_hor":"center","rightarrow_align_vert":"bottom","rightarrow_offset_hor":20,"rightarrow_offset_vert":-80,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_thumbs_under_resolution":0,"loop_slide":"loop","start_with_slide":"1","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","template":"false"}'),
(2, 'Homepage', 'homepage', '{"title":"Homepage","alias":"homepage","shortcode":"[rev_slider homepage]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"on","width":"960","height":"655","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"load_googlefont":"false","google_font":["<link href=\\\\''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700\\\\'' rel=\\\\''stylesheet\\\\'' type=\\\\''text\\/css\\\\''>"],"position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","show_timerbar":"hide","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","use_spinner":"0","spinner_color":"#FFFFFF","touchenabled":"on","stop_on_hover":"on","navigaion_type":"none","navigation_arrows":"none","navigation_style":"round","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_thumbs_under_resolution":0,"loop_slide":"loop","start_with_slide":"1","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE `wp_revslider_slides` (
`id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"trans","title":"Slide1","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/","0":"Remove"}', '[{"text":"\\u201dSlide 2 - We found that we could manage the fleet so much better with a good reporting system, which Argus offers. It keeps an eye on Road User Charges, WoFs, CoFs, accumulated mileage and other vehicle management information which is an area that big fleets can actually lose a lot of money to.\\u201d ","type":"text","left":0,"top":10,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"60%","whitespace":"normal","speed":300,"align_hor":"center","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"argus_black","time":500,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":942,"height":55,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""},{"text":"Allendale Electrical","type":"text","left":0,"top":10,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"60%","whitespace":"normal","speed":300,"align_hor":"center","align_vert":"bottom","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"argus_black_italic","time":800,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":128,"height":18,"serial":"1","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8200,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""}]'),
(2, 1, 2, '{"background_type":"trans","title":"Slide2","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/","0":"Remove"}', '[{"text":"\\u201dWe found that we could manage the fleet so much better with a good reporting system, which Argus offers. It keeps an eye on Road User Charges, WoFs, CoFs, accumulated mileage and other vehicle management information which is an area that big fleets can actually lose a lot of money to.\\u201d ","type":"text","left":0,"top":10,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"60%","whitespace":"normal","speed":300,"align_hor":"center","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"argus_black","time":500,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":942,"height":55,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""},{"text":"Allendale Electrical","type":"text","left":0,"top":10,"animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"60%","whitespace":"normal","speed":300,"align_hor":"center","align_vert":"bottom","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"argus_black_italic","time":800,"endtime":"","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":128,"height":18,"serial":"1","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8200,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":""}]'),
(3, 2, 1, '{"background_type":"image","image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/esplanade_01.jpg","image_id":"81","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone"}', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `wp_smooth_slider`
--

CREATE TABLE `wp_smooth_slider` (
`id` int(5) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `slider_id` int(5) NOT NULL DEFAULT '1',
  `slide_order` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_smooth_slider`
--

INSERT INTO `wp_smooth_slider` (`id`, `post_id`, `date`, `slider_id`, `slide_order`) VALUES
(1, 82, '2015-04-28 08:42:35', 1, 0),
(2, 84, '2015-04-28 08:42:50', 1, 0),
(3, 88, '2015-04-28 09:32:16', 2, 0),
(4, 89, '2015-04-28 09:32:16', 2, 0),
(5, 90, '2015-04-28 09:32:16', 2, 0),
(6, 91, '2015-04-28 09:32:33', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_smooth_slider_meta`
--

CREATE TABLE `wp_smooth_slider_meta` (
`slider_id` int(5) NOT NULL,
  `slider_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_smooth_slider_meta`
--

INSERT INTO `wp_smooth_slider_meta` (`slider_id`, `slider_name`) VALUES
(1, 'Gallery Slider'),
(2, 'Image Slider');

-- --------------------------------------------------------

--
-- Table structure for table `wp_smooth_slider_postmeta`
--

CREATE TABLE `wp_smooth_slider_postmeta` (
  `post_id` int(11) NOT NULL,
  `slider_id` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_taxonomymeta`
--

CREATE TABLE `wp_taxonomymeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Navigation', 'primary-navigation', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'booking', 'booking', 0),
(8, 'Dining', 'dining', 0),
(9, 'Activities', 'activities', 0),
(10, 'Events', 'events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(48, 2, 0),
(72, 7, 0),
(76, 7, 0),
(108, 8, 0),
(113, 9, 0),
(132, 2, 0),
(138, 2, 0),
(142, 2, 0),
(143, 2, 0),
(144, 2, 0),
(145, 2, 0),
(146, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 2),
(8, 8, 'actions_category', '', 0, 1),
(9, 9, 'actions_category', '', 0, 1),
(10, 10, 'actions_category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_thumbnail_slider`
--

CREATE TABLE `wp_thumbnail_slider` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(1000) NOT NULL,
  `image_name` varchar(500) NOT NULL,
  `createdon` datetime NOT NULL,
  `custom_link` varchar(1000) DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_thumbnail_slider`
--

INSERT INTO `wp_thumbnail_slider` (`id`, `title`, `image_name`, `createdon`, `custom_link`, `post_id`) VALUES
(1, 'a', 'image_01.jpg', '2015-04-28 12:01:00', '', NULL),
(2, 'b', 'image_02.jpg', '2015-04-28 12:01:00', '', NULL),
(3, 'c', 'image_03.jpg', '2015-04-28 12:02:00', '', NULL),
(4, 'd', 'image_04.jpg', '2015-04-28 12:02:00', '', NULL),
(5, 'e', 'image_02.jpg', '2015-04-28 12:02:00', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"cfc1398f042fa3292dec0f208cf1f019b9068b34c8ac041d314021878ea7942f";a:4:{s:10:"expiration";i:1435474440;s:2:"ip";s:3:"::1";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0";s:5:"login";i:1435301640;}s:64:"9c73ed629136bcc34aeca12a9db23a7e42e3635cda6d7fd8a4d6fe3f45d71105";a:4:{s:10:"expiration";i:1435475815;s:2:"ip";s:3:"::1";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0";s:5:"login";i:1435303015;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '137'),
(16, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&urlbutton=none&hidetb=0'),
(17, 1, 'wp_user-settings-time', '1430367652'),
(18, 1, 'managenav-menuscolumnshidden', 'a:2:{i:0;s:11:"link-target";i:1;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:8:"add-post";i:1;s:11:"add-clients";i:2;s:16:"add-case_studies";i:3;s:16:"add-staticblocks";i:4;s:20:"add-etheme_portfolio";i:5;s:15:"add-testimonial";i:6;s:12:"add-post_tag";i:7;s:25:"add-case_studies_category";i:8;s:14:"add-categories";}'),
(20, 1, 'closedpostboxes_etheme_portfolio', 'a:0:{}'),
(21, 1, 'metaboxhidden_etheme_portfolio', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'tgmpa_dismissed_notice', '1'),
(23, 1, 'wp_media_library_mode', 'list'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2WVJQSjySfvdAb9blkLnxWKVceiOL1', 'admin', 'daniel.oraca@gmail.com', '', '2015-04-27 06:57:22', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_booking_relationships`
--

CREATE TABLE `wp_wc_booking_relationships` (
`ID` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `resource_id` bigint(20) unsigned NOT NULL,
  `sort_order` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wonderplugin_carousel`
--

CREATE TABLE `wp_wonderplugin_carousel` (
`id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorid` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_wonderplugin_carousel`
--

INSERT INTO `wp_wonderplugin_carousel` (`id`, `name`, `data`, `time`, `authorid`) VALUES
(1, 'My Carousel', '{"name":"My Carousel","slides":[{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_01.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_01-150x150.jpg","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"image_01","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02-150x150.jpg","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"image_02","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03-150x150.jpg","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"image_03","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04-150x150.jpg","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"image_04","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/revslider\\/homepage\\/slide_01.png","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/revslider\\/homepage\\/slide_01-300x79.png","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"slide_01.png","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/booking1.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/booking1-300x200.jpg","displaythumbnail":"false","video":"","mp4":"","webm":"","title":"booking1","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480}],"skin":"fashion","customcss":"","dataoptions":"","lightboxresponsive":"true","lightboxshownavigation":"false","lightboxnogroup":"false","lightboxshowtitle":"true","lightboxshowdescription":"false","lightboxthumbwidth":90,"lightboxthumbheight":60,"lightboxthumbtopmargin":12,"lightboxthumbbottommargin":4,"lightboxbarheight":64,"lightboxtitlebottomcss":"{color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;}","lightboxdescriptionbottomcss":"{color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;}","width":290,"height":200,"autoplay":"false","random":"false","circular":"true","direction":"horizontal","responsive":"true","visibleitems":4,"arrowstyle":"mouseover","arrowimage":"arrows-42-60-0.png","arrowwidth":42,"arrowheight":60,"navstyle":"bullets","navimage":"bullet-16-16-1.png","navwidth":16,"navheight":16,"navspacing":8,"showhoveroverlay":"false","hoveroverlayimage":"hoveroverlay-64-64-4.png","screenquery":"{\\n\\t\\"tablet\\": {\\n\\t\\t\\"screenwidth\\": 900,\\n\\t\\t\\"visibleitems\\": 2\\n\\t},\\n\\t\\"mobile\\": {\\n\\t\\t\\"screenwidth\\": 600,\\n\\t\\t\\"visibleitems\\": 1\\n\\t}\\n}","skintemplate":"&lt;div class=\\"amazingcarousel-image\\"&gt;__IMAGE__&lt;\\/div&gt;","skincss":"@import url(https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans);\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image {\\t\\n\\tposition: relative;\\n\\tpadding: 0px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image img {\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\tmax-width: 100%;\\n\\tborder: 0;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n\\t-moz-border-radius: 0px;\\n\\t-webkit-border-radius: 0px;\\n\\tborder-radius: 0px;\\n}\\n\\n#amazingcarousel-container-1 {\\n\\tpadding: 32px 48px; \\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-list-container { \\n\\tpadding: 16px 0;\\n}\\n\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-item-container {\\n\\ttext-align: center;\\n\\tpadding: 0px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-item-container:hover {\\n\\topacity: 0.7;\\n\\tfilter: alpha(opacity=70);\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-prev {\\n\\tleft: 0%;\\n\\ttop: 50%;\\n\\tmargin-left: 0px;\\n\\tmargin-top: -30px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-next {\\n\\tright: 0%;\\n\\ttop: 50%;\\n\\tmargin-right: 0px;\\n\\tmargin-top: -30px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-nav {\\n\\tposition: absolute;\\n\\twidth: 100%;\\n\\ttop: 100%;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-bullet-wrapper {\\n\\tmargin: 4px auto;\\n}","arrowimagemode":"defined","navimagemode":"defined","hoveroverlayimagemode":"defined","showhoveroverlayalways":"false","usescreenquery":"false"}', '2015-04-28 16:53:08', '1'),
(2, 'My Carousel', '{"name":"My Carousel","slides":[{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_01.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_01-150x150.jpg","displaythumbnail":"false","title":"image_01","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02-150x150.jpg","displaythumbnail":"false","title":"image_02","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03-150x150.jpg","displaythumbnail":"false","title":"image_03","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04-150x150.jpg","displaythumbnail":"false","title":"image_04","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_02-150x150.jpg","displaythumbnail":"false","title":"image_02","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_04-150x150.jpg","displaythumbnail":"false","title":"image_04","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480},{"type":0,"image":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03.jpg","thumbnail":"http:\\/\\/localhost\\/esplanade6\\/wp-content\\/uploads\\/2015\\/04\\/image_03-150x150.jpg","displaythumbnail":"false","title":"image_03","description":"","weblink":"","linktarget":"","weblinklightbox":"false","lightbox":"true","lightboxsize":"false","lightboxwidth":640,"lightboxheight":480}],"skin":"fashion","customcss":"","dataoptions":"","lightboxresponsive":"true","lightboxshownavigation":"false","lightboxnogroup":"false","lightboxshowtitle":"true","lightboxshowdescription":"false","lightboxthumbwidth":90,"lightboxthumbheight":60,"lightboxthumbtopmargin":12,"lightboxthumbbottommargin":4,"lightboxbarheight":64,"lightboxtitlebottomcss":"{color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;}","lightboxdescriptionbottomcss":"{color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;}","width":290,"height":200,"autoplay":"false","random":"false","circular":"true","direction":"horizontal","responsive":"true","visibleitems":3,"arrowstyle":"mouseover","arrowimage":"arrows-42-60-0.png","arrowwidth":42,"arrowheight":60,"navstyle":"bullets","navimage":"bullet-16-16-1.png","navwidth":16,"navheight":16,"navspacing":8,"showhoveroverlay":"false","hoveroverlayimage":"hoveroverlay-64-64-4.png","screenquery":"{\\n\\t\\"tablet\\": {\\n\\t\\t\\"screenwidth\\": 900,\\n\\t\\t\\"visibleitems\\": 2\\n\\t},\\n\\t\\"mobile\\": {\\n\\t\\t\\"screenwidth\\": 600,\\n\\t\\t\\"visibleitems\\": 1\\n\\t}\\n}","skintemplate":"&lt;div class=\\"amazingcarousel-image\\"&gt;__IMAGE__&lt;\\/div&gt;","skincss":"@import url(https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans);\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image {\\t\\n\\tposition: relative;\\n\\tpadding: 0px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-image img {\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\tmax-width: 100%;\\n\\tborder: 0;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n\\t-moz-border-radius: 0px;\\n\\t-webkit-border-radius: 0px;\\n\\tborder-radius: 0px;\\n}\\n\\n#amazingcarousel-container-1 {\\n\\tpadding: 32px 48px; \\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-list-container { \\n\\tpadding: 16px 0;\\n}\\n\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-item-container {\\n\\ttext-align: center;\\n\\tpadding: 0px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-item-container:hover {\\n\\topacity: 0.7;\\n\\tfilter: alpha(opacity=70);\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-prev {\\n\\tleft: 0%;\\n\\ttop: 50%;\\n\\tmargin-left: 0px;\\n\\tmargin-top: -30px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-next {\\n\\tright: 0%;\\n\\ttop: 50%;\\n\\tmargin-right: 0px;\\n\\tmargin-top: -30px;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-nav {\\n\\tposition: absolute;\\n\\twidth: 100%;\\n\\ttop: 100%;\\n}\\n\\n#amazingcarousel-CAROUSELID .amazingcarousel-bullet-wrapper {\\n\\tmargin: 4px auto;\\n}","arrowimagemode":"defined","navimagemode":"defined","hoveroverlayimagemode":"defined","showhoveroverlayalways":"false","usescreenquery":"false"}', '2015-04-30 05:40:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
`meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
`order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
`location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE `wp_woocommerce_termmeta` (
`meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_create_map`
--
ALTER TABLE `wp_create_map`
 ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `wp_gallery_galleries`
--
ALTER TABLE `wp_gallery_galleries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gallery_galleriesslides`
--
ALTER TABLE `wp_gallery_galleriesslides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gallery_slides`
--
ALTER TABLE `wp_gallery_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_group_map`
--
ALTER TABLE `wp_group_map`
 ADD PRIMARY KEY (`group_map_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
 ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `wp_map_routes`
--
ALTER TABLE `wp_map_routes`
 ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`), ADD KEY `post_name` (`post_name`(191));

--
-- Indexes for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_smooth_slider`
--
ALTER TABLE `wp_smooth_slider`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_smooth_slider_meta`
--
ALTER TABLE `wp_smooth_slider_meta`
 ADD UNIQUE KEY `slider_id` (`slider_id`);

--
-- Indexes for table `wp_smooth_slider_postmeta`
--
ALTER TABLE `wp_smooth_slider_postmeta`
 ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `wp_taxonomymeta`
--
ALTER TABLE `wp_taxonomymeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `taxonomy_id` (`taxonomy_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `name` (`name`(191)), ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_thumbnail_slider`
--
ALTER TABLE `wp_thumbnail_slider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wc_booking_relationships`
--
ALTER TABLE `wp_wc_booking_relationships`
 ADD PRIMARY KEY (`ID`), ADD KEY `product_id` (`product_id`), ADD KEY `resource_id` (`resource_id`);

--
-- Indexes for table `wp_wonderplugin_carousel`
--
ALTER TABLE `wp_wonderplugin_carousel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
 ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
 ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
 ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
 ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
 ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(191));

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_create_map`
--
ALTER TABLE `wp_create_map`
MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_gallery_galleries`
--
ALTER TABLE `wp_gallery_galleries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_gallery_galleriesslides`
--
ALTER TABLE `wp_gallery_galleriesslides`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_gallery_slides`
--
ALTER TABLE `wp_gallery_slides`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_group_map`
--
ALTER TABLE `wp_group_map`
MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_map_routes`
--
ALTER TABLE `wp_map_routes`
MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3194;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=591;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_smooth_slider`
--
ALTER TABLE `wp_smooth_slider`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_smooth_slider_meta`
--
ALTER TABLE `wp_smooth_slider_meta`
MODIFY `slider_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_taxonomymeta`
--
ALTER TABLE `wp_taxonomymeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_thumbnail_slider`
--
ALTER TABLE `wp_thumbnail_slider`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_booking_relationships`
--
ALTER TABLE `wp_wc_booking_relationships`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wonderplugin_carousel`
--
ALTER TABLE `wp_wonderplugin_carousel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
