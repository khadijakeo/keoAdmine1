-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2020 at 04:53 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `created_at`, `updated_at`, `name`, `folder_id`) VALUES
(1, NULL, NULL, 'root', NULL),
(2, NULL, NULL, 'documents', 1),
(3, NULL, NULL, 'graphics', 1),
(4, NULL, NULL, 'other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menulist`
--

CREATE TABLE `menulist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menulist`
--

INSERT INTO `menulist` (`id`, `name`) VALUES
(1, 'sidebar menu'),
(2, 'top menu');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `href`, `icon`, `slug`, `parent_id`, `menu_id`, `sequence`) VALUES
(1, 'Dashboard', '/', 'cil-speedometer', 'link', NULL, 1, 1),
(2, 'Settings', NULL, 'cil-calculator', 'dropdown', NULL, 1, 2),
(3, 'Notes', '/notes', NULL, 'link', 2, 1, 3),
(4, 'Users', '/users', NULL, 'link', 2, 1, 4),
(5, 'Edit menu', '/menu/menu', NULL, 'link', 2, 1, 5),
(6, 'Edit menu elements', '/menu/element', NULL, 'link', 2, 1, 6),
(7, 'Edit roles', '/roles', NULL, 'link', 2, 1, 7),
(8, 'Media', '/media', NULL, 'link', 2, 1, 8),
(9, 'Login', '/login', 'cil-account-logout', 'link', NULL, 1, 9),
(10, 'Register', '/register', 'cil-account-logout', 'link', NULL, 1, 10),
(11, 'Theme', NULL, NULL, 'title', NULL, 1, 11),
(12, 'Partners', '/partners', 'cil-drop1', 'link', NULL, 1, 12),
(13, 'Typography', '/typography', 'cil-pencil', 'link', NULL, 1, 13),
(14, 'Base', NULL, 'cil-puzzle', 'dropdown', NULL, 1, 14),
(15, 'Breadcrumb', '/base/breadcrumb', NULL, 'link', 14, 1, 15),
(16, 'Cards', '/base/cards', NULL, 'link', 14, 1, 16),
(17, 'Carousel', '/base/carousel', NULL, 'link', 14, 1, 17),
(18, 'Collapse', '/base/collapse', NULL, 'link', 14, 1, 18),
(19, 'Forms', '/base/forms', NULL, 'link', 14, 1, 19),
(20, 'Jumbotron', '/base/jumbotron', NULL, 'link', 14, 1, 20),
(21, 'List group', '/base/list-group', NULL, 'link', 14, 1, 21),
(22, 'Navs', '/base/navs', NULL, 'link', 14, 1, 22),
(23, 'Pagination', '/base/pagination', NULL, 'link', 14, 1, 23),
(24, 'Popovers', '/base/popovers', NULL, 'link', 14, 1, 24),
(25, 'Progress', '/base/progress', NULL, 'link', 14, 1, 25),
(26, 'Scrollspy', '/base/scrollspy', NULL, 'link', 14, 1, 26),
(27, 'Switches', '/base/switches', NULL, 'link', 14, 1, 27),
(28, 'Tables', '/base/tables', NULL, 'link', 14, 1, 28),
(29, 'Tabs', '/base/tabs', NULL, 'link', 14, 1, 29),
(30, 'Tooltips', '/base/tooltips', NULL, 'link', 14, 1, 30),
(31, 'Buttons', NULL, 'cil-cursor', 'dropdown', NULL, 1, 31),
(32, 'Buttons', '/buttons/buttons', NULL, 'link', 31, 1, 32),
(33, 'Buttons Group', '/buttons/button-group', NULL, 'link', 31, 1, 33),
(34, 'Dropdowns', '/buttons/dropdowns', NULL, 'link', 31, 1, 34),
(35, 'Brand Buttons', '/buttons/brand-buttons', NULL, 'link', 31, 1, 35),
(36, 'Charts', '/charts', 'cil-chart-pie', 'link', NULL, 1, 36),
(37, 'Icons', NULL, 'cil-star', 'dropdown', NULL, 1, 37),
(38, 'CoreUI Icons', '/icon/coreui-icons', NULL, 'link', 37, 1, 38),
(39, 'Flags', '/icon/flags', NULL, 'link', 37, 1, 39),
(40, 'Brands', '/icon/brands', NULL, 'link', 37, 1, 40),
(41, 'Notifications', NULL, 'cil-bell', 'dropdown', NULL, 1, 41),
(42, 'Alerts', '/notifications/alerts', NULL, 'link', 41, 1, 42),
(43, 'Badge', '/notifications/badge', NULL, 'link', 41, 1, 43),
(44, 'Modals', '/notifications/modals', NULL, 'link', 41, 1, 44),
(45, 'Widgets', '/widgets', 'cil-calculator', 'link', NULL, 1, 45),
(46, 'Extras', NULL, NULL, 'title', NULL, 1, 46),
(47, 'Pages', NULL, 'cil-star', 'dropdown', NULL, 1, 47),
(48, 'Login', '/login', NULL, 'link', 47, 1, 48),
(49, 'Register', '/register', NULL, 'link', 47, 1, 49),
(50, 'Error 404', '/404', NULL, 'link', 47, 1, 50),
(51, 'Error 500', '/500', NULL, 'link', 47, 1, 51),
(52, 'Download CoreUI', 'https://coreui.io', 'cil-cloud-download', 'link', NULL, 1, 52),
(53, 'Try CoreUI PRO', 'https://coreui.io/pro/', 'cil-layers', 'link', NULL, 1, 53),
(54, 'Pages', NULL, '', 'dropdown', NULL, 2, 54),
(55, 'Dashboard', '/', NULL, 'link', 54, 2, 55),
(56, 'Notes', '/notes', NULL, 'link', 54, 2, 56),
(57, 'Users', '/users', NULL, 'link', 54, 2, 57),
(58, 'Settings', NULL, '', 'dropdown', NULL, 2, 58),
(59, 'Edit menu', '/menu/menu', NULL, 'link', 58, 2, 59),
(60, 'Edit menu elements', '/menu/element', NULL, 'link', 58, 2, 60),
(61, 'Edit roles', '/roles', NULL, 'link', 58, 2, 61),
(62, 'produits', '/produits', NULL, 'link', NULL, 1, 62);

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`id`, `role_name`, `menus_id`) VALUES
(1, 'guest', 1),
(2, 'user', 1),
(3, 'admin', 1),
(4, 'admin', 2),
(5, 'admin', 3),
(6, 'admin', 4),
(7, 'admin', 5),
(8, 'admin', 6),
(9, 'admin', 7),
(10, 'admin', 8),
(11, 'guest', 9),
(12, 'guest', 10),
(13, 'user', 11),
(14, 'admin', 11),
(15, 'user', 12),
(16, 'admin', 12),
(17, 'user', 13),
(18, 'admin', 13),
(19, 'user', 14),
(20, 'admin', 14),
(21, 'user', 15),
(22, 'admin', 15),
(23, 'user', 16),
(24, 'admin', 16),
(25, 'user', 17),
(26, 'admin', 17),
(27, 'user', 18),
(28, 'admin', 18),
(29, 'user', 19),
(30, 'admin', 19),
(31, 'user', 20),
(32, 'admin', 20),
(33, 'user', 21),
(34, 'admin', 21),
(35, 'user', 22),
(36, 'admin', 22),
(37, 'user', 23),
(38, 'admin', 23),
(39, 'user', 24),
(40, 'admin', 24),
(41, 'user', 25),
(42, 'admin', 25),
(43, 'user', 26),
(44, 'admin', 26),
(45, 'user', 27),
(46, 'admin', 27),
(47, 'user', 28),
(48, 'admin', 28),
(49, 'user', 29),
(50, 'admin', 29),
(51, 'user', 30),
(52, 'admin', 30),
(53, 'user', 31),
(54, 'admin', 31),
(55, 'user', 32),
(56, 'admin', 32),
(57, 'user', 33),
(58, 'admin', 33),
(59, 'user', 34),
(60, 'admin', 34),
(61, 'user', 35),
(62, 'admin', 35),
(63, 'user', 36),
(64, 'admin', 36),
(65, 'user', 37),
(66, 'admin', 37),
(67, 'user', 38),
(68, 'admin', 38),
(69, 'user', 39),
(70, 'admin', 39),
(71, 'user', 40),
(72, 'admin', 40),
(73, 'user', 41),
(74, 'admin', 41),
(75, 'user', 42),
(76, 'admin', 42),
(77, 'user', 43),
(78, 'admin', 43),
(79, 'user', 44),
(80, 'admin', 44),
(81, 'user', 45),
(82, 'admin', 45),
(83, 'user', 46),
(84, 'admin', 46),
(85, 'user', 47),
(86, 'admin', 47),
(87, 'user', 48),
(88, 'admin', 48),
(89, 'user', 49),
(90, 'admin', 49),
(91, 'user', 50),
(92, 'admin', 50),
(93, 'user', 51),
(94, 'admin', 51),
(95, 'guest', 52),
(96, 'user', 52),
(97, 'admin', 52),
(98, 'guest', 53),
(99, 'user', 53),
(100, 'admin', 53),
(101, 'guest', 54),
(102, 'user', 54),
(103, 'admin', 54),
(104, 'guest', 55),
(105, 'user', 55),
(106, 'admin', 55),
(107, 'user', 56),
(108, 'admin', 56),
(109, 'admin', 57),
(110, 'admin', 58),
(111, 'admin', 59),
(112, 'admin', 60),
(113, 'admin', 61),
(114, 'admin', 62),
(115, 'Users', 63);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_11_085455_create_notes_table', 1),
(5, '2019_10_12_115248_create_status_table', 1),
(6, '2019_11_08_102827_create_menus_table', 1),
(7, '2019_11_13_092213_create_menurole_table', 1),
(8, '2019_12_10_092113_create_permission_tables', 1),
(9, '2019_12_11_091036_create_menulist_table', 1),
(10, '2019_12_18_092518_create_role_hierarchy_table', 1),
(11, '2020_01_07_093259_create_folder_table', 1),
(12, '2020_01_08_184500_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 4),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `note_type`, `applies_to_date`, `users_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Placeat illum consequatur fugiat.', 'Tenetur corrupti sed voluptatem veniam perferendis eligendi repellat. Tempora cumque sint eaque itaque et accusantium eos rerum. Minima perferendis quia quo impedit reprehenderit alias non. Nihil quis aut pariatur rerum sit modi repellendus.', 'necessitatibus', '1988-01-12', 8, 1, NULL, NULL),
(2, 'Pariatur accusantium omnis.', 'Doloremque ut rerum tenetur eos et. Beatae dolores dolorem aperiam commodi non. Deleniti sunt molestiae eveniet qui reiciendis quis ratione. Aliquam fuga hic minima sed consectetur exercitationem.', 'officia qui', '1993-09-07', 4, 2, NULL, NULL),
(3, 'Labore est odit molestiae sint adipisci.', 'Velit nihil aut natus nobis facilis odit. Est repellendus id est dolor est ratione quaerat ut. Velit omnis at vitae facere autem nihil cum. Saepe nulla officia nostrum numquam quia.', 'sed', '1982-10-22', 4, 1, NULL, NULL),
(4, 'Qui dolor placeat maxime molestiae.', 'Consequatur rerum ut animi. Voluptatem adipisci dolor aut et in culpa minima. Praesentium commodi et molestias minima doloribus officiis ipsam. Maxime quia aliquid qui blanditiis.', 'et', '1978-03-11', 3, 1, NULL, NULL),
(5, 'Eligendi quia pariatur veritatis.', 'Et ea quod veniam magni eligendi. Consequatur veritatis delectus porro veritatis. Totam possimus veniam deleniti voluptatibus totam. Quisquam et provident occaecati accusantium.', 'vel', '1982-10-14', 6, 2, NULL, NULL),
(6, 'Qui odio aut quia voluptas.', 'Enim modi quasi dolor ipsa earum beatae consequatur animi. Necessitatibus iste ad incidunt et nulla. Minima quae natus dicta ea architecto illo.', 'adipisci', '2007-10-25', 3, 4, NULL, NULL),
(7, 'Sint consequatur maiores.', 'Vel autem est et excepturi debitis. Odio id amet dolorem dolor voluptatem mollitia a. Et omnis enim est tempora dolores dignissimos ipsum enim.', 'non', '1974-12-04', 4, 1, NULL, NULL),
(8, 'Blanditiis necessitatibus omnis vero.', 'Esse earum consectetur ea sit iusto. Quos iure qui magnam fugit quia distinctio.', 'delectus reprehenderit', '2000-06-08', 7, 1, NULL, NULL),
(9, 'Earum natus dicta ullam nemo.', 'Dolores id ad esse provident ipsa ipsum omnis. Facilis nostrum suscipit nisi ut nulla aut aspernatur est. Quis aut tempora autem fugiat at nam. Aut et et quia quibusdam.', 'voluptas', '2011-05-12', 7, 2, NULL, NULL),
(10, 'Non sunt quo a commodi.', 'Quasi numquam atque maiores optio laboriosam. Porro incidunt sint est qui laudantium accusamus porro. Et molestiae aliquam nobis delectus.', 'inventore', '1987-07-11', 8, 3, NULL, NULL),
(11, 'Deleniti repudiandae pariatur quae.', 'Excepturi dolores autem veritatis laudantium rerum. Porro odit et nobis fugiat et quo rerum. Perferendis architecto hic ipsum est qui voluptas. Ipsam velit vero corporis vitae.', 'et enim', '2008-09-14', 6, 3, NULL, NULL),
(12, 'Ut fugiat hic.', 'Quidem sint accusantium harum nam. Rerum aut fuga culpa. In illo ipsa et repellendus voluptas cum dolorum. Totam tenetur repellat praesentium.', 'porro', '1997-01-12', 4, 3, NULL, NULL),
(13, 'Voluptate quis quae voluptatem.', 'Ipsum nihil aut voluptatem. Veniam alias corporis corporis distinctio enim autem. Sit quam vero corrupti similique rerum voluptate.', 'voluptatem', '1986-02-19', 5, 1, NULL, NULL),
(14, 'Magni illo ullam ad.', 'Accusantium ipsam autem et inventore dolorem quidem qui aut. Dolore facilis nulla qui minus enim. Eum consectetur unde dolor repudiandae ducimus voluptatem porro voluptas.', 'ullam', '2014-09-14', 9, 4, NULL, NULL),
(15, 'Cupiditate voluptatum a hic neque.', 'Hic rerum velit tenetur repellendus recusandae iusto. Rerum reprehenderit eligendi itaque et vero tenetur. Et labore eum qui soluta doloribus.', 'dolores non', '2018-11-11', 8, 2, NULL, NULL),
(16, 'Nostrum omnis nulla repellat.', 'Consequatur sint tenetur molestiae dignissimos quibusdam. Totam ea voluptatem laudantium a porro. Laboriosam voluptatem quod debitis similique voluptatem vitae.', 'officia minus', '1973-11-08', 8, 3, NULL, NULL),
(17, 'Vero quis magni adipisci qui.', 'Officia sed dolore iusto sapiente voluptatem animi. Atque sunt qui ut provident saepe. Ullam suscipit id dolorem excepturi inventore. Numquam nam officia voluptatem dicta reprehenderit est velit. Commodi ut eum praesentium unde deleniti animi vel sint.', 'facere est', '2006-06-01', 10, 4, NULL, NULL),
(18, 'Labore fugiat corrupti soluta.', 'Beatae soluta doloribus dolor amet nostrum explicabo. Id eos natus similique est. Omnis quas voluptatem aut beatae.', 'commodi velit', '2019-06-03', 5, 3, NULL, NULL),
(19, 'Facilis sed minima sunt.', 'Magnam consequatur magnam rerum quidem. Et et nulla eum sed a. Voluptas occaecati nobis aut quis nam a.', 'voluptatum et', '2004-01-15', 3, 2, NULL, NULL),
(20, 'Qui autem fuga eius.', 'Sunt dolores ut modi ut officiis quia voluptatem excepturi. Repellat quia repudiandae nobis eum. Quia similique aperiam rerum labore omnis.', 'molestiae', '2006-12-17', 6, 4, NULL, NULL),
(21, 'Illo dolor est culpa.', 'Rerum optio porro enim maiores quia voluptatibus natus sunt. Cumque itaque repellat voluptas sit deleniti est. Totam explicabo sed nam quia et corrupti omnis aut.', 'nesciunt', '1972-01-30', 11, 2, NULL, NULL),
(22, 'Eaque excepturi est ipsam similique dolorem.', 'In et nihil minima fugiat. Quas labore tenetur velit perferendis eum aliquam nesciunt. Iusto aliquam est sed fuga ea aut placeat.', 'consequatur occaecati', '1993-04-30', 5, 1, NULL, NULL),
(23, 'At facere aliquam eaque reprehenderit.', 'Et id ipsam asperiores fuga nam debitis. Eos odio perspiciatis deserunt culpa qui ea. Non occaecati sed voluptatem distinctio ullam consequatur consequuntur.', 'pariatur iure', '1974-10-27', 9, 3, NULL, NULL),
(24, 'Fuga adipisci consequatur consectetur.', 'Ipsa et ut et sit consequuntur non dolorem. Sint distinctio vel laudantium. Consequatur atque ut dolorem et. Minima velit dolor vel tenetur sint. Laudantium necessitatibus eos omnis dolores delectus eos.', 'aut aspernatur', '2011-12-27', 5, 1, NULL, NULL),
(25, 'Reiciendis et repudiandae.', 'Veritatis et quasi et voluptas. Earum hic explicabo asperiores saepe quam. Excepturi dolorem exercitationem dolorem consequatur earum. Impedit sint ducimus quidem perferendis ex.', 'animi', '2006-07-22', 3, 4, NULL, NULL),
(26, 'Odio excepturi commodi minus voluptas.', 'Repellat sed accusantium est libero tempore velit nesciunt. Praesentium ut ipsa commodi magnam itaque et. Qui consequuntur qui molestias. Qui blanditiis quia qui impedit unde officiis placeat. Nihil odio odit officia voluptatum consequuntur natus.', 'quia', '1971-11-22', 6, 1, NULL, NULL),
(27, 'Voluptate ex quo vel rem nobis.', 'Saepe eum nihil ipsum quaerat beatae aspernatur quia minus. Impedit possimus sit delectus perspiciatis quam non.', 'est quia', '1981-07-30', 8, 4, NULL, NULL),
(28, 'Iusto eos explicabo similique.', 'Consequatur nihil aspernatur ducimus odio. Nesciunt aut aperiam a et. Aut et sed placeat est iste ipsa architecto nihil. Perspiciatis autem quasi minus voluptatem quae est ut.', 'ut sit', '2011-11-20', 4, 1, NULL, NULL),
(29, 'Magni quia enim sed rerum.', 'Aut dolores pariatur cupiditate iste perferendis et. Est perspiciatis et minima sed ullam. A et exercitationem totam voluptatem tenetur.', 'sunt', '1981-04-30', 9, 3, NULL, NULL),
(30, 'Alias ipsum sit quia.', 'Voluptatem quidem non vero et eos non. Ipsam rerum et molestias. Rerum nobis odio quia omnis consequatur commodi et.', 'ex hic', '2011-12-09', 4, 2, NULL, NULL),
(31, 'Nostrum iure explicabo.', 'Autem earum consequatur voluptatum laborum molestias. Velit sed voluptatem commodi veritatis in. Sapiente ea natus sit veniam enim nihil eum. Ad ut eos sequi deserunt ullam unde totam adipisci.', 'quisquam perferendis', '1972-10-21', 9, 2, NULL, NULL),
(32, 'At voluptatum aut voluptate.', 'Velit sit non totam numquam impedit. Eaque deserunt voluptatem sapiente eveniet harum culpa. Consequuntur dignissimos molestiae non voluptatem. Consequuntur quia eum dolore perspiciatis.', 'aut', '1989-02-18', 11, 3, NULL, NULL),
(33, 'Vitae dolorum sit fugiat aut sint.', 'Ipsam quia autem enim perferendis qui perspiciatis. Omnis explicabo aperiam qui sit et quia recusandae. Dicta ea sed asperiores nesciunt non. Nobis omnis vero dolorum laboriosam a est et. Aut est excepturi quo similique magnam consequatur molestiae.', 'vel illo', '1991-07-18', 9, 2, NULL, NULL),
(34, 'Ut culpa aspernatur dolore eum distinctio.', 'Soluta ut sed possimus. Enim vel impedit nihil incidunt ipsam neque. Fuga porro autem ea velit. Et facere ut magni asperiores deleniti totam beatae.', 'hic rerum', '1992-07-12', 2, 3, NULL, NULL),
(35, 'Dolorem sit et commodi sequi velit.', 'Ratione fugit voluptate et excepturi pariatur id excepturi. Qui voluptatem enim ut hic fuga hic accusantium. Praesentium eos quisquam accusantium tenetur.', 'est', '1999-06-16', 3, 4, NULL, NULL),
(36, 'Et minima quod quod deleniti.', 'Accusantium quia nihil odio eos at. Delectus commodi nihil necessitatibus incidunt sunt.', 'facilis impedit', '2004-09-15', 11, 4, NULL, NULL),
(37, 'Dolore quia beatae quia repellat ex.', 'Laboriosam eum et maiores recusandae. Facere incidunt ut animi. Qui id est sed explicabo.', 'laborum', '2002-02-22', 4, 3, NULL, NULL),
(38, 'Fugit exercitationem cupiditate et ducimus.', 'Aperiam ut eligendi aliquam quos fuga sapiente sed. Suscipit impedit sit voluptate accusantium et laborum et. Dolorem quis voluptatem velit.', 'est vero', '1986-03-16', 8, 4, NULL, NULL),
(39, 'Ea debitis dolore consequuntur.', 'Dignissimos dolorem aut in non. Et at aut est vitae. Possimus doloremque voluptatum et ducimus voluptate molestiae.', 'dolores', '1987-02-04', 7, 3, NULL, NULL),
(40, 'Nisi est quis omnis.', 'Ut rem nihil libero fugit aut. Nobis aut ut et itaque in cupiditate. Ut dolores et in. Earum unde in tenetur fugit recusandae.', 'et', '2014-04-26', 2, 1, NULL, NULL),
(41, 'Et aut omnis.', 'Occaecati distinctio officiis ad doloribus et. Voluptas voluptatem error autem reiciendis reiciendis. Aut suscipit quasi repellat nihil.', 'et possimus', '1982-10-14', 2, 3, NULL, NULL),
(42, 'Quisquam et itaque qui.', 'Tempora non voluptatem sed dolores aut et accusamus. Harum qui quaerat quo et reprehenderit. Occaecati cum rerum voluptatem similique quia quo consequatur. Hic earum recusandae aut omnis dicta mollitia.', 'doloremque sit', '1985-10-24', 8, 3, NULL, NULL),
(43, 'Est dolorem qui qui.', 'Et in ut ipsa. Maxime nam sint maiores rerum ut consequatur. Non dolor consequuntur praesentium.', 'dignissimos at', '2009-05-28', 5, 1, NULL, NULL),
(44, 'Nostrum non esse iusto.', 'Quos quia voluptas ad sint at inventore unde. Cumque ipsa assumenda qui quo. Nihil ut aliquid consequatur ullam ullam eveniet et nihil. Praesentium esse sapiente et perferendis perspiciatis.', 'eius', '2016-02-07', 7, 3, NULL, NULL),
(45, 'Et suscipit ut.', 'Sit et ut laborum quidem odio fuga. Consectetur aperiam dolorem quia. Officiis at non earum est voluptate repellendus.', 'autem', '2019-11-23', 5, 3, NULL, NULL),
(46, 'Accusantium autem nam error impedit.', 'Quasi ut debitis earum ipsam eum nobis. Ad voluptas molestias incidunt non delectus ea hic.', 'vitae', '1975-06-14', 3, 4, NULL, NULL),
(47, 'Maxime veniam tempore.', 'Ut dolore doloribus sunt quasi ut et dolorem. Adipisci tempora sit eligendi. Est molestiae consequatur aspernatur est aut.', 'corrupti', '1974-12-08', 2, 4, NULL, NULL),
(48, 'Quasi libero ratione aspernatur nihil.', 'Dolores nihil consectetur sint et quam quasi officiis doloribus. Eos voluptates sint incidunt ullam temporibus repellat illo. Enim minus voluptas rerum alias magnam. Quia maiores reprehenderit ipsa quo nesciunt doloribus adipisci. Molestias consequuntur nobis maxime impedit earum hic labore.', 'velit', '1975-03-08', 7, 1, NULL, NULL),
(49, 'Nulla similique aut reprehenderit.', 'Inventore consequatur dolorum omnis. Voluptatem repudiandae eligendi eos sed pariatur recusandae. Voluptatibus harum deleniti cupiditate inventore id.', 'earum', '1995-06-10', 2, 1, NULL, NULL),
(50, 'Ipsum sed aliquid libero delectus ex.', 'Odio tempore blanditiis saepe vel. Voluptatum quas commodi eaque suscipit est. Et accusamus commodi eaque ipsam libero soluta placeat.', 'est', '2018-05-11', 9, 3, NULL, NULL),
(51, 'Reprehenderit possimus quisquam suscipit ut asperiores.', 'In illo rerum itaque illo voluptas cupiditate laborum. Quia dignissimos velit impedit ut cupiditate vitae sapiente. Autem doloribus sit dolores quia.', 'harum', '1977-01-19', 7, 4, NULL, NULL),
(52, 'Et praesentium quia consequatur.', 'Ipsum doloremque qui unde iusto animi facilis. Ab et dolores et omnis voluptas ab ipsam. Fugiat delectus sunt voluptas voluptates.', 'tempore', '1986-02-06', 7, 2, NULL, NULL),
(53, 'Quia ut ab repudiandae.', 'Aut id eos ea ratione. Et cum dignissimos velit ipsam rem dolorem et. Hic molestias molestiae consequatur.', 'et', '1993-02-16', 5, 1, NULL, NULL),
(54, 'Est accusamus molestiae dolor.', 'Dignissimos est delectus nostrum odio at molestiae. Corporis sit praesentium aut.', 'voluptatem', '1983-05-26', 9, 4, NULL, NULL),
(55, 'Qui quidem autem eum aut eaque.', 'Quos enim voluptas sit autem ullam explicabo et. Voluptatum nam sit autem laboriosam non itaque. Expedita in unde cumque harum. Quos quae est voluptas eos porro.', 'aperiam iusto', '1983-02-22', 8, 2, NULL, NULL),
(56, 'Molestiae placeat vel praesentium assumenda quia.', 'Consequatur quis aut repellat neque ullam suscipit ipsam. Aut ullam vel assumenda error. Odit et animi sunt et illum illum sed.', 'debitis officia', '1986-02-13', 11, 1, NULL, NULL),
(57, 'Corporis a ullam.', 'Ut dolorum ut nostrum corrupti pariatur quaerat eius iusto. Mollitia qui et libero. Vel sed dolor soluta qui architecto.', 'ut laudantium', '1983-07-21', 3, 3, NULL, NULL),
(58, 'Voluptatem et sed non unde.', 'Vero vitae animi facilis qui minima quibusdam aut. Quae sapiente non tenetur minima repellat. Voluptatem sequi qui omnis ullam.', 'quos adipisci', '1972-05-29', 4, 4, NULL, NULL),
(59, 'Est quam rem illum similique.', 'Atque et nihil accusantium ullam quam libero. Sed laboriosam eaque consequatur tempora velit aut. Reprehenderit eligendi sunt necessitatibus voluptates animi. Non dicta similique harum quasi ut sed.', 'porro nam', '1998-02-28', 5, 3, NULL, NULL),
(60, 'Optio et distinctio magni.', 'Cupiditate quibusdam dolorem consequuntur a quaerat modi. Dignissimos est id ducimus voluptate voluptatem quod. Perferendis doloremque error aut iusto dolorem non ea.', 'cumque', '2018-12-17', 10, 2, NULL, NULL),
(61, 'Et at dolore.', 'Eos pariatur veniam qui et explicabo. Est ut voluptatem quis cumque laborum sit expedita voluptatum. Aspernatur illo sit deleniti accusantium quaerat aut.', 'deleniti molestiae', '1981-05-09', 8, 2, NULL, NULL),
(62, 'Sit doloribus ipsam dolorem numquam earum.', 'Sed fuga porro est eaque officiis sunt sed. Aliquid deserunt et error iusto rerum. Cupiditate inventore minus tempora. Facilis dolorem maiores aspernatur quo officia debitis et.', 'est', '1972-02-23', 5, 1, NULL, NULL),
(63, 'Qui et eum repellendus.', 'Odio est ea sit minima. Est dolorum et quia perferendis qui atque autem. Tempora dignissimos expedita temporibus soluta ex dolores. Sed possimus quibusdam itaque reiciendis aut.', 'nisi animi', '2008-09-21', 2, 4, NULL, NULL),
(64, 'Et magni quam expedita ducimus.', 'Ipsum assumenda illo consequatur. Quia quo repudiandae iusto quo ad quo amet. Iure iusto reiciendis recusandae praesentium eveniet amet dolorem esse.', 'et', '1999-03-24', 8, 3, NULL, NULL),
(65, 'Repellendus illum ipsum.', 'Rerum autem omnis reprehenderit hic dicta quidem. Molestiae qui dolore praesentium.', 'molestiae', '1974-02-12', 4, 3, NULL, NULL),
(66, 'Molestiae quis blanditiis a aut.', 'Corrupti non qui et rerum dolorum. Quo cupiditate laborum nihil impedit illum rerum est consequatur. Et aliquam ut ut labore libero similique.', 'maiores aut', '1996-04-28', 2, 2, NULL, NULL),
(67, 'Non asperiores rerum et.', 'Omnis repellat tempore eaque nihil tenetur dolores. Rerum quasi sint odit eum est repellendus. Illo omnis dolores sit natus ut eligendi. Suscipit ea aspernatur molestias.', 'repellat non', '1977-07-12', 5, 4, NULL, NULL),
(68, 'Dignissimos nihil eos molestiae eos aut.', 'Facere et et sed est beatae. Et quos porro atque sit magnam. Sapiente nisi autem sint quibusdam reprehenderit. Aut soluta optio ullam aliquid aperiam accusamus.', 'molestias et', '2006-03-04', 2, 1, NULL, NULL),
(69, 'Quisquam dolorem saepe vero.', 'Sit sed sunt aliquam. Distinctio veritatis et eius voluptatem et numquam corporis. Eius harum perferendis porro cum adipisci tempora.', 'velit voluptatem', '1983-06-19', 9, 1, NULL, NULL),
(70, 'Quasi dolorem temporibus.', 'Tempora optio ab magnam. Et ad numquam reprehenderit et itaque et rerum. Tempora rerum optio vitae.', 'illum repudiandae', '1970-04-01', 2, 3, NULL, NULL),
(71, 'Ut perferendis cumque earum exercitationem.', 'Eos maiores sequi esse distinctio sit velit. Iusto ut soluta nisi voluptate et voluptatem voluptatem tempore.', 'voluptatem minus', '1970-09-01', 6, 2, NULL, NULL),
(72, 'Minus modi inventore quae architecto aut.', 'Et nesciunt ut et expedita architecto. Vitae maiores aut itaque et. Sunt nisi ad quia iusto repellendus quia dignissimos.', 'accusantium', '1977-05-03', 3, 1, NULL, NULL),
(73, 'Eos laudantium omnis consequatur.', 'Ut similique placeat expedita praesentium. Voluptatem voluptate id incidunt praesentium ut nesciunt esse voluptas. Omnis quia qui reiciendis rem fuga repudiandae.', 'sit', '2004-01-11', 6, 4, NULL, NULL),
(74, 'Quasi repellendus non omnis.', 'Blanditiis et possimus quod iure. Qui qui minima rerum consequatur sunt. Blanditiis nihil quo culpa aut.', 'maxime', '2009-12-09', 10, 4, NULL, NULL),
(75, 'Voluptas doloribus facilis sunt.', 'Quidem et pariatur quos voluptate officia provident rerum. Eum esse aut sint nobis dolore.', 'odit', '1971-07-10', 8, 2, NULL, NULL),
(76, 'Libero voluptatum saepe aliquid officiis.', 'Dignissimos dolor rem aut est nam quae omnis ut. Et voluptate tenetur velit accusantium molestiae magni. Cupiditate quo possimus porro.', 'quo', '1985-07-18', 8, 4, NULL, NULL),
(77, 'Placeat et animi sed dolor.', 'Eum dolorum accusantium nihil eligendi harum iure voluptate rerum. Temporibus omnis fugit molestiae ut. Voluptas enim eos id velit fugiat ratione et.', 'voluptatem', '1974-09-05', 7, 4, NULL, NULL),
(78, 'Dolorum temporibus tenetur vel magnam enim.', 'Ea doloremque ut non est impedit molestiae. Tenetur autem deserunt autem consequuntur quia rem ut. Dolorem incidunt et sed consectetur. Rerum ipsa ratione ut sunt et voluptatem.', 'vitae', '1973-01-07', 11, 3, NULL, NULL),
(79, 'Eum hic nobis et consequuntur sunt.', 'Sed alias nostrum quia neque vel natus quasi. Autem quia aut ipsum voluptatem illum iste nam.', 'facilis voluptas', '1970-12-02', 4, 4, NULL, NULL),
(80, 'Architecto voluptatum sit.', 'Eos at voluptas doloremque blanditiis nobis ducimus. Soluta fuga corrupti aliquam. Hic at nihil quis deleniti aut non doloribus dignissimos.', 'minus', '1989-06-01', 7, 4, NULL, NULL),
(81, 'Itaque animi pariatur accusantium.', 'Et enim quo autem fugiat. Eos nam pariatur consequatur sint. Commodi illo tempore earum est. Ipsam est aut tenetur.', 'eligendi repellendus', '1990-07-24', 11, 3, NULL, NULL),
(82, 'Laborum aspernatur mollitia.', 'Et maxime aliquid voluptatem et. Quo ea praesentium minus corporis. Omnis molestiae quia omnis dolorem eum harum. Ab aut corporis ducimus quibusdam commodi labore nihil. Architecto recusandae aspernatur non.', 'iste et', '1994-05-12', 11, 2, NULL, NULL),
(83, 'Quas voluptatem rerum corrupti.', 'Voluptas vel sit et magnam ut. Quo non alias dolores corporis at.', 'eum repudiandae', '2013-05-26', 11, 1, NULL, NULL),
(84, 'Autem doloremque repellendus qui incidunt.', 'Ut unde omnis recusandae ea. Sed nihil rem fugiat dolore cumque. Qui doloremque ex nihil ducimus labore provident ratione.', 'harum enim', '2001-02-12', 4, 4, NULL, NULL),
(85, 'Ut et sed rerum ea.', 'Fugiat sequi et sint ut porro dolor. Aliquam sed natus quos nulla debitis. Sed dolor et ut voluptatum odio mollitia cumque. Quasi quidem iusto illum qui reiciendis voluptates quos saepe.', 'non', '1998-11-19', 6, 3, NULL, NULL),
(86, 'Nostrum nisi et ut.', 'Voluptas optio animi non eaque asperiores autem. Cum pariatur quis iste ut quo. Ratione quae qui ea eos quam deserunt et.', 'ex', '1995-03-27', 5, 4, NULL, NULL),
(87, 'Consequatur veniam reiciendis nulla laborum.', 'Animi omnis maiores ad sit accusantium vitae et saepe. Voluptatibus consectetur et optio perferendis ullam. Magni qui praesentium consequatur sint maiores quidem perspiciatis excepturi. Occaecati rem sit sapiente.', 'eos', '2002-04-16', 2, 2, NULL, NULL),
(88, 'Eveniet sint sed ex voluptates.', 'Voluptatem dolores cumque aut temporibus. Aperiam maxime voluptate temporibus doloremque. Enim eos ut commodi occaecati unde vitae porro. Quasi vel culpa modi molestiae enim deleniti placeat. Modi explicabo accusantium quo aut sed nulla est consequatur.', 'quis', '2009-09-26', 7, 1, NULL, NULL),
(89, 'Eos veniam perspiciatis alias.', 'Culpa est placeat exercitationem. Neque est deserunt nostrum vitae et dolor id. Dignissimos voluptas officiis ea fugiat quo. Error doloremque corrupti dolorem odit neque provident dolorem.', 'reiciendis', '2014-02-12', 9, 4, NULL, NULL),
(90, 'Consectetur aut voluptas sequi quibusdam sunt.', 'Impedit dignissimos nesciunt itaque expedita quasi odit in et. Commodi illum vitae totam voluptatem. Cumque hic perferendis non neque qui nemo perspiciatis. Corporis sit necessitatibus hic voluptatem quaerat sunt. Consequuntur aspernatur a veniam ad aliquam accusantium.', 'quia ad', '1977-09-21', 10, 2, NULL, NULL),
(91, 'Magnam sed laudantium et.', 'Est sint ad quisquam occaecati voluptatem. Odit voluptatibus quia adipisci et esse atque alias. Pariatur molestias consequuntur accusantium. Blanditiis officiis id et fuga ea fugit facere.', 'quia', '1984-07-22', 6, 3, NULL, NULL),
(92, 'Sequi fugit voluptatem quia recusandae eligendi.', 'Aspernatur praesentium et qui et consequatur occaecati. Nobis omnis necessitatibus at temporibus ut praesentium. Perspiciatis quam error reprehenderit est minima provident quos.', 'eos', '2018-08-12', 10, 1, NULL, NULL),
(93, 'Deleniti tempore aut rerum odit voluptatem.', 'Voluptatem magni quisquam consequatur rerum consectetur inventore earum. Sed est id perferendis ut ratione nostrum dolore praesentium. Harum occaecati asperiores odio quaerat rerum. Ad quasi unde nisi eveniet.', 'pariatur nemo', '2018-02-24', 8, 4, NULL, NULL),
(94, 'Ipsam ullam sint eum hic.', 'Similique eligendi alias vel itaque autem. Vero maiores distinctio voluptas ullam. Sed consequatur sunt velit tenetur inventore consequatur maiores. Quas dolor pariatur suscipit.', 'corporis est', '2010-03-25', 11, 3, NULL, NULL),
(95, 'Tempora ut omnis illo itaque ut.', 'Facere et iure nostrum eum. Ab et est voluptas qui. Veritatis excepturi explicabo eos ut.', 'aut', '2008-10-09', 6, 3, NULL, NULL),
(96, 'Ab non delectus ipsa.', 'Voluptas temporibus perspiciatis animi totam in. In cum qui quia doloribus. Dolores tenetur assumenda vel eos unde. Qui est blanditiis non neque sed.', 'ducimus modi', '2011-08-17', 5, 3, NULL, NULL),
(97, 'A velit ea quia.', 'Tempore in totam sint non. Corrupti doloremque et rerum magnam. Illum quasi sed fuga sunt sint beatae iure. Sit possimus consequatur distinctio qui id nesciunt. Doloremque tempore voluptas maxime quos aut molestiae quisquam.', 'error quis', '1983-10-18', 2, 4, NULL, NULL),
(98, 'Voluptate omnis aut neque.', 'Iste accusamus rerum nam beatae eligendi voluptatibus enim architecto. Exercitationem sed consequuntur quod dicta et odit. At occaecati qui porro quam. Omnis sit doloremque sequi dolorum enim placeat eos.', 'sunt', '1982-03-04', 4, 2, NULL, NULL),
(99, 'Occaecati ea quia voluptatem.', 'Consequuntur vero deserunt ut. Iste ea animi non magnam.', 'explicabo quia', '1971-07-26', 3, 3, NULL, NULL),
(100, 'Nemo perferendis aut.', 'Aut minima sunt laudantium explicabo iusto qui rem. Ipsa ab a omnis magnam qui qui et.', 'quos quo', '2003-11-15', 11, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VAT` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `currency`, `VAT`, `created_at`, `updated_at`) VALUES
(1, 'Hotel Hilton Tangers', '210', 2324, NULL, '2020-02-04 15:34:51'),
(2, 'Hotel Mamounia', '15', 200, NULL, '2020-02-05 11:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `name`, `description`, `base_price`, `created_at`, `updated_at`) VALUES
(2, 'api sound hotel', 'Souns soft améliorer qualité tres faible', '200.50', NULL, '2020-02-04 09:01:39'),
(4, 'Api sound spa', 'Musique hoft dopte pour nos spa', '400.00', NULL, '2020-02-04 08:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-01-31 07:23:40', '2020-01-31 07:23:40'),
(2, 'user', 'web', '2020-01-31 07:23:40', '2020-01-31 07:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_hierarchy`
--

CREATE TABLE `role_hierarchy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hierarchy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_hierarchy`
--

INSERT INTO `role_hierarchy` (`id`, `role_id`, `hierarchy`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `class`) VALUES
(1, 'ongoing', 'badge badge-pill badge-primary'),
(2, 'stopped', 'badge badge-pill badge-secondary'),
(3, 'completed', 'badge badge-pill badge-success'),
(4, 'expired', 'badge badge-pill badge-warning');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuroles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `menuroles`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@admin.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user,admin', 'wz1UlFqfS5AJTny1ajBOPmwK14VyJRiiZzFVu6vMSaFKoqMrHD71qtTPknIR', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(2, 'Michale Beahan', 'vhowe@example.net', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'sBZpl0RCim', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(3, 'Mauricio Robel', 'uboehm@example.net', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', '98RjoV9noc', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(4, 'Mr. Ibrahim Kerluke V', 'hal34@example.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'd9Q24egcvD', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(5, 'Raven Bartell I', 'wroob@example.net', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'aIClxxJ0Bv', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(6, 'Ike Grady', 'sammy.harvey@example.net', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'JseHx6yQh8', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(7, 'Candida VonRueden', 'nicholas.bayer@example.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'NhdqnbL81Q', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(8, 'Prof. Loy Jacobs', 'floyd65@example.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'hqk9bAd84m', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(9, 'Prof. Edwina Abbott', 'cherman@example.net', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'duAWvCBFrz', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(10, 'Mrs. Marisol Quigley PhD', 'bernard.murazik@example.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'bMeeZiR3Kt', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL),
(11, 'Dr. Suzanne Roob', 'amurphy@example.com', '2020-01-31 07:23:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'BLnkaD7nCy', '2020-01-31 07:23:40', '2020-01-31 07:23:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menulist`
--
ALTER TABLE `menulist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
