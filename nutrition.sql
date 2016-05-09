/*
Navicat MySQL Data Transfer

Source Server         : local_db
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : nutrition

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-05-03 17:50:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `countrycode` varchar(4) NOT NULL,
  `shortname` varchar(30) NOT NULL,
  `longname` varchar(100) NOT NULL,
  `alphacode` varchar(3) NOT NULL,
  `currencyunit` varchar(50) NOT NULL,
  `note` tinytext,
  `region` varchar(70) DEFAULT NULL,
  `wb2code` varchar(3) NOT NULL,
  `accountsbaseyear` int(11) DEFAULT NULL,
  `snapricevaluation` varchar(70) DEFAULT NULL,
  `lendingcategory` varchar(30) DEFAULT NULL,
  `systemnationalaccounts` varchar(100) DEFAULT NULL,
  `pppsurveyyear` int(11) DEFAULT NULL,
  `balancesofpaypament` varchar(100) DEFAULT NULL,
  `externaldebtreportstatus` varchar(45) DEFAULT NULL,
  `systemoftrade` varchar(45) DEFAULT NULL,
  `governmentaccounting` varchar(45) DEFAULT NULL,
  `imfdatadissemination` varchar(90) DEFAULT NULL,
  `latestpopulationcensus` int(11) DEFAULT NULL,
  `latesthouseholdsurvey` varchar(120) DEFAULT NULL,
  `sourceofdata` varchar(120) DEFAULT NULL,
  `vitalregcomplete` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`countrycode`),
  UNIQUE KEY `wb2code_UNIQUE` (`wb2code`),
  UNIQUE KEY `alphacode_UNIQUE` (`alphacode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('ARG', 'Argentina', 'República Argentina', 'AR', 'Peso Argentino', 'El año de referencia ha cambiado a 2004 .', 'América Latina y el Caribe', 'AR', '2004', 'El valor añadido a precios básicos ( VAB )', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 2008.', '0', 'Manual de Balanza de Pagos , 6ª edición.', null, 'Sistema Comercial Especial', 'Gobierno Central Consolidado', 'Norma Especial de Difusión de Datos (SDDS)\n', '2010', 'Encuesta de indicadores múltiples , 2011/12', 'Encuesta Integrada de hogares (IHS) , 2013', 'Yes', 'static/images/banderas/bandera-argentina.jpg');
INSERT INTO `country` VALUES ('BOL', 'Bolivia', 'Estado Plurinacional de Bolivia', 'BO', 'Boliviano', null, 'América Latina y el Caribe', 'BO', '1990', 'El valor añadido a precios básicos ( VAB )\n', 'Blend', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1968', '2011', 'Manual de Balanza de Pagos , 6ª edición .', 'Actual', 'Sistema General de Comercio', 'Gobierno Central Consolidado', 'Sistema General de Divulgación de Datos (SGDD)', '2012', 'Encuesta de Demografía y Salud de 2008', 'Encuesta Integrada de hogares (IHS) , 2013', null, 'static/images/banderas/bandera-bolivia.jpg');
INSERT INTO `country` VALUES ('BRA', 'Brasil', 'República Federativa del Brasil', 'BR', 'Real', 'Sobre la base de estadísticas oficiales del gobierno , el nuevo año de referencia es 2000.', 'América Latina y el Caribe', 'BR', '1995', 'El valor añadido a precios básicos ( VAB )', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993', '2011', 'Manual de Balanza de Pagos , 6ª edición.', 'Actual', 'Sistema Comercial Especial', 'Gobierno Central Consolidado', 'Norma Especial de Difusión de Datos (SDDS)', '2010', 'Encuesta Mundial de la Salud, 2003', 'Encuesta Integrada de hogares (IHS) , 2013', null, 'static/images/banderas/bandera-brasil.jpg');
INSERT INTO `country` VALUES ('CHL', 'Chile', 'Republica de Chile', 'CL', 'Peso Chileno', null, 'América Latina y el Caribe', 'CL', '2008', 'El valor añadido a precios básicos ( VAB )', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993\n', '2011', 'Manual de Balanza de Pagos , 6ª edición.\n', '\n', 'Sistema General de Comercio\n', 'Gobierno Central Consolidado\n', 'Norma Especial de Difusión de Datos (SDDS)\n', '2012', null, 'Encuesta Integrada de hogares (IHS) , 2013', 'Yes', 'static/images/banderas/bandera-chile.jpg');
INSERT INTO `country` VALUES ('COL', 'Colombia', 'Republica de Colombia\n', 'CO', 'Peso Colombiano\n', null, 'América Latina y el Caribe\n', 'CO', '2005', 'El valor añadido a precios básicos ( VAB )\n', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993\n', '2011', 'Manual de Balanza de Pagos , 6ª edición.\n', 'Actual\n', 'Sistema Comercial Especial\n', 'Gobierno Central Consolidado\n', 'Norma Especial de Difusión de Datos (SDDS)\n', '2006', 'Encuesta de Demografía y Salud de 2015\n', 'Encuesta Integrada de hogares (IHS) , 2014\n', null, 'static/images/banderas/bandera-colombia.jpg');
INSERT INTO `country` VALUES ('ECU', 'Ecuador', 'Republica de Ecuador\n', 'EC', 'Dollar U.S.\n', 'Las cuentas nacionales se han revisado a partir de 1965 en base a los datos oficiales del gobierno ; el nuevo año base es 2007. Los grandes cambios ascendentes se deben a un método mejorado para el cálculo del PIB nominal .\n', 'América Latina y el Caribe\n', 'EC', '2007', 'El valor añadido a precios básicos ( VAB )\n', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 2008\n', '2011', 'Manual de Balanza de Pagos , 6ª edición.\n', 'Actual\n', 'Sistema Comercial Especial\n', 'Gobierno Central Presupuestario\n', 'Norma Especial de Difusión de Datos (SDDS)\n', '2010', 'Encuesta de Salud Reproductiva de 2004\n', 'Encuesta Integrada de hogares (IHS) , 2014\n', null, 'static/images/banderas/bandera-ecuador.jpg');
INSERT INTO `country` VALUES ('PER', 'Peru', 'Republica de Peru', 'PE', 'Nuevo Sol Peruano', 'El nuevo año base es 2007 .', 'América Latina y el Caribe', 'PE', '2007', 'El valor añadido a precios básicos ( VAB )', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993', '2011', 'Manual de Balanza de Pagos , 6ª edición.', 'Actual', 'Sistema Comercial Especial', 'Gobierno Central Consolidado', 'Norma Especial de Difusión de Datos (SDDS)', '2007', 'Continua Encuesta de Demografía y Salud de 2014', 'Encuesta Integrada de hogares (IHS) , 2014', null, 'static/images/banderas/bandera-peru.png');
INSERT INTO `country` VALUES ('PRY', 'Paraguay', 'Republica de Paraguay', 'PY', 'Guarani paraguayo', 'Datos de las cuentas nacionales se han revisado desde 1960 en adelante. La metodología y el año base no han cambiado, pero la salida de dos centrales hidroeléctricas (compartido con los países vecinos) se ha añadido el aumento del PIB', 'América Latina y el Caribe', 'PY', '1994', 'El valor añadido a precios básicos ( VAB )', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993', '2011', 'Manual de Balanza de Pagos , 6ª edición.', 'Actual', 'Sistema General de Comercio', 'Gobierno Central Consolidado', 'Sistema General de Divulgación de Datos (SGDD )\n', '2012', 'Encuesta de Salud Reproductiva de 2008', 'Encuesta Integrada de hogares (IHS) , 2014', null, 'static/images/banderas/bandera-paraguay.png');
INSERT INTO `country` VALUES ('URY', 'Uruguay', 'Republica Oriental del Uruguay', 'UY', 'Peso Uruguayo', 'En 2011, el Banco Central revisó datos de las cuentas nacionales para el año 2006 en adelante.', 'América Latina y el Caribe', 'UY', '2005', 'El valor añadido a precios básicos ( VAB )\n', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993', '2011', 'Manual de Balanza de Pagos , 6ª edición.', null, 'Sistema Comercial Especial\n', 'Gobierno Central Consolidado', 'Norma Especial de Difusión de Datos (SDDS)', '2011', 'Encuesta de indicadores múltiples , 2012/13', 'Encuesta Integrada de hogares (IHS) , 2014', 'Si', 'static/images/banderas/bandera-uruguay.jpg');
INSERT INTO `country` VALUES ('VEN', 'Venezuela', 'República Bolivariana de VenezuelaVE\n', 'VE', 'Bolivar Fuerte', null, 'América Latina y el Caribe', 'VE', '1997', 'El valor añadido a precios básicos ( VAB )\n', 'IBRD', 'El país utiliza el Sistema de la metodología de Cuentas Nacionales de 1993', '2011', 'Manual de Balanza de Pagos , 6ª edición.', null, 'Sistema General de Comercio', 'Gobierno Central Consolidado', 'Sistema General de Divulgación de Datos (SGDD )', '2011', 'Encuesta sobre indicadores múltiples de 2000', 'Encuesta Integrada de hogares (IHS) , 2013', 'Si', 'static/images/banderas/bandera-venezuela.jpg');

-- ----------------------------
-- Table structure for countryyseries
-- ----------------------------
DROP TABLE IF EXISTS `countryyseries`;
CREATE TABLE `countryyseries` (
  `countrycode` varchar(4) NOT NULL,
  `seriescode` varchar(30) NOT NULL,
  PRIMARY KEY (`countrycode`,`seriescode`),
  KEY `fk_Country_has_Series_Series1_idx` (`seriescode`),
  KEY `fk_Country_has_Series_Country_idx` (`countrycode`),
  CONSTRAINT `fk_Country_has_Series_Country` FOREIGN KEY (`countrycode`) REFERENCES `country` (`countrycode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Country_has_Series_Series1` FOREIGN KEY (`seriescode`) REFERENCES `series` (`seriescode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countryyseries
-- ----------------------------
INSERT INTO `countryyseries` VALUES ('ARG', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('ARG', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('ARG', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('ARG', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('ARG', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('ARG', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('ARG', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('ARG', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('BOL', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('BOL', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('BOL', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('BOL', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('BOL', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('BOL', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('BOL', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('BOL', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('BRA', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('BRA', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('BRA', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('BRA', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('BRA', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('BRA', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('BRA', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('BRA', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('CHL', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('CHL', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('CHL', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('CHL', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('CHL', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('CHL', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('CHL', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('CHL', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('COL', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('COL', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('COL', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('COL', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('COL', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('COL', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('COL', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('COL', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('ECU', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('ECU', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('ECU', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('ECU', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('ECU', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('ECU', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('ECU', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('ECU', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('PER', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('PER', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('PER', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('PER', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('PER', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('PER', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('PER', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('PER', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('PRY', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('PRY', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('PRY', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('PRY', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('PRY', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('PRY', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('PRY', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('PRY', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('URY', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('URY', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('URY', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('URY', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('URY', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('URY', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('URY', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('URY', 'SP.DYN.SMAM.MA');
INSERT INTO `countryyseries` VALUES ('VEN', 'SH.DYN.AIDS');
INSERT INTO `countryyseries` VALUES ('VEN', 'SH.MED.BEDS.ZS');
INSERT INTO `countryyseries` VALUES ('VEN', 'SH.MED.CMHW.P3');
INSERT INTO `countryyseries` VALUES ('VEN', 'SH.STA.DIAB.ZS');
INSERT INTO `countryyseries` VALUES ('VEN', 'SH.TBS.INCD');
INSERT INTO `countryyseries` VALUES ('VEN', 'SP.DYN.LE00.IN');
INSERT INTO `countryyseries` VALUES ('VEN', 'SP.DYN.SMAM.FE');
INSERT INTO `countryyseries` VALUES ('VEN', 'SP.DYN.SMAM.MA');

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `countrycode` varchar(4) NOT NULL,
  `seriescode` varchar(30) NOT NULL,
  `codAnio` int(11) NOT NULL,
  `value` decimal(12,5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`countrycode`,`seriescode`,`codAnio`),
  KEY `fk_Year_has_Data_Data1_idx` (`countrycode`,`seriescode`),
  KEY `fk_Year_has_Data_Year1_idx` (`codAnio`),
  CONSTRAINT `fk_Year_has_Data_Data1` FOREIGN KEY (`countrycode`, `seriescode`) REFERENCES `countryyseries` (`countrycode`, `seriescode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Year_has_Data_Year1` FOREIGN KEY (`codAnio`) REFERENCES `year` (`codAnio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2005', '0084000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2006', '0088000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2007', '0093000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2008', '0098000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2009', '0100000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2010', '0110000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2011', '0110000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2012', '0120000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2013', '0120000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2014', '0120000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2005', '0000004.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2010', '0000004.50000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2011', '0000004.50000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2012', '0000004.70000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.STA.DIAB.ZS', '2015', '0000006.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2005', '0000031.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2006', '0000029.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2007', '0000027.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2008', '0000026.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2009', '0000025.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2010', '0000025.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2011', '0000024.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2012', '0000024.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2013', '0000024.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2014', '0000024.00000');
INSERT INTO `data` VALUES ('ARG', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2005', '0000074.68780');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2006', '0000074.84990');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2007', '0000075.00905');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2008', '0000075.16627');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2009', '0000075.32456');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2010', '0000075.48498');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2011', '0000075.64905');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2012', '0000075.81624');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2013', '0000075.98610');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2014', '0000076.15861');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2010', '0000024.60000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2010', '0000026.60000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ARG', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2005', '0011000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2006', '0012000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2007', '0012000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2008', '0013000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2009', '0014000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2010', '0015000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2011', '0016000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2012', '0016000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2013', '0017000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2014', '0017000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2006', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2007', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2008', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2009', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2011', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2012', '0000001.10000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.STA.DIAB.ZS', '2015', '0000007.50000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2005', '0000158.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2006', '0000153.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2007', '0000148.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2008', '0000144.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2009', '0000139.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2010', '0000135.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2011', '0000131.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2012', '0000127.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2013', '0000123.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2014', '0000120.00000');
INSERT INTO `data` VALUES ('BOL', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2005', '0000063.53978');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2006', '0000064.11495');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2007', '0000064.69412');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2008', '0000065.27380');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2009', '0000065.84800');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2010', '0000066.40776');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2011', '0000066.94256');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2012', '0000067.44546');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2013', '0000067.91344');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2014', '0000068.34400');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2008', '0000022.70000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2012', '0000024.10000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2008', '0000025.30000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2012', '0000026.60000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BOL', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2005', '0000002.40000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2009', '0000002.40000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2010', '0000002.40000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2011', '0000002.30000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2012', '0000002.30000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.STA.DIAB.ZS', '2015', '0000010.40000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2005', '0000051.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2006', '0000050.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2007', '0000049.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2008', '0000046.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2009', '0000049.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2010', '0000046.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2011', '0000047.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2012', '0000045.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2013', '0000045.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2014', '0000044.00000');
INSERT INTO `data` VALUES ('BRA', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2005', '0000071.83963');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2006', '0000072.13173');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2007', '0000072.41483');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2008', '0000072.69541');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2009', '0000072.97802');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2010', '0000073.26415');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2011', '0000073.55234');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2012', '0000073.83959');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2013', '0000074.12244');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2014', '0000074.40188');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2010', '0000029.70000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2010', '0000031.90000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('BRA', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2005', '0025000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2006', '0027000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2007', '0028000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2008', '0030000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2009', '0031000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2010', '0033000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2011', '0035000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2012', '0036000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2013', '0038000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2014', '0039000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2005', '0000002.30000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2006', '0000002.30000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2009', '0000002.10000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2010', '0000002.10000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2011', '0000002.10000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.STA.DIAB.ZS', '2015', '0000010.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2005', '0000017.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2006', '0000017.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2007', '0000017.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2008', '0000017.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2009', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2010', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2011', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2012', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2013', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2014', '0000016.00000');
INSERT INTO `data` VALUES ('CHL', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2005', '0000078.63829');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2006', '0000078.97917');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2007', '0000079.31354');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2008', '0000079.64090');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2009', '0000079.96080');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2010', '0000080.27580');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2011', '0000080.58698');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2012', '0000080.89485');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2013', '0000081.19793');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2014', '0000081.49620');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2006', '0000026.10000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2011', '0000027.40000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2006', '0000028.90000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2011', '0000029.30000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('CHL', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2005', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2006', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2007', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2008', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2009', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2010', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2011', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2012', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2013', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2014', '0120000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2006', '0000001.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2007', '0000001.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2011', '0000001.40000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2012', '0000001.50000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SH.STA.DIAB.ZS', '2015', '0000010.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2005', '0000038.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2006', '0000038.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2007', '0000037.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2008', '0000036.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2009', '0000035.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2010', '0000034.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2011', '0000034.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2012', '0000033.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2013', '0000032.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2014', '0000033.00000');
INSERT INTO `data` VALUES ('COL', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2005', '0000072.26393');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2006', '0000072.49144');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2007', '0000072.70551');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2008', '0000072.90717');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2009', '0000073.09695');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2010', '0000073.27785');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2011', '0000073.45480');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2012', '0000073.63078');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2013', '0000073.80973');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2014', '0000073.99315');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2005', '0000023.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2006', '0000023.10000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2010', '0000022.30000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2005', '0000026.90000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2006', '0000026.50000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2010', '0000026.80000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('COL', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2005', '0028000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2006', '0028000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2007', '0028000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2008', '0028000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2009', '0029000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2010', '0030000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2011', '0030000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2012', '0031000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2013', '0032000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2014', '0032000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2008', '0000001.50000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2009', '0000001.50000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2010', '0000001.60000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2011', '0000001.60000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.STA.DIAB.ZS', '2015', '0000009.20000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2005', '0000070.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2006', '0000067.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2007', '0000063.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2008', '0000061.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2009', '0000060.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2010', '0000059.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2011', '0000059.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2012', '0000059.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2013', '0000056.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2014', '0000054.00000');
INSERT INTO `data` VALUES ('ECU', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2005', '0000074.13798');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2006', '0000074.32022');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2007', '0000074.49502');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2008', '0000074.66783');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2009', '0000074.84461');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2010', '0000075.02980');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2011', '0000075.22644');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2012', '0000075.43300');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2013', '0000075.64851');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2014', '0000075.87249');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2010', '0000021.80000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2010', '0000021.80000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('ECU', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2005', '0076000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2006', '0075000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2007', '0073000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2008', '0072000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2009', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2010', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2011', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2012', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2013', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2014', '0070000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2007', '0000001.20000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2008', '0000001.50000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2009', '0000001.50000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2010', '0000001.50000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2011', '0000001.50000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2012', '0000001.50000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SH.STA.DIAB.ZS', '2015', '0000006.90000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2005', '0000150.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2006', '0000146.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2007', '0000143.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2008', '0000139.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2009', '0000136.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2010', '0000132.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2011', '0000129.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2012', '0000126.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2013', '0000123.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2014', '0000120.00000');
INSERT INTO `data` VALUES ('PER', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2005', '0000072.45851');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2006', '0000072.74344');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2007', '0000072.99695');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2008', '0000073.22502');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2009', '0000073.43615');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2010', '0000073.63980');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2011', '0000073.84498');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2012', '0000074.05766');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2013', '0000074.28385');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2014', '0000074.52554');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2005', '0000024.40000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2007', '0000023.50000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2008', '0000024.10000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2009', '0000023.20000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2010', '0000023.10000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2011', '0000023.60000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2012', '0000023.50000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2005', '0000028.20000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2007', '0000026.60000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2008', '0000028.20000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2009', '0000027.50000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2010', '0000027.80000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2011', '0000028.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2012', '0000027.50000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PER', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2005', '0006500.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2006', '0007400.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2007', '0008300.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2008', '0009200.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2009', '0010000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2010', '0011000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2011', '0012000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2012', '0014000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2013', '0015000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2014', '0016000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2005', '0000001.20000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2006', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2007', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2008', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2009', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2010', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2011', '0000001.30000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.STA.DIAB.ZS', '2015', '0000009.70000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2005', '0000049.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2006', '0000049.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2007', '0000048.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2008', '0000048.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2009', '0000047.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2010', '0000046.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2011', '0000046.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2012', '0000045.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2013', '0000044.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2014', '0000043.00000');
INSERT INTO `data` VALUES ('PRY', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2005', '0000071.28632');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2006', '0000071.49185');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2007', '0000071.69483');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2008', '0000071.89883');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2009', '0000072.10232');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2010', '0000072.30129');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2011', '0000072.48720');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2012', '0000072.65400');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2013', '0000072.79917');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2014', '0000072.92171');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('PRY', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2005', '0014000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2006', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2007', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2008', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2009', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2010', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2011', '0015000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2012', '0014000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2013', '0014000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2014', '0014000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2005', '0000002.40000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2006', '0000002.90000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2007', '0000002.90000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2010', '0000001.20000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2011', '0000003.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2012', '0000002.50000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SH.STA.DIAB.ZS', '2015', '0000006.10000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2005', '0000021.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2006', '0000022.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2007', '0000022.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2008', '0000023.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2009', '0000024.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2010', '0000025.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2011', '0000026.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2012', '0000027.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2013', '0000029.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2014', '0000030.00000');
INSERT INTO `data` VALUES ('URY', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2005', '0000075.63471');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2006', '0000075.79641');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2007', '0000075.95102');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2008', '0000076.10107');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2009', '0000076.24859');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2010', '0000076.39461');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2011', '0000076.54120');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2012', '0000076.68839');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2013', '0000076.83620');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2014', '0000076.98615');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2011', '0000024.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2011', '0000026.50000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('URY', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2005', '0071000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2006', '0076000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2007', '0081000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2008', '0085000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2009', '0089000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2010', '0092000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2011', '0096000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2012', '0099000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2013', '0100000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2014', '0100000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.DYN.AIDS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2007', '0000001.30000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2009', '0000001.10000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2011', '0000000.90000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.BEDS.ZS', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.MED.CMHW.P3', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.STA.DIAB.ZS', '2015', '0000012.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2005', '0000028.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2006', '0000028.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2007', '0000027.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2008', '0000027.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2009', '0000026.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2010', '0000026.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2011', '0000025.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2012', '0000025.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2013', '0000024.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2014', '0000024.00000');
INSERT INTO `data` VALUES ('VEN', 'SH.TBS.INCD', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2005', '0000073.20332');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2006', '0000073.30105');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2007', '0000073.38890');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2008', '0000073.47624');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2009', '0000073.56800');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2010', '0000073.67161');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2011', '0000073.79166');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2012', '0000073.92573');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2013', '0000074.07441');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2014', '0000074.23620');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.LE00.IN', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.FE', '2015', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2005', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2006', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2007', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2008', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2009', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2010', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2011', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2012', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2013', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2014', '0000000.00000');
INSERT INTO `data` VALUES ('VEN', 'SP.DYN.SMAM.MA', '2015', '0000000.00000');

-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series` (
  `seriescode` varchar(30) NOT NULL,
  `topic` varchar(100) DEFAULT NULL,
  `indicatorname` varchar(150) DEFAULT NULL,
  `longdefinition` longtext,
  `periodicity` varchar(30) DEFAULT NULL,
  `aggregationmethod` varchar(45) DEFAULT NULL,
  `limitationsandexceptions` longtext,
  `notes` longtext,
  `source` longtext,
  `methodogy` longtext,
  `developmentrelevance` longtext,
  `licensetype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seriescode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of series
-- ----------------------------
INSERT INTO `series` VALUES ('SH.DYN.AIDS', 'Salud : Factores de Riesgo', 'Personas mayores de 15 años, viviendo con VIH', 'Los adultos que viven con el VIH se refiere al número de personas de edades de 15 a 49 años que están infectadas con el VIH.', 'Anual', null, null, null, 'UNAIDS estimates.', null, null, 'Abierto');
INSERT INTO `series` VALUES ('SH.MED.BEDS.ZS', 'Salud: Servicios de Salud', 'Camas de hospital(por cada 1000 personas)', 'Las camas de hospital incluyen camas hospitalarias disponibles en los hospitales públicos, privados, generales y especializados y centros de rehabilitación. En la mayoría de los casos camas para cuidados agudos y crónicos están incluidos.', 'Anual', 'Peso promedio', 'Dependiendo de la fuente y medio de seguimiento, los datos pueden no ser exactamente comparables entre países. Para obtener más información, consulte la fuente original.', 'Dependiendo de la fuente y medio de seguimiento, los datos pueden no ser exactamente comparables entre países. Ver base enumerados para los detalles específicos de cada país.', 'Data are from the World Health Organization, supplemented by country data.', '\"Health systems - the combined arrangements of institutions and actions whose primary purpose is to promote, restore, or maintain health (World Health Organization, World Health Report 2000) - are increasingly being recognized as key to combating disease and improving the health status of populations. The World Bank\'s Healthy Development: Strategy for Health, Nutrition, and Population Results emphasizes the need to strengthen health systems, which are weak in many countries, in order to increase the effectiveness of programs aimed at reducing specific diseases and further reduce morbidity and mortality. To evaluate health systems, the World Health Organization (WHO) has recommended that key components - such as financing, service delivery, workforce, governance, and information - be monitored using several key indicators. The data are a subset of the key indicators. Monitoring health systems allows the effectiveness, efficiency, and equity of different health system models to be compared. Health system data also help identify weaknesses and strengths and areas that need investment, such as additional health facilities, better health information systems, or better trained human resources.\n\nAvailability and use of health services, such as hospital beds per 1,000 people, reflect both demand- and supply-side factors. In the absence of a consistent definition this is a crude indicator of the extent of physical, financial, and other barriers to health care.\"', null, 'Abierto');
INSERT INTO `series` VALUES ('SH.MED.CMHW.P3', 'Salud: Servicios de Salud', 'Doctores (por cada 1000 personas)', 'Los trabajadores de la salud incluyen varios tipos de auxiliares de salud de la comunidad, muchos de ellos con títulos ocupacionales específicas de cada país, tales como agentes de salud comunitarios, trabajadores de la educación para la salud de la comunidad, trabajadores de la salud de la familia, visitadoras de salud y los trabajadores de la salud de extensión.', 'Annual', 'Peso promedio', 'La OMS recopila datos de encuestas de hogares y de la fuerza de trabajo, los censos y registros administrativos. comparabilidad de los datos está limitada por las diferencias en las definiciones y formación del personal médico varía. Además, los recursos humanos tienden a concentrarse en las zonas urbanas, por lo que las densidades medias no ofrecen una imagen completa de personal de salud disponible para toda la población.', null, 'World Health Organization\'s Global Health Workforce Statistics, OECD, supplemented by country data.', '\"Health systems - the combined arrangements of institutions and actions whose primary purpose is to promote, restore, or maintain health (World Health Organization, World Health Report 2000) - are increasingly being recognized as key to combating disease and improving the health status of populations. The World Bank\'s Healthy Development: Strategy for Health, Nutrition, and Population Results emphasizes the need to strengthen health systems, which are weak in many countries, in order to increase the effectiveness of programs aimed at reducing specific diseases and further reduce morbidity and mortality. To evaluate health systems, the World Health Organization (WHO) has recommended that key components - such as financing, service delivery, workforce, governance, and information - be monitored using several key indicators. The data are a subset of the key indicators. Monitoring health systems allows the effectiveness, efficiency, and equity of different health system models to be compared. Health system data also help identify weaknesses and strengths and areas that need investment, such as additional health facilities, better health information systems, or better trained human resources.\n\nData on health worker (physicians, nurses and midwives, and community health workers) density show the availability of medical personnel.\"', 'La OMS estima que se necesitan al menos 2,5 médicos, enfermeras y parteras por cada 1.000 personas para proporcionar una cobertura adecuada de las intervenciones de atención primaria asociados al logro de los Objetivos de Desarrollo del Milenio (OMS, Informe Mundial de la Salud 2006).', 'Abierto');
INSERT INTO `series` VALUES ('SH.STA.DIAB.ZS', 'Salud : Factores de Riesgo', 'Prevalencia de diabetes (% población entre 25 y 79 años)', 'La prevalencia de diabetes se refiere al porcentaje de personas de 20 a 79 años que tienen diabetes tipo 1 o 2.', 'Anual', 'Peso promedio', 'La limitada disponibilidad de datos sobre el estado de salud es un obstáculo importante en la evaluación de la situación de salud en los países en desarrollo. Los datos de vigilancia se carece de muchas de las principales preocupaciones de salud pública. Las estimaciones de la prevalencia e incidencia están disponibles para algunas enfermedades, pero son a menudo poco fiables e incompleta. Las autoridades sanitarias nacionales difieren ampliamente en la capacidad y disposición para recopilar o reportar información.', null, 'International Diabetes Federation, Diabetes Atlas.', 'Diabetes, an important cause of ill health and a risk factor for other diseases in developed countries, is spreading rapidly in developing countries. Highest among the elderly, prevalence rates are rising among younger and productive populations in developing countries. Economic development has led to the spread of Western lifestyles and diet to developing countries, resulting in a substantial increase in diabetes. Without effective prevention and control programs, diabetes will likely continue to increase. Data are estimated based on sample surveys.', null, 'Abierto');
INSERT INTO `series` VALUES ('SH.TBS.INCD', 'Salud : Factores de Riesgo', 'Incidencia de TBC (por cada 100 000 personas)', 'La incidencia de la tuberculosis es el número estimado de casos nuevos y recaídas tuberculosis procedentes de un año determinado, expresada como la tasa por 100.000 habitantes. Todas las formas de TB se incluyen, incluidos los casos en personas que viven con el VIH. Las estimaciones para todos los años se calculan de la nueva información disponible y las técnicas son refinados, por lo que pueden diferir de los publicados anteriormente.', 'Anual', 'Peso promedio', '\"La limitada disponibilidad de datos sobre el estado de salud es un obstáculo importante en la evaluación de la situación de salud en los países en desarrollo. Los datos de vigilancia se carece de muchas de las principales preocupaciones de salud pública. Las estimaciones de la prevalencia e incidencia están disponibles para algunas enfermedades, pero son a menudo poco fiables e incompleta. las autoridades sanitarias nacionales difieren ampliamente en la capacidad y disposición para recopilar o reportar información. para compensar esto y mejorar la fiabilidad y la comparabilidad internacional, la Organización Mundial de la Salud (OMS) prepara las estimaciones de conformidad con los modelos epidemiológicos y estándares estadísticos.\nLímites de incertidumbre para la incidencia están disponibles en http: //data.worldbank.\"', 'Las estimaciones se presentan con intervalos de incertidumbre (ver nota al pie). Cuando se presentan los rangos, los números más bajos y más altos corresponden a los 2,5º y 97,5 percentiles de las distribuciones de resultados (generalmente de origen simulaciones). Para obtener información más detallada, consulte la fuente original.', 'World Health Organization, Global Tuberculosis Report.', 'Tuberculosis is one of the main causes of adult deaths from a single infectious agent in developing countries. In developed countries tuberculosis has reemerged largely as a result of cases among immigrants. Since tuberculosis incidence cannot be directly measured, estimates are obtained by eliciting expert opinion or are derived from measurements of prevalence or mortality.', null, 'Abierto');
INSERT INTO `series` VALUES ('SP.DYN.LE00.IN', 'Salud : Mortalidad', 'Expectativa de vida al nacer (en años)', 'La esperanza de vida al nacer indica el número de años que un recién nacido viviría si las pautas de mortalidad registradas en el momento de su nacimiento no cambian durante toda su vida.', 'Anual', 'Peso promedio', 'Series de datos anuales de World Population Prospects de la División de Población de las Naciones Unidas se interpolan los datos a partir de datos período de 5 años. Por lo tanto ellos no pueden reflejar eventos reales, tanto como los datos observados.', null, 'Derived from male and female life expectancy at birth from sources such as: (1) United Nations Population Division. World Population Prospects, (2) Census reports and other statistical publications from national statistical offices, (3) Eurostat: Demographic Statistics, (4) United Nations Statistical Division. Population and Vital Statistics Reprot (various years), (5) U.S. Census Bureau: International Database, and (6) Secretariat of the Pacific Community: Statistics and Demography Programme.', '\"Life expectancy at birth used here is the average number of years a newborn is expected to live if mortality patterns at the time of its birth remain constant in the future. It reflects the overall mortality level of a population, and summarizes the mortality pattern that prevails across all age groups in a given year. It is calculated in a period life table which reflects a snapshot of a mortality pattern of a population at a given time. It therefore does not reflect actual mortality patterns that a person actually goes through during his/her life, which can be calculated in a cohort life table.\n\nHigh mortality in young age groups significantly lowers the life expectancy at birth. But if a person survives his/her childhood of high mortality, he/she may live much longer. For example, in a population with a life expectancy at birth of 50, there may be few people dying at age 50. The life expectancy at birth may be low due to the high childhood mortality so that once a person survives his/her childhood, he/she may live much longer than 50 years.\"', 'Las tasas de mortalidad para diferentes grupos de edad (bebés, niños y adultos) y los indicadores de mortalidad general (esperanza de vida al nacer o la supervivencia de una determinada edad) son indicadores importantes del estado de salud en un país. Dado que los datos sobre la incidencia y prevalencia de las enfermedades son con frecuencia no está disponible, las tasas de mortalidad a menudo se utilizan para identificar las poblaciones vulnerables. Y son uno de los indicadores más utilizados para comparar el desarrollo socioeconómico en los países.', 'Abierto');
INSERT INTO `series` VALUES ('SP.DYN.SMAM.FE', 'Salud : Población : Dinámica', 'Edad promedio de mujeres, en su primer matrimonio.', 'La media de edad al casarse, femenino; muestra la duración media de la vida individual expresado en años entre las mujeres que se casan antes de los 50 años de edad. Es un indicador artificial calculado a partir de las categorías de estado civil de los hombres y las mujeres de 15 a 54 años de edad en el censo o encuesta actual.', 'Anual', null, 'Las estimaciones de la edad pueden ser afectados por información errónea de la edad. El estado civil no se reportan, sobre todo en las sociedades donde el divorcio o la separación no es socialmente aceptable. Las diferencias en las categorías de estado civil incluidos en el tiempo y sus definiciones limitan la comparabilidad de los datos a través del tiempo y de los países. Los datos derivados de encuestas con muestras pequeñas están sujetas a errores de muestreo.', 'Tenga en cuenta que la SMAM toma un único punto en el tiempo y calcula la edad de matrimonio desde el estado civil de la población con edades comprendidas entre 15 y 50. Este valor es diferente de la edad media de matrimonio que se calcula a partir de las tasas de primera unión en un período respectivo (comúnmente utilizado en los países con sistemas de registro de matrimonios completos) o medidas de cohorte de entrada en el primer matrimonio o unión (basado en preguntas de la encuesta retrospectivas sobre la edad a la primera unión o formación de la unión). La naturaleza retrospectiva del SMAM significa que los valores están influenciados por la edad y la mortalidad específica el estado civil y la migración.', 'United Nations, Department of Economic and Social Affairs, Population Division. World Marriage Data.', null, null, 'Abierto');
INSERT INTO `series` VALUES ('SP.DYN.SMAM.MA', 'Salud : Población : Dinámica', 'Edad promedio de hombres, en su primer matrimonio', 'La media de edad al casarse, hombres; muestra la duración media de la vida individual expresado en años entre los hombres que se casan antes de los 50 años de edad. Es un indicador artificial calculado a partir de las categorías de estado civil de los hombres y las mujeres de 15 a 54 años de edad en el censo o encuesta actual.', 'Anual', null, 'Las estimaciones de la edad pueden ser afectados por información errónea de la edad. El estado civil no se reportan, sobre todo en las sociedades donde el divorcio o la separación no es socialmente aceptable. Las diferencias en las categorías de estado civil incluidos en el tiempo y sus definiciones limitan la comparabilidad de los datos a través del tiempo y de los países. Los datos derivados de encuestas con muestras pequeñas están sujetas a errores de muestreo.', 'Tenga en cuenta que la SMAM toma un único punto en el tiempo y calcula la edad de matrimonio desde el estado civil de la población con edades comprendidas entre 15 y 50. Este valor es diferente de la edad media de matrimonio que se calcula a partir de las tasas de primera unión en un período respectivo (comúnmente utilizado en los países con sistemas de registro de matrimonios completos) o medidas de cohorte de entrada en el primer matrimonio o unión (basado en preguntas de la encuesta retrospectivas sobre la edad a la primera unión o formación de la unión). La naturaleza retrospectiva del SMAM significa que los valores están influenciados por la edad y la mortalidad específica el estado civil y la migración.', 'United Nations, Department of Economic and Social Affairs, Population Division. World Marriage Data.', null, null, 'Abierto');

-- ----------------------------
-- Table structure for year
-- ----------------------------
DROP TABLE IF EXISTS `year`;
CREATE TABLE `year` (
  `codAnio` int(11) NOT NULL,
  `descAnio` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`codAnio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of year
-- ----------------------------
INSERT INTO `year` VALUES ('2005', 'Año 2005');
INSERT INTO `year` VALUES ('2006', 'Año 2006');
INSERT INTO `year` VALUES ('2007', 'Año 2007');
INSERT INTO `year` VALUES ('2008', 'Año 2008');
INSERT INTO `year` VALUES ('2009', 'Año 2009');
INSERT INTO `year` VALUES ('2010', 'Año 2010');
INSERT INTO `year` VALUES ('2011', 'Año 2011');
INSERT INTO `year` VALUES ('2012', 'Año 2012');
INSERT INTO `year` VALUES ('2013', 'Año 2013');
INSERT INTO `year` VALUES ('2014', 'Año 2014');
INSERT INTO `year` VALUES ('2015', 'Año 2015');
