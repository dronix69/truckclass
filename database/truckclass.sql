-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-12-2024 a las 16:08:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `truckclass`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1734205662),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1734205662;', 1734205662),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:119:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:16:\"view_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:20:\"view_any_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:18:\"create_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:18:\"update_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"restore_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:23:\"restore_any_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:21:\"replicate_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:19:\"reorder_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:18:\"delete_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:22:\"delete_any_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:24:\"force_delete_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:28:\"force_delete_any_certificado\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:10:\"view_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:14:\"view_any_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:12:\"create_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:12:\"update_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:13:\"restore_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"restore_any_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:15:\"replicate_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"reorder_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"delete_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:16:\"delete_any_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:18:\"force_delete_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:22:\"force_delete_any_curso\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:14:\"view_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"view_any_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:16:\"create_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:16:\"update_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:17:\"restore_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:21:\"restore_any_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:19:\"replicate_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:17:\"reorder_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:16:\"delete_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:20:\"delete_any_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:22:\"force_delete_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:26:\"force_delete_any_matricula\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:10:\"view_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:14:\"view_any_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:12:\"create_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"update_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:13:\"restore_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:17:\"restore_any_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:15:\"replicate_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:13:\"reorder_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:12:\"delete_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:16:\"delete_any_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:18:\"force_delete_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:22:\"force_delete_any_venta\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:22:\"view_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:26:\"view_any_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:24:\"create_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:24:\"update_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:25:\"restore_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:29:\"restore_any_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:27:\"replicate_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:25:\"reorder_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:24:\"delete_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:28:\"delete_any_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:30:\"force_delete_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:34:\"force_delete_any_driving::practice\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:15:\"view_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:19:\"view_any_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:17:\"create_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:17:\"update_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:18:\"restore_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:22:\"restore_any_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:20:\"replicate_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:18:\"reorder_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:17:\"delete_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:21:\"delete_any_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:23:\"force_delete_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:27:\"force_delete_any_instructor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:12:\"view_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:16:\"view_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:14:\"create_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:14:\"update_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:15:\"restore_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:19:\"restore_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:17:\"replicate_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:15:\"reorder_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:14:\"delete_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:18:\"delete_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:20:\"force_delete_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:24:\"force_delete_any_student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:12:\"view_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:16:\"view_any_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:14:\"create_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:14:\"update_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:15:\"restore_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:19:\"restore_any_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:17:\"replicate_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:15:\"reorder_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:14:\"delete_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:18:\"delete_any_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:20:\"force_delete_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:24:\"force_delete_any_vehicle\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:16:\"widget_VentasHoy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:20:\"widget_StatsOverview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:21:\"widget_MatriculaChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:18:\"widget_VentasChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:21:\"widget_CalendarWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"instructor\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:6:\"visita\";s:1:\"c\";s:3:\"web\";}}}', 1734293246);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rut` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `codigo_curso` varchar(255) NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `curso` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `fecha_start` date NOT NULL,
  `fecha_end` date NOT NULL,
  `certificado` varchar(255) NOT NULL,
  `fecha_otorgado` date NOT NULL,
  `venta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `certificados`
--

