
DROP TABLE IF EXISTS `broadcast_text_groups`;

CREATE TABLE IF NOT EXISTS `broadcast_text_groups` (
  `groupID` int(10) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupID`,`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
