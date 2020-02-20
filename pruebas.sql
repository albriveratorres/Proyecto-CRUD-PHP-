-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-02-2020 a las 22:52:33
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `ACTUALIZA_PRODUCTO`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ACTUALIZA_PRODUCTO` (`N_PRECIO` INT, `N_ART` VARCHAR(20))  UPDATE PRODUCTOS SET PRECIO = N_PRECIO WHERE NOMBREARTICULO = N_ART$$

DROP PROCEDURE IF EXISTS `MUESTRA_CLIENTE`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MUESTRA_CLIENTE` ()  SELECT * FROM CLIENTES WHERE POBLACION = 'BARCELONA'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `CODIGOCLIENTE` varchar(4) NOT NULL DEFAULT '',
  `EMPRESA` varchar(25) DEFAULT NULL,
  `DIRECCION` varchar(19) DEFAULT NULL,
  `POBLACION` varchar(9) DEFAULT NULL,
  `TELEFONO` varchar(16) DEFAULT NULL,
  `RESPONSABLE` varchar(18) DEFAULT NULL,
  `HISTORIAL` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODIGOCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`CODIGOCLIENTE`, `EMPRESA`, `DIRECCION`, `POBLACION`, `TELEFONO`, `RESPONSABLE`, `HISTORIAL`) VALUES