INSERT INTO `certificados` (`id`, `rut`, `nombre`, `apellido`, `codigo_curso`, `curso_id`, `curso`, `tipo`, `fecha_start`, `fecha_end`, `certificado`, `fecha_otorgado`, `venta_id`, `created_at`, `updated_at`) VALUES
(1, '12234345-6', 'MARIO', 'LARA', 'SIT-2024', 1, 'A-3', 'PRESENCIAL', '2024-12-02', '2024-12-31', '23233', '2024-12-13', 1, '2024-12-13 18:03:25', '2024-12-13 18:03:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curso` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `fecha_start` date NOT NULL,
  `fecha_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `curso`, `codigo`, `tipo`, `fecha_start`, `fecha_end`, `created_at`, `updated_at`) VALUES
(1, 'A-3', 'SIT-2024', 'PRESENCIAL', '2024-12-02', '2024-12-31', '2024-12-12 22:07:46', '2024-12-12 22:07:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `driving_practices`
--

CREATE TABLE `driving_practices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('programado','completado','cancelado') NOT NULL DEFAULT 'programado',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `driving_practices`
--

INSERT INTO `driving_practices` (`id`, `instructor_id`, `vehicle_id`, `student_id`, `start_time`, `end_time`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-12-13 12:00:00', '2024-12-13 13:00:00', 'programado', NULL, '2024-12-13 22:29:00', '2024-12-13 22:29:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'JOSE MARTINEZ', 'jm@mail.com', '+56987654321', '2024-12-13 22:19:29', '2024-12-13 22:19:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `rut` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_matricula` date NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `nivel` varchar(255) NOT NULL,
  `licencia_actual` varchar(255) NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id`, `nombre`, `apellido`, `rut`, `correo`, `telefono`, `edad`, `fecha_matricula`, `fecha_nacimiento`, `direccion`, `comuna`, `codigo`, `nivel`, `licencia_actual`, `curso_id`, `image_url`, `created_at`, `updated_at`, `comments`) VALUES
(1, 'MARIO', 'LARA', '12234345-6', 'toro@mail.com', 987653425, 22, '2024-12-12', '1989-12-12', 'LIRA 234', 'PUREN', 'SAT-20241201', 'Tecnico', 'B', 1, NULL, '2024-12-12 22:16:25', '2024-12-12 22:16:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_11_135735_create_permission_tables', 2),
(5, '2024_12_11_161329_create_cursos_table', 3),
(6, '2024_12_11_161416_create_matriculas_table', 3),
(7, '2024_12_11_161438_create_ventas_table', 3),
(8, '2024_12_11_161458_create_certificados_table', 3),
(9, '2024_12_13_161315_create_instructors_table', 4),
(10, '2024_12_13_161403_create_vehicles_table', 4),
(11, '2024_12_13_161428_create_students_table', 4),
(12, '2024_12_13_161514_create_driving_practices_table', 4),
(13, '2024_12_14_203148_create_notifications_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(2, 'view_any_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(3, 'create_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(4, 'update_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(5, 'delete_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(6, 'delete_any_role', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(7, 'view_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(8, 'view_any_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(9, 'create_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(10, 'update_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(11, 'restore_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(12, 'restore_any_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(13, 'replicate_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(14, 'reorder_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(15, 'delete_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(16, 'delete_any_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(17, 'force_delete_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(18, 'force_delete_any_user', 'web', '2024-12-11 18:27:47', '2024-12-11 18:27:47'),
(19, 'view_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(20, 'view_any_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(21, 'create_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(22, 'update_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(23, 'restore_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(24, 'restore_any_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(25, 'replicate_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(26, 'reorder_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(27, 'delete_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(28, 'delete_any_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(29, 'force_delete_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(30, 'force_delete_any_certificado', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(31, 'view_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(32, 'view_any_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(33, 'create_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(34, 'update_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(35, 'restore_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(36, 'restore_any_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(37, 'replicate_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(38, 'reorder_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(39, 'delete_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(40, 'delete_any_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(41, 'force_delete_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(42, 'force_delete_any_curso', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(43, 'view_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(44, 'view_any_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(45, 'create_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(46, 'update_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(47, 'restore_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(48, 'restore_any_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(49, 'replicate_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(50, 'reorder_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(51, 'delete_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(52, 'delete_any_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(53, 'force_delete_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(54, 'force_delete_any_matricula', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(55, 'view_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(56, 'view_any_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(57, 'create_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(58, 'update_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(59, 'restore_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(60, 'restore_any_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(61, 'replicate_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(62, 'reorder_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(63, 'delete_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(64, 'delete_any_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(65, 'force_delete_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(66, 'force_delete_any_venta', 'web', '2024-12-12 21:28:06', '2024-12-12 21:28:06'),
(67, 'view_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(68, 'view_any_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(69, 'create_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(70, 'update_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(71, 'restore_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(72, 'restore_any_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(73, 'replicate_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(74, 'reorder_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(75, 'delete_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(76, 'delete_any_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(77, 'force_delete_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(78, 'force_delete_any_driving::practice', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(79, 'view_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(80, 'view_any_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(81, 'create_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(82, 'update_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(83, 'restore_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(84, 'restore_any_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(85, 'replicate_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(86, 'reorder_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(87, 'delete_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(88, 'delete_any_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(89, 'force_delete_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(90, 'force_delete_any_instructor', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(91, 'view_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(92, 'view_any_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(93, 'create_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(94, 'update_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(95, 'restore_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(96, 'restore_any_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(97, 'replicate_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(98, 'reorder_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(99, 'delete_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(100, 'delete_any_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(101, 'force_delete_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(102, 'force_delete_any_student', 'web', '2024-12-13 22:11:44', '2024-12-13 22:11:44'),
(103, 'view_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(104, 'view_any_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(105, 'create_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(106, 'update_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(107, 'restore_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(108, 'restore_any_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(109, 'replicate_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(110, 'reorder_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(111, 'delete_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(112, 'delete_any_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(113, 'force_delete_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(114, 'force_delete_any_vehicle', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(115, 'widget_VentasHoy', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(116, 'widget_StatsOverview', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(117, 'widget_MatriculaChart', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(118, 'widget_VentasChart', 'web', '2024-12-13 22:11:45', '2024-12-13 22:11:45'),
(119, 'widget_CalendarWidget', 'web', '2024-12-14 22:43:33', '2024-12-14 22:43:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-12-11 17:02:45', '2024-12-11 17:02:45'),
(2, 'editor', 'web', '2024-12-11 18:28:44', '2024-12-11 18:28:44'),
(3, 'instructor', 'web', '2024-12-11 18:37:25', '2024-12-11 18:37:25'),
(4, 'visita', 'web', '2024-12-11 19:17:58', '2024-12-11 19:17:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 3),
(67, 4),
(68, 1),
(68, 3),
(68, 4),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(91, 3),
(91, 4),
(92, 1),
(92, 3),
(92, 4),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(103, 4),
(104, 1),
(104, 3),
(104, 4),
(105, 1),
(105, 3),
(106, 1),
(106, 3),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(115, 2),
(116, 1),
(116, 2),
(117, 1),
(117, 2),
(118, 1),
(118, 2),
(119, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1PeEY4rEH4DVuRp8uMRMmUh9ssTXaRX8pR4veaqN', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicEhkR3Vpckhwbm8ybER5TlVpbVVEaHRhOXNiWXliN1hzbW84SDVIdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9tYXRyaWN1bGFzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJC9ad3NWTnNxcy8vOWcxRS40aUUwLmVvZWFTNWEwaC5jVVpibUtOQmlBUEVRVkVock9NNENLIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1734208616);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'LUIS GUZMAN', 'guz@mail.com', '+56988774466', '2024-12-13 22:21:06', '2024-12-13 22:21:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'demo@gmail.com', NULL, '$2y$12$/ZwsVNsqs//9g1E.4iE0.eoeaS5a0h.cUZbmKNBiAPEQVEhrOM4CK', NULL, '2024-12-11 16:37:21', '2024-12-11 16:37:21'),
(2, 'anna', 'anna@gmail.com', NULL, '$2y$12$WGmlcaZjy6JbKr8WRhXTyuIL25XDFMI/BTsxPz.75S9H286pSOCVC', NULL, '2024-12-11 18:29:40', '2024-12-11 18:39:07'),
(3, 'Rodrigo', 'rod@mail.com', NULL, '$2y$12$dxA0pztLAJMs7idBB7w6Y.b0xWKJtHhLjfEgC9C2Jo9xVec8uCyqO', NULL, '2024-12-11 19:19:05', '2024-12-11 19:19:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`id`, `plate_number`, `model`, `year`, `created_at`, `updated_at`) VALUES
(1, 'DFTH80', 'SUZUKI', '2023', '2024-12-13 22:20:18', '2024-12-13 22:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula_id` bigint(20) UNSIGNED NOT NULL,
  `rut` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `boleta` int(11) NOT NULL,
  `forma_pago` varchar(255) NOT NULL,
  `fecha_pago` date NOT NULL,
  `cuota` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `cancelado` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `matricula_id`, `rut`, `nombre`, `apellido`, `boleta`, `forma_pago`, `fecha_pago`, `cuota`, `valor`, `total`, `cancelado`, `created_at`, `updated_at`) VALUES
(1, 1, '12234345-6', 'MARIO', 'LARA', 20244, 'debito', '2024-12-12', 1, 200000.00, 200000.00, 1, '2024-12-12 22:38:24', '2024-12-13 17:51:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificados_curso_id_foreign` (`curso_id`),
  ADD KEY `certificados_venta_id_foreign` (`venta_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cursos_codigo_unique` (`codigo`);

--
-- Indices de la tabla `driving_practices`
--
ALTER TABLE `driving_practices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driving_practices_instructor_id_foreign` (`instructor_id`),
  ADD KEY `driving_practices_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `driving_practices_student_id_foreign` (`student_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matriculas_rut_unique` (`rut`),
  ADD UNIQUE KEY `matriculas_correo_unique` (`correo`),
  ADD KEY `matriculas_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_plate_number_unique` (`plate_number`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ventas_boleta_unique` (`boleta`),
  ADD KEY `ventas_matricula_id_foreign` (`matricula_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `driving_practices`
--
ALTER TABLE `driving_practices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `certificados_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `certificados_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `driving_practices`
--
ALTER TABLE `driving_practices`
  ADD CONSTRAINT `driving_practices_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driving_practices_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driving_practices_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_matricula_id_foreign` FOREIGN KEY (`matricula_id`) REFERENCES `matriculas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
