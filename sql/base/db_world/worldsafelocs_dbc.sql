
DROP TABLE IF EXISTS `worldsafelocs_dbc`;

CREATE TABLE IF NOT EXISTS `worldsafelocs_dbc` (
  `Id` int(10) unsigned NOT NULL,
  `MapId` int(10) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `Comment` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