('CT01', 'BELTRÁN E HIJOS', 'LAS FUENTES 78', 'MADRID', '(914) 45- 64- 35', 'ANGEL MARTÍNEZ', NULL),
('CT02', 'LA MODERNA', 'LA PALOMA 123', 'OVIEDO', '(985) 32- 34- 34', 'JUAN GARCÍA', NULL),
('CT03', 'EL ESPAÑOLITO', 'MOTORES 34', 'BARCELONA', '(934) 56- 53- 43', 'ANA FERNÁNDEZ', NULL),
('CT04', 'EXPORTASA', 'VALLECAS 34', 'MADRID', '(913) 45- 23- 78', 'ELVIRA GÓMEZ', NULL),
('CT06', 'CONFECCIONES AMPARO', 'LOS MOROS 23', 'GIJÓN', '(985) 75- 43- 32', 'LUÍS ÁLVAREZ', NULL),
('CT07', 'LA CASA DEL JUGUETE', 'AMÉRICA 45', 'MADRID', '(912) 64- 99- 87', 'ELÍAS PÉREZ', NULL),
('CT08', 'JUGUETERÍA SUÁREZ', 'PARIS 123', 'BARCELONA', '(933) 45- 78- 66', 'JUAN GARCÍA', NULL),
('CT09', 'ALMACÉN POPULAR', 'LAS FUENTES 124', 'BILBAO', '(942) 34- 71- 27', 'JOSÉ ÁLVAREZ', NULL),
('CT10', 'FERETERÍA EL CLAVO', 'PASEO DE ÁLAMOS 78', 'MADRID', '(914) 35- 48- 66', 'MANUEL MENÉNDEZ', NULL),
('CT11', 'JUGUETES MARTÍNEZ', 'VIA LAYETANA 245', 'BARCELONA', '(936) 62- 85- 54', 'FRANCISCO CUEVAS', NULL),
('CT12', 'FERNÁNDEZ SL', 'PASEO DEL MAR 45', 'SANTANDER', '(942) 04- 95- 86', 'ELISA COLLADO', NULL),
('CT13', 'CONFECCIONES ARTÍMEZ', 'GENERAL PERÓN 45', 'A CORUÑA', '(981) 34- 52- 39', 'ESTEBAN PASCUAL', NULL),
('CT14', 'DEPORTES GARCÍA', 'GUZMÁN EL BUENO 45', 'MADRID', '(913) 29- 94- 75', 'ANA JIMÉNEZ', NULL),
('CT15', 'EXCLUSIVAS FERNÁNDEZ', 'LLOBREGAT 250', 'BARCELONA', '(939) 55- 83- 65', 'LUISA FERNÁNDEZ', NULL),
('CT16', 'DEPORTES MORÁN', 'AUTONOMÍA 45', 'LUGO', '(982) 98- 69- 44', 'JOSÉ MANZANO', NULL),
('CT17', 'BAZAR FRANCISCO', 'CARMEN 45', 'ZAMORA', '(980) 49- 52- 88', 'CARLOS BELTRÁN', NULL),
('CT18', 'JUGUETES LA SONRISA', 'LA BAÑEZA 67', 'LEÓN', '(987) 94- 53- 68', 'FAUSTINO PÉREZ', NULL),
('CT19', 'CONFECCIONES GALÁN', 'FUENCARRAL 78', 'MADRID', '(913) 85- 92- 34', 'JUAN GARCÍA', NULL),
('CT20', 'LA CURTIDORA', 'OLIVARES 3', 'MÁLAGA', '(953) 75- 62- 59', 'MARÍA GÓMEZ', NULL),
('CT21', 'LÍNEA JOVEN', 'SIERPES 78', 'SEVILLA', '(953) 45- 25- 67', 'ASUNCIÓN SALADO', NULL),
('CT22', 'BAZAR EL BARAT', 'DIAGONAL 56', 'BARCELONA', '(936) 69- 28- 66', 'ELISA DAPENA', NULL),
('CT23', 'EL PALACIO DE LA MODA', 'ORTEGA Y GASSET 129', 'MADRID', '(927) 78- 52- 35', 'LAURA CARRASCO', NULL),
('CT24', 'SÁEZ Y CÍA', 'INFANTA MERCEDS 23', 'SEVILLA', '(954) 86- 92- 34', 'MANUEL GUERRA', NULL),
('CT25', 'DEPORTES EL MADRILEÑO', 'CASTILLA 345', 'ZARAGOZA', '(976) 38- 89- 34', 'CARLOS GONZÁLEZ', NULL),
('CT26', 'FERRETERÍA LA ESCOBA', 'ORENSE 7', 'MADRID', '(918) 45- 93- 46', 'JOSÉ GARCÍA', NULL),
('CT27', 'JUGUETES EL BARATO', 'VÍA AUGUSTA 245', 'BARCELONA', '(933) 48- 69- 84', 'ELVIRA IGLESIAS', NULL),
('CT28', 'CONFECCIONES HERMINIA', 'CORRIDA 345', 'GIJÓN', '(985) 59- 73- 15', 'ABEL GONZÁLEZ', NULL),
('CT30', 'BAZAR EL ARGENTINO', 'ATOCHA 55', 'MADRID', '(912) 49- 59- 73', 'ADRIÁN ÁLVAREZ', NULL),
('CT31', 'LA TIENDA ELEGANTE', 'EL COMENDADOR 67', 'ZARAGOZA', '(975) 69- 40- 35', 'JOSÉ PASCUAL', NULL),
('CT32', 'DEPORTES NAUTICOS GARCÍA', 'JUAN FERNÁNDEZ 89', 'ÁVILA', '(920) 26- 86- 48', 'JUAN CONRADO', NULL),
('CT33', 'CONFECCIONES RUIZ', 'LLOBREGAT 345', 'BARCELONA', '(934) 58- 76- 15', 'CARLOS SANZ', NULL),
('CT34', 'BAZAR LA FARAONA', 'CASTILLA Y LEÓN 34', 'MADRID', '(915) 48- 36- 27', 'ANGEL SANTAMARÍA', NULL),
('CT35', 'FERRETERÍA EL MARTILLO', 'CASTELLANOS 205', 'SALAMANCA', '(923) 54- 89- 65', 'JOAQUÍN FERNANDEZ', NULL),
('CT36', 'JUGUETES EDUCATIVOS SANZ', 'ORENSE 89', 'MADRID', '(916) 87- 23- 54', 'PEDRO IGLESIAS', NULL),
('CT37', 'ALMACENES FERNANDEZ', 'ANTÓN 67', 'TERUEL', '(978) 56- 40- 25', 'MARIA ARDANZA', NULL),
('CT38', 'CONFECCIONES MÓNICA', 'MOTORES 67', 'BARCELONA', '(935) 68- 12- 45', 'PEDRO SERRANO', NULL),
('CT39', 'FERRETERÍA LIMA', 'VALLECAS 45', 'MADRID', '(913) 53- 27- 85', 'LUIS GARCÍA', NULL),
('CT40', 'DEPORTES EL BRASILEÑO', 'ABEL MARTÍNEZ 67', 'SALAMANCA', '(921) 54- 87- 62', 'CARLOS GÓMEZ', NULL),
('CT84', 'EJEMPLO', 'P BOTANICO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuarios`
--

DROP TABLE IF EXISTS `datos_usuarios`;
CREATE TABLE IF NOT EXISTS `datos_usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(25) DEFAULT NULL,
  `APELLIDO` varchar(40) DEFAULT NULL,
  `DIRECCION` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_usuarios`
--

INSERT INTO `datos_usuarios` (`ID`, `NOMBRE`, `APELLIDO`, `DIRECCION`) VALUES
(1, 'Ana ', 'GomeS', 'Vallarta'),
(3, 'Sandra', 'Martinez', 'Hidalgo'),
(5, 'Eddy', 'Rivera', 'Cerrada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `NUMERODEPEDIDO` int(4) NOT NULL DEFAULT 0,
  `CODIGOCLIENTE` varchar(4) DEFAULT NULL,
  `FECHADEPEDIDO` varchar(10) DEFAULT NULL,
  `FORMADEPAGO` varchar(8) DEFAULT NULL,
  `DESCUENTO` decimal(3,2) DEFAULT NULL,
  `ENVIADO` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`NUMERODEPEDIDO`),
  KEY `CÓDIGOCLIENTE` (`CODIGOCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`NUMERODEPEDIDO`, `CODIGOCLIENTE`, `FECHADEPEDIDO`, `FORMADEPAGO`, `DESCUENTO`, `ENVIADO`) VALUES
(1, 'CT01', '11/03/2000', 'CONTADO', '0.02', 'VERDADERO'),
(3, 'CT23', '18/03/2000', 'APLAZADO', '0.06', 'FALSO'),
(5, 'CT25', '31/03/2000', 'CONTADO', '0.09', 'FALSO'),
(7, 'CT12', '12/04/2000', 'CONTADO', '0.07', 'FALSO'),
(8, 'CT01', '15/04/2000', 'TARJETA', '0.02', 'VERDADERO'),
(9, 'CT21', '21/04/2000', 'CONTADO', '0.04', 'FALSO'),
(11, 'CT04', '01/05/2001', 'CONTADO', '0.08', 'VERDADERO'),
(12, 'CT06', '19/05/2001', 'CONTADO', '0.09', 'VERDADERO'),
(13, 'CT13', '30/04/2000', 'APLAZADO', '0.03', 'FALSO'),
(16, 'CT25', '11/05/2001', 'CONTADO', '0.12', 'FALSO'),
(19, 'CT10', '22/05/2002', 'CONTADO', '0.07', 'VERDADERO'),
(21, 'CT16', '28/05/2001', 'CONTADO', '0.03', 'FALSO'),
(22, 'CT07', '31/05/2000', 'TARJETA', '0.05', 'VERDADERO'),
(25, 'CT18', '02/06/2000', 'CONTADO', '0.06', 'FALSO'),
(26, 'CT09', '04/06/2001', 'APLAZADO', '0.07', 'VERDADERO'),
(27, 'CT34', '06/06/2000', 'CONTADO', '0.04', 'FALSO'),
(28, 'CT28', '08/06/2000', 'APLAZADO', '0.08', 'FALSO'),
(29, 'CT30', '02/04/2001', 'TARJETA', '0.06', 'FALSO'),
(30, 'CT02', '15/08/2000', 'CONTADO', '0.06', 'VERDADERO'),
(31, 'CT30', '08/06/2000', 'TARJETA', '0.05', 'VERDADERO'),
(32, 'CT14', '20/06/2001', 'APLAZADO', '0.06', 'FALSO'),
(34, 'CT26', '23/06/2002', 'TARJETA', '0.05', 'FALSO'),
(35, 'CT26', '30/06/2001', 'CONTADO', '0.06', 'FALSO'),
(37, 'CT24', '02/07/2001', 'TARJETA', '0.03', 'VERDADERO'),
(39, 'CT20', '08/07/2001', 'TARJETA', '0.06', 'VERDADERO'),
(40, 'CT04', '12/07/2002', 'CONTADO', '0.12', 'FALSO'),
(42, 'CT34', '15/07/2002', 'APLAZADO', '0.07', 'VERDADERO'),
(43, 'CT09', '18/07/2001', 'CONTADO', '0.07', 'FALSO'),
(44, 'CT34', '20/07/2002', 'APLAZADO', '0.04', 'FALSO'),
(45, 'CT30', '22/07/2002', 'TARJETA', '0.07', 'FALSO'),
(46, 'CT31', '25/07/2002', 'CONTADO', '0.06', 'FALSO'),
(47, 'CT34', '31/07/2000', 'APLAZADO', '0.08', 'FALSO'),
(48, 'CT18', '30/08/2002', 'CONTADO', '0.03', 'FALSO'),
(49, 'CT28', '02/09/2002', 'CONTADO', '0.03', 'FALSO'),
(50, 'CT09', '05/09/2002', 'APLAZADO', '0.08', 'FALSO'),
(51, 'CT09', '05/09/2002', 'CONTADO', '0.05', 'VERDADERO'),
(63, 'CT28', '10/09/2000', 'CONTADO', '0.09', 'FALSO'),
(72, 'CT01', '18/08/2002', 'CONTADO', '0.05', 'VERDADERO'),
(73, 'CT01', '02/08/2001', 'CONTADO', '0.07', 'FALSO'),
(74, 'CT01', '17/09/2002', 'APLAZADO', '0.08', 'FALSO'),
(75, 'CT01', '30/09/2002', 'TARJETA', '0.12', 'FALSO'),
(76, 'CT01', '19/10/2002', 'CONTADO', '0.04', 'VERDADERO'),
(77, 'CT01', '28/10/2000', 'CONTADO', '0.05', 'FALSO'),
(79, 'CT34', '12/12/2000', 'CONTADO', '0.05', 'FALSO'),
(82, 'CT84', '11/03/2000', NULL, NULL, NULL),
(85, 'CT04', '23/12/2002', 'TARJETA', '0.04', 'FALSO'),
(86, 'CT09', '24/12/2001', 'APLAZADO', '0.03', 'FALSO'),
(98, 'CT01', '27/12/2001', 'CONTADO', '0.08', 'VERDADERO'),
(102, 'CT06', '12/01/2001', 'CONTADO', '0.07', 'VERDADERO'),
(103, 'CT02', '24/01/2001', 'CONTADO', '0.04', 'FALSO'),
(105, 'CT30', '01/01/2001', 'APLAZADO', '0.09', 'FALSO'),
(5005, 'CT30', '10/08/2002', 'TARJETA', '0.00', 'VERDADERO'),
(5050, 'CT30', '27/03/2002', 'TARJETA', '0.00', 'VERDADERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `CODIGOARTICULO` varchar(11) NOT NULL,
  `SECCION` varchar(10) DEFAULT NULL,
  `NOMBREARTICULO` varchar(20) DEFAULT NULL,
  `FECHA` varchar(10) DEFAULT NULL,
  `PAISDEORIGEN` varchar(9) DEFAULT NULL,
  `PRECIO` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`CODIGOARTICULO`, `SECCION`, `NOMBREARTICULO`, `FECHA`, `PAISDEORIGEN`, `PRECIO`) VALUES
('0', 'CERÁMICA', 'Tubos', '1997-03-04', 'China', '29.9'),
('0', 'CERÁMICA', 'Plato Decorativo', '1997-06-07', 'China', '45,075907828784'),
('0', 'CERÁMICA', 'Juego de te', '1997-01-15', 'China', '36,060726263027'),
('0', 'CERÁMICA', 'Cenicero', '1997-07-02', 'Japón', '16,455711418028'),
('0', 'CERÁMICA', 'Maceta', '1997-02-23', 'España', '24,202757443535'),
('0', 'CERÁMICA', 'Jarra china', '1997-09-02', 'China', '106,47530441263'),
('0', 'CONFECCIÓN', 'Pantalón Señora', '1997-05-01', 'Marruecos', '145,19250417703'),
('0', 'CONFECCIÓN', 'Camisa Caballero', '1997-08-11', 'España', '55,942206676042'),
('0', 'CONFECCIÓN', 'Blusa Sra.', '1997-03-18', 'China', '84,213816066256'),
('0', 'CONFECCIÓN', 'Abrigo Sra', '1997-05-03', 'Marruecos', '300,06130323465'),
('0', 'CONFECCIÓN', 'Cinturón de piel', '1997-05-12', 'España', '3,6060726263027'),
('0', 'DEPORTE', 'Raqueta Tenis', '1997-03-20', 'Usa', '77,891168728138'),
('0', 'DEPORTE', 'Chándal', '1997-09-13', 'Usa', '193,39367494861'),
('0', 'DEPORTE', 'Pistola Olímpica', '1997-05-23', 'Suecia', '38,945584364069'),
('0', 'DEPORTE', 'Monopatín', '1997-11-11', 'Marruecos', '93,036673758609'),
('0', 'DEPORTE', 'Balón baloncesto', '1997-06-25', 'Japón', '62,727633334535'),
('0', 'DEPORTE', 'Balón Fútbol', '1997-07-05', 'España', '36,595627035929'),
('0', 'FERRETERÍA', 'Destornillador', '1997-10-22', 'España', '5,523301239287'),
('0', 'FERRETERÍA', 'Serrucho', '1997-03-23', 'Francia', '25,170386931593'),
('0', 'FERRETERÍA', 'Llave Inglesa', '1997-04-23', 'Usa', '20,332239491303'),
('AR22', 'FERRETERÍA', 'Martillo', '1997-09-04', 'España', '10'),
('0', 'FERRETERÍA', 'Destornillador', '1997-02-20', 'Francia', '7,5487120310603'),
('0', 'FERRETERÍA', 'Lima Grande', '1997-08-10', 'España', '18,390970394144'),
('0', 'FERRETERÍA', 'Juego de brocas', '1997-07-04', 'Taiwán', '12,579183344753'),
('0', 'JUGUETERÍA', 'Coche Teledirigido', '1997-05-26', 'Marruecos', '132,87175603717'),
('0', 'JUGUETERÍA', 'Correpasillos', '1997-04-11', 'Japón', '86,113014316108'),
('0', 'CERAMICA', 'CENIZERO', NULL, 'MEXICO', '150'),
('0', 'JUGUETERÍA', 'Muñeca Andadora', '1997-10-04', 'España', '87,549433245586'),
('0', 'JUGUETERÍA', 'Fuerte de soldados', '1997-11-25', 'Japón', '119,75166179847'),
('0', 'JUGUETERÍA', 'Pistola con sonidos', '1997-02-15', 'España', '47,708340845985'),
('0', 'JUGUETERÍA', 'Pie de lámpara', '1997-05-27', 'Turquía', '33,133797314678'),
('AR44', 'DEPORTES', 'RAQUETA BAGMINTON', NULL, NULL, NULL),
('AR43', 'CONFECION', 'VESTIDOSENORA', '13-04-2019', 'MEXICO', '155'),
('', '', '', '', '', ''),
('AR45', 'DEPORTES', 'BALON DE BALONMANO', NULL, 'por', '40'),
('AR46', 'DEPORTES', 'BALON DE GOLF', '2-11-2020', 'USA', '10'),
('AR47', 'CONFECCION', 'VESTIDO DE SENORA', '2-11-2020', 'JAPON', '125'),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('AR48', 'DEPORTES', 'Tennis air kobe', '2-18-2020', 'USA', '400');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`CODIGOCLIENTE`) REFERENCES `clientes` (`CODIGOCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;