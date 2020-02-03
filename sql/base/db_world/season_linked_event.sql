
DROP TABLE IF EXISTS `season_linked_event`;

CREATE TABLE IF NOT EXISTS `season_linked_event` (
  `season` int(3) unsigned NOT NULL DEFAULT '0',
  `event` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`season`),
  UNIQUE KEY `season` (`season`, `event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ArkDB Season linked by events system';
