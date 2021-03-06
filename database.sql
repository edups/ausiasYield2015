-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-12-2015 a las 00:29:01
-- Versión del servidor: 5.6.27
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ausiasyield2015`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaarticulo`
--

CREATE TABLE IF NOT EXISTS `categoriaarticulo` (
  `id` int(11) NOT NULL COMMENT 'id',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'nombre',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'descripcion'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoriaarticulo`
--

INSERT INTO `categoriaarticulo` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Automóviles', 'En esta categoría podrás encontrar todo el contenido sobre automóviles.'),
(2, 'Deportes', 'En esta categoría podrás encontrar todo el contenido sobre deportes.'),
(3, 'Gastronomía', 'En esta categoría podrás encontrar todo el contenido sobre gastronomía.'),
(4, 'Naturaleza', 'En esta categoría podrás encontrar todo el contenido sobre naturaleza.'),
(5, 'Ciencia', 'En esta categoría podrás encontrar todo el contenido sobre ciencias.'),
(6, 'Política', 'En esta categoría podrás encontrar todo el contenido sobre política.'),
(7, 'Libros', 'En esta categoría podrás encontrar todo el contenido sobre libros.'),
(8, 'Cine', 'En esta categoría podrás encontrar todo el contenido sobre cine.'),
(9, 'Videojuegos', 'En esta categoría podrás encontrar todo el contenido sobre videojuegos.'),
(10, 'Tecnología', 'En esta categoría podrás encontrar todo el contenido sobre tecnología.'),
(11, 'Historia', 'En esta categoría podrás encontrar todo el contenido sobre historia.'),
(12, 'Arte', 'En esta categoría podrás encontrar todo el contenido sobre arte.'),
(13, 'Meteorología', 'En esta categoría podrás encontrar todo el contenido sobre meteorología.'),
(14, 'Turismo', 'En esta categoría podrás encontrar todo el contenido sobre zonas turísticas.'),
(15, 'Humor', 'En esta categoría podrás encontrar todo el contenido sobre humor.'),
(16, 'Cultura', 'En esta categoría podrás encontrar todo el contenido sobre cultura.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `id` int(11) NOT NULL COMMENT 'id',
  `contenido` text COMMENT 'contenido',
  `nombreautor` varchar(255) DEFAULT NULL COMMENT 'nombre autor',
  `id_documento` int(11) DEFAULT NULL COMMENT 'id documento'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `contenido`, `nombreautor`, `id_documento`) VALUES
(1, 'No me hace mucha gracia que te hagas amigo de mi hermana.', 'Nando Laorden', NULL),
(2, 'Crea tablas pa la estantería del vino', 'Iván García', NULL),
(3, 'Allahu Akbar', 'Santiago Ferrandis', NULL),
(4, 'Normalizao', 'Fernando Cantos', NULL),
(5, '¿Y la europea?', 'Mariano Rajoy', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `id` int(6) NOT NULL COMMENT 'Num.',
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titulo',
  `contenido` longtext COLLATE utf8_unicode_ci COMMENT 'Contenido',
  `alta` date DEFAULT NULL COMMENT 'Alta',
  `cambio` date DEFAULT NULL COMMENT 'Cambio',
  `hits` int(10) DEFAULT NULL COMMENT 'Hits',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'Usuario',
  `etiquetas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Etiquetas',
  `publicado` tinyint(1) DEFAULT NULL COMMENT 'Publicado',
  `portada` tinyint(1) DEFAULT NULL COMMENT 'Portada',
  `destacado` tinyint(1) DEFAULT NULL COMMENT 'Destacado',
  `id_tipodocumento` int(6) DEFAULT NULL COMMENT 'Tipo'
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id`, `titulo`, `contenido`, `alta`, `cambio`, `hits`, `id_usuario`, `etiquetas`, `publicado`, `portada`, `destacado`, `id_tipodocumento`) VALUES
(1, 'drdrdrtttwaaaa', '%3D%20Entrega%20de%20premios%20%3DsffsdfIntroducci%C3%B3n%20*%20ksjdlk%20*%20klk%C3%B1%20*%20k%C3%B1lk%C3%B1l//gdfg//dfgdfwdfgdfdfgdfgdfgdfgdfgdfgggggggggggggg%20dgdfgdfgdg%20dfgdfgdfgdfgddfgdgdfdd', '2014-10-26', '2014-10-26', 1, 0, 'das1a', 1, 1, 1, 0),
(2, 'doc%20de%20rafa1aaa', '%3DMi%20documento%2001%3D%0D%0A%0D%0A%20...', '2014-09-21', '2014-09-21', 411, 4, 'pepe', 1, 1, 0, 2),
(3, 'wwww1111', 'ggtttqqqd%20asdasdas%20das', '2014-09-28', '2014-09-28', 22, 5, 'pepe', 1, 1, 0, 3),
(4, 'sss', 'www', '2014-09-11', '2014-09-11', 0, 3, 'pepe', 1, 1, 0, 2),
(5, 'DFGDFG', 'HDFHDF', '2014-09-16', '2014-09-16', 1, 2, 'pepe', 1, 1, 0, 5),
(6, 'Mi doc', '[http://github.com|Github] \r\nhola =miau= [http://intel.com|Intel] \r\n hola ====jujujuj==== [http://google.es|Google]\r\n\r\n\r\n=rafa=\r\n\r\nHolaaaaaa\r\n\r\n==segundo titulo==\r\n\r\n<table class="table">\r\n<th><td>hola</td></th>\r\n</table>', '2013-11-19', NULL, 6, 5, 'rafa', NULL, NULL, NULL, NULL),
(7, 'doc de rafa', '=Mi documento 01=\r\n\r\n[http://materialesdaw-raznar.rhcloud.com|metriales daw] de rafa', '2013-11-20', NULL, 4, 4, 'rafa', NULL, NULL, NULL, NULL),
(8, 'swxxa%20sss%20s%20s%20', '', '2014-09-16', '2014-09-16', 0, 5, 'pepe', 1, 1, 0, 0),
(9, '', 'ssdwdwdss%20sssssss', '2014-09-16', '2014-09-16', 0, 3, 'rafa', 1, 1, 0, 0),
(10, 'DFGDFG', 'HDFHDF', '2013-11-20', NULL, 1, 1, 'rafa', NULL, NULL, NULL, NULL),
(19, 'assaaaaa', 'wedaaaa%20aaaaaaaaa%20cccc0000', '2014-10-15', '2014-10-15', 161, 4, 'aqw', 1, 1, 0, 9),
(22, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(23, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(24, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(25, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(26, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(27, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(28, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(29, 'dgdfgdfgdf', 'gdf', '2014-09-21', '2014-09-21', 555, 1, 'rafa', 0, 0, 0, 2),
(35, 'das', 'asdasd%20asdasd', '2014-09-28', '2014-09-28', 111, 2, 'ddd', 1, 1, 1, 10),
(36, 'dasd', 'asdas%20', '2014-09-28', '2014-09-28', 22, 1, 'ddd', 0, 1, 0, 2),
(37, 'ads', 'asd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(38, 'fd', 'fsdfsd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(39, 'fadf', 'sdf', '2014-09-28', '2014-09-28', 2222, 1, 'ana', 1, 1, 0, 3),
(46, 'hfghf', 'hf', '2014-10-19', '2014-10-19', 4, 1, 'hfg', 1, 1, 1, 6),
(47, 'hfgh', 'fhgh', '2014-10-24', '2014-10-24', 55, 1, '12%20rrr', 1, 1, 1, 2),
(48, 'gggggggg', 'hhhhhhhhhhh', '2014-10-25', '2014-10-25', 333, 2, 'gfdgdf%20rrrr', 1, 1, 1, 5),
(49, 'dfaaaaaaaaaaag', 'aaaaaaaaadfg', '2015-10-08', '2015-10-08', 1, 0, 'aaaaaaaaaaaaaaa', 0, 0, 1, 0),
(50, 'sfdf', 'sdfs', '2015-10-08', '2015-10-08', 1, 0, 'fsdfs', 0, 0, 0, 0),
(51, 'dfg', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'sdfsdfsfsdf', 0, 0, 0, 0),
(52, 'dasd', 'dasda', '2015-10-08', '2015-10-08', 1, 0, 'dasd', 0, 0, 0, 0),
(53, 'qqqqqqqqqqq', 'qqqqqqqqqqqqq', '2015-10-08', '2015-10-08', 1, 0, '', 1, 1, 1, 0),
(54, 'gdf', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'fsdf', 0, 0, 0, 0),
(55, 'qq%20qqqq%20qqqqqqqqqq%20qqqqq', 'ww%20wwwwwww%20wwwwwwwwww', '2015-10-08', '2015-10-08', 1, 0, 'wwwww%20wwww', 1, 1, 1, 0),
(56, 'bcv', 'cvb', '2015-10-08', '2015-10-08', 1, 0, 'vxc', 0, 0, 0, 0),
(57, 'das', 'asdasd', '2015-10-08', '2015-10-08', 1, 0, 'qqw', 1, 1, 1, 0),
(58, 'f', 'kjkj', '2015-10-08', '2015-10-08', 7, 0, '7yuty', 1, 0, 0, 0),
(59, 'fd%20fsdfsdf%20%20sdf%20s', '%20sdf%20sdfsd', '2015-10-20', '2015-10-08', 1, 0, '%20gdfgd%20f%20gdfg%20d', 0, 1, 0, 0),
(60, '12', 'www%20ccc', '2015-10-08', '2015-10-08', 1, 0, 'eded', 0, 0, 0, 0),
(61, 'wwwe', 'eeew', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(62, 'da', 'dasd', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(63, 'fgh', 'fgh', '2015-10-08', '2015-10-08', 1, 0, 'dfg', 0, 0, 0, 0),
(64, 'sad', 'asd', '2015-10-08', '2015-10-08', 1, 0, 'fsd', 0, 0, 0, 0),
(65, 'gdf', 'dgf', '2015-10-08', '2015-10-08', 1, 0, 'fds', 0, 0, 0, 0),
(66, 'gd', 'gd', '2015-10-08', '2015-10-08', 1, 0, 'dsf', 0, 0, 0, 0),
(67, 'sdf', 'fsd', '2015-10-08', '2015-10-08', 1, 0, 'sfd', 0, 0, 0, 0),
(68, 'das', 'ddddd', '2015-10-08', '2015-10-08', 1, 0, 'aaq', 1, 1, 1, 0),
(69, 'sdf', 'sdf', '2015-10-08', '2015-10-08', 1, 0, 'f', 0, 0, 0, 0),
(70, 'qqq', 'fff', '2015-10-09', '2015-10-09', 1, 0, 'fff', 0, 0, 1, 0),
(71, 'uuu', 'uuu', '2015-10-09', '2015-10-09', 2, 0, 'uu', 1, 0, 0, 0),
(72, 'kk', 'kkk', '2015-10-09', '2015-10-09', 1, 0, 'r', 0, 0, 0, 0),
(73, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(74, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(75, 'aaaa', 'aaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 0, 1, 0, 0),
(76, 'aaa', 'aaa', '2015-10-10', '2015-10-10', 1, 0, 'aaaaa', 0, 1, 0, 0),
(77, 'aaaaaa', 'aaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(78, 'aaaaaaaa', 'aaaaaaaaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(79, 'aa', 'aa', '2015-10-10', '2015-10-10', 1, 0, 'aa', 0, 1, 1, 0),
(80, 'h', 'h', '2015-10-11', '2015-10-11', 1, 0, 'a', 0, 1, 0, 0),
(81, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(82, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(83, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(84, 'sss', 'ssss', '2015-10-08', '2015-10-11', 1, 0, 'ssss', 0, 0, 1, 0),
(85, 'qqqqqqqqqqq', 'rrr', '2015-10-11', '2015-10-11', 3, 0, 'r', 0, 0, 0, 0),
(86, 'r', 'r', '2015-10-11', '2015-10-11', 1, 0, 'r', 0, 0, 0, 0),
(87, 'r', 'r', '2015-10-11', '2015-10-11', 3, 0, 'r', 1, 0, 0, 0),
(88, 'Pregunta uno', 'Cuestionario prueba', '2015-11-03', '2015-11-03', 0, 7, 'who, is, the, best', 0, 1, 0, 12),
(89, 'Pregunta 2', 'Esto es una pregunta?', '2015-11-03', '2015-11-03', NULL, 6, 'pregunta, tocapelotas', 0, 1, 0, 12),
(90, 'hola adios', 'estas o no?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Apuntes%20de%20Servidor', NULL, '2015-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(96, 'Duda%20sobre%20manejo%20de%20fechas%20en%20Java', NULL, '2015-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(97, 'Problema%20con%20proyecto%20AusiasYield', NULL, '2015-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentocategoriaarticulo`
--

CREATE TABLE IF NOT EXISTS `documentocategoriaarticulo` (
  `id` int(11) NOT NULL COMMENT 'id',
  `id_documento` int(11) DEFAULT NULL COMMENT 'id documento',
  `id_categoriaarticulo` int(11) DEFAULT NULL COMMENT 'id categoriaarticulo',
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'descripcion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado'
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `tipo`) VALUES
(1, 'Estoy contento'),
(2, 'Estoy feliz'),
(3, 'Estoy happy'),
(4, 'Estoy triste'),
(5, 'Estoy con fiebre'),
(6, 'Tengo fiebre'),
(7, 'En el gimnasio'),
(8, 'De quintos'),
(9, 'En el cine'),
(10, 'Estudiando'),
(11, 'En el trabajo'),
(12, 'Durmiendo'),
(13, 'En el baño...'),
(14, 'En el medico'),
(15, 'De fiesta'),
(16, 'Confuso'),
(17, 'Deprimido'),
(18, 'Fantastico'),
(19, 'OP'),
(20, 'rafa es el mejor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE IF NOT EXISTS `opcion` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id`, `id_pregunta`, `descripcion`) VALUES
(7, 1, 'Rafa'),
(8, 1, 'Alf'),
(9, 1, 'Naranjito'),
(11, 1, 'Chuck'),
(12, 1, 'Pepe'),
(13, 3, 'Si'),
(14, 3, 'No'),
(15, 3, 'Quizás'),
(16, 3, 'Jamás'),
(17, 3, 'No se'),
(18, 4, 'hola'),
(19, 4, 'adios'),
(20, 1, 'opcion1'),
(21, 1, 'opcion2'),
(22, 3, 'opcion1'),
(23, 3, 'opcion2'),
(24, 4, 'opcion1'),
(25, 4, 'opcion2'),
(26, 5, 'opcion1'),
(27, 5, 'opcion2'),
(28, 6, 'opcion1'),
(29, 6, 'opcion2'),
(30, 7, 'opcion1'),
(31, 7, 'opcion2'),
(32, 8, 'opcion1'),
(33, 8, 'opcion2'),
(34, 9, 'opcion1'),
(35, 9, 'opcion2'),
(36, 10, 'opcion1'),
(37, 10, 'opcion2'),
(38, 11, 'opcion1'),
(39, 11, 'opcion2'),
(40, 13, 'opcion1'),
(41, 13, 'opcion2'),
(42, 14, 'opcion1'),
(43, 14, 'opcion2'),
(44, 15, 'opcion1'),
(45, 15, 'opcion2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL COMMENT 'Num.',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Usuario',
  `id_documento` int(11) DEFAULT NULL COMMENT 'Documento',
  `mensaje` text COLLATE utf8_unicode_ci COMMENT 'Mensaje',
  `fecha` datetime DEFAULT NULL COMMENT 'Fecha'
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `id_usuario`, `id_documento`, `mensaje`, `fecha`) VALUES
(49, 11, 95, 'A%20petici%C3%B3n%20de%20aquel%20que%20lo%20quiera%20os%20ir%C3%A9%20pasando%20apuntes%20de%20servidor.%20Para%20ello%2C%20enviadme%20vuestros%20correos%20electr%C3%B3nicos%20y%20os%20mandar%C3%A9%20un%20.zip%20con%20los%20apuntes%20del%20curso.%20', '2015-12-11 08:24:52'),
(51, 1, 95, 'A%20m%C3%AD%20me%20interesan%20estos%20apuntes%2C%20%C2%BFme%20los%20puedes%20pasar%3F%20Mi%20correo%20es%20pepe.palomo%40gmail.com.%20%C2%A1Gracias!', '2015-12-11 08:30:24'),
(53, 11, 95, 'Ya%20te%20los%20he%20enviado%2C%20espero%20que%20te%20ayuden%20para%20aprobar%20la%20asignatura.', '2015-12-11 08:31:36'),
(54, 4, 95, 'A%20m%C3%AD%20tambi%C3%A9n%20me%20interesan%20los%20apuntes%2C%20Rafael.%20Mi%20correo%20electr%C3%B3nico%20es%3A%20antonia.dellate%40gmail.com', '2015-12-11 08:32:55'),
(55, 11, 95, 'Te%20los%20acabo%20de%20enviar%2C%20espero%20que%20te%20sirvan.%20Un%20saludo.', '2015-12-11 08:34:21'),
(56, 4, 96, 'Hola%2C%20tengo%20una%20duda%20de%20c%C3%B3mo%20formatear%20fechas%20en%20Java%2C%20%C2%BFalguien%20me%20puede%20explicar%20c%C3%B3mo%20hacerlo%3F', '2015-12-11 08:37:24'),
(57, 11, 96, 'Me%20pillas%20un%20poco%20liado%20ahora%2C%20esta%20noche%20en%20casa%20te%20paso%20un%20tutorial%20en%20pdf.', '2015-12-11 08:39:18'),
(58, 4, 96, 'Gracias%20Rafael%2C%20te%20lo%20agradezco.', '2015-12-11 08:39:46'),
(59, 7, 96, 'Aqu%C3%AD%20tienes%20un%20manual%20en%20pdf%2C%20espero%20que%20te%20sirva%3A%20http%3A//www.tutorialspoint.com/java/pdf/java_date_time.pdf', '2015-12-11 08:41:32'),
(60, 11, 96, 'El%20manual%20que%20te%20ha%20pasado%20Silvia%20te%20puede%20servir%2C%20l%C3%A9etelo%20y%20si%20te%20sigues%20atascando%20av%C3%ADsame%20y%20te%20paso%20m%C3%A1s%20documentaci%C3%B3n.', '2015-12-11 08:42:26'),
(61, 4, 96, 'Gracias%20a%20los%20dos!', '2015-12-11 08:43:48'),
(62, 1, 97, 'Tengo%20un%20problema%20con%20mi%20proyecto%20de%20AusiasYield.%20He%20clonado%20el%20proyecto%20desde%20el%20GitHub%20de%20Rafael%20pero%20no%20me%20compila%20correctamente.%20%C2%BFPuede%20ser%20un%20problema%20de%20puertos%3F%20%C2%BFMe%20falta%20alg%C3%BAn%20archivo%20importante%3F%20%C2%A1Ayuda!', '2015-12-11 08:48:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE IF NOT EXISTS `pregunta` (
  `id` int(11) NOT NULL,
  `id_documento` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `id_documento`, `descripcion`) VALUES
(1, 88, NULL),
(3, 89, NULL),
(4, 90, NULL),
(5, 1, NULL),
(6, 2, NULL),
(7, 3, NULL),
(8, 4, NULL),
(9, 5, NULL),
(10, 6, NULL),
(11, 7, NULL),
(12, 8, NULL),
(13, 9, NULL),
(14, 10, NULL),
(15, 19, NULL),
(16, 88, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE IF NOT EXISTS `respuesta` (
  `id` int(11) NOT NULL,
  `id_opcion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fechaHoraAlta` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `id_opcion`, `id_usuario`, `fechaHoraAlta`) VALUES
(1, 8, 1, '2015-11-03 10:42:00'),
(2, 15, 1, '2015-11-03 00:00:00'),
(3, 19, 30, NULL),
(4, 20, 10, NULL),
(5, 21, 10, NULL),
(6, 22, 11, NULL),
(7, 23, 11, NULL),
(8, 24, 12, NULL),
(9, 25, 13, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tipodocumento` (
  `id` int(6) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `privado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descripcion`, `privado`) VALUES
(1, 'hilo', 1),
(2, 'currículum', 1),
(3, 'actividad', 1),
(4, 'experiencia', 1),
(5, 'formación', 1),
(6, 'valía', 1),
(7, 'inscripción', 1),
(8, 'solicitud', 1),
(9, 'bolsa de trabajo', 1),
(10, 'idiomas', 1),
(11, 'wer', 1),
(12, 'cuestionario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(6) NOT NULL COMMENT 'Identificador',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `id_estado` int(11) DEFAULT NULL COMMENT 'Estado',
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ciudad',
  `firma` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Firma',
  `skin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Plantilla'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`, `id_estado`, `ciudad`, `firma`, `skin`) VALUES
(1, 'pepe', 'pepe', 2, 1, 'Valencia', 'is my life and do what I want', 'main'),
(2, 'juan', 'juan', 3, 3, 'Madrid', 'http://criticalandia.com críticas de entretenimiento, listas, opiniones...', 'main'),
(3, 'maria', 'maria', 3, 6, 'Barcelona', 'If you love something, set it free. Unless it''''s a tiger.', 'main'),
(4, 'antonia', 'antonia', 3, 7, 'Sevilla', '"El único límite a nuestros logros de mañana está en nuestras dudas de hoy."', 'main'),
(5, 'edu', 'edu', 3, 13, 'Zaragoza', 'Plataforma: ORGULLLO CADISTA no.58', 'main'),
(6, 'jose', 'jose', 3, 19, 'Teruel', 'Ironía: Figura literaria mediante la cual se da a entender lo contrario de lo que se dice.', 'main'),
(7, 'silvia', 'silvia', 3, 6, 'Huesca', 'Paso de firmas', 'main'),
(8, 'pedro', 'pedro', 3, 8, 'Alicante', 'Camisetas y calzado www.pedidoshicks.com', 'main'),
(9, 'raquel', 'raquel', 3, 15, 'Castellón', 'PEÑA COLCHONERA Socio número 629', 'main'),
(10, 'daniel', 'daniel', 3, 12, 'Almería', '"Obsesionado es tan sólo la palabra que usan los perezosos para describir a los dedicados"', 'main'),
(11, 'rafael', 'rafael', 1, 17, 'A Coruña', 'Ista ye a mia tierra, a mia fabla', 'main'),
(12, 'juan', 'juan', 3, 14, 'Barcelona', 'No todos los catalanes somos independentistas', 'main'),
(13, 'elena', 'elena', 3, 19, 'Bilbao', 'Buenas tardes', 'main'),
(14, 'luis', 'luis', 3, 4, 'Lugo', 'Preparado para cualquier combate', 'main'),
(15, 'alba', 'alba', 3, 5, 'Cuenca', 'Si tienes un Ibiza o un Cordoba, este es tu club: www.clubseatcordoba.com', 'main'),
(16, 'amparo', 'amparo', 3, 7, 'Ciudad Real', 'No hay dos sin tres', 'main'),
(17, 'ambrosio', 'ambrosio', 3, 8, 'Guadalajara', 'Tesis+Antítesis=Síntesis. Problema+Acción = Solución.', 'main'),
(18, 'luisa', 'luisa', 3, 1, 'Huelva', 'Y yo me iré. y se quedará mi huerto con su verde árbol, y con su pozo blanco. Y yo me iré.. Y se quedarán los pájaros cantando', 'main'),
(19, 'leon', 'leon', 3, 3, 'Granada', 'La Infanta no sabía nada y punto.', 'main'),
(20, 'rosa', 'rosa', 3, 2, 'Cádiz', 'Viva España', 'main'),
(21, 'capcom', 'capcom', 3, 17, 'Jerez', 'La gente cree que soy una mala persona, pero no es cierto, yo tengo el corazón de un niño...en un frasco con formol encima de mi escritorio.', 'main'),
(22, 'teleco', 'teleco', 3, 18, 'Vallecas', 'Foreros de la Comunidad de Madrid Nº25', 'main'),
(23, 'mercadona', 'mercadona', 3, 13, 'Jaén', 'Y veréis el resurgir poderoso del guerrero, sin miedo a leyes ni a nostalgias.', 'main'),
(24, 'vistaprint', 'vistaprint', 3, 15, 'Valencia', 'Codeados.com Diseño y Desarrollo web, Imagen Corporativa, SEO, Marketing Digital', 'main'),
(25, 'google', 'google', 3, 16, 'California', 'Viva google +', 'main'),
(26, 'konami', 'konami', 3, 6, 'Tokio', 'Viva Castolo, Minanda y Ximelez', 'main'),
(27, 'orange', 'orange', 3, 7, 'París', 'Viva movistar', 'main'),
(28, 'samsung', 'samsung', 3, 8, 'Cuenca', 'Viva el iPhone 6', 'main'),
(29, 'gigabyte', 'gigabyte', 3, 10, 'Oviedo', 'Viva gigabyte', 'main'),
(30, 'microsoft', 'microsoft', 3, 10, 'Albacete', 'La xbox ONE es la MEJOR CONSOLA', 'main');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriaarticulo`
--
ALTER TABLE `categoriaarticulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentocategoriaarticulo`
--
ALTER TABLE `documentocategoriaarticulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriaarticulo`
--
ALTER TABLE `categoriaarticulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Num.',AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `documentocategoriaarticulo`
--
ALTER TABLE `documentocategoriaarticulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id';
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `opcion`
--
ALTER TABLE `opcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Num.',AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
