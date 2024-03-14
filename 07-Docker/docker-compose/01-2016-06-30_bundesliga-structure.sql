USE `liga`;

DROP TABLE IF EXISTS `Liga`;
CREATE TABLE `Liga` (
  `Liga_Nr` int(1) NOT NULL,
  `Verband` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Erstaustragung` date NOT NULL,
  `Meister` int(11) DEFAULT NULL,
  `Rekordspieler` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Spiele_Rekordspieler` int(11) DEFAULT NULL,
  PRIMARY KEY (`Liga_Nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Verein`;
CREATE TABLE `Verein` (
  `V_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Liga` int(1) DEFAULT NULL,
  PRIMARY KEY (`V_ID`),
  UNIQUE KEY `Name` (`Name`),
  KEY `Liga` (`Liga`),
  CONSTRAINT `Verein_ibfk_1` FOREIGN KEY (`Liga`) REFERENCES `Liga` (`Liga_Nr`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Spieler`;
CREATE TABLE `Spieler` (
  `Spieler_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vereins_ID` int(11) NOT NULL,
  `Trikot_Nr` int(11) DEFAULT NULL,
  `Spieler_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Land` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Spiele` int(11) DEFAULT NULL,
  `Tore` int(11) DEFAULT NULL,
  `Vorlagen` int(11) DEFAULT NULL,
  PRIMARY KEY (`Spieler_ID`),
  KEY `Vereins_ID` (`Vereins_ID`),
  CONSTRAINT `Spieler_ibfk_1` FOREIGN KEY (`Vereins_ID`) REFERENCES `Verein` (`V_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1818 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `Spiel`;
CREATE TABLE `Spiel` (
  `Spiel_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Spieltag` int(11) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Uhrzeit` time DEFAULT NULL,
  `Heim` int(11) NOT NULL,
  `Gast` int(11) NOT NULL,
  `Tore_Heim` int(11) DEFAULT NULL,
  `Tore_Gast` int(11) DEFAULT NULL,
  PRIMARY KEY (`Spiel_ID`),
  KEY `Heim` (`Heim`),
  KEY `Gast` (`Gast`),
  CONSTRAINT `Spiel_ibfk_1` FOREIGN KEY (`Heim`) REFERENCES `Verein` (`V_ID`),
  CONSTRAINT `Spiel_ibfk_2` FOREIGN KEY (`Gast`) REFERENCES `Verein` (`V_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



