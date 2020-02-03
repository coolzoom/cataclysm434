
DROP TABLE IF EXISTS `playercreateinfo_item`;

CREATE TABLE IF NOT EXISTS `playercreateinfo_item` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `amount` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`race`, `class`, `itemid`),
  KEY `playercreateinfo_race_class_index` (`race`, `class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
