
DROP TABLE IF EXISTS `playercreateinfo_action`;

CREATE TABLE IF NOT EXISTS `playercreateinfo_action` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `button` tinyint(3) unsigned DEFAULT NULL,
  `action` mediumint(10) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  UNIQUE KEY `race` (`race`, `class`, `button`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';
