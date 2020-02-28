
DROP TABLE IF EXISTS `waypoints`;

CREATE TABLE IF NOT EXISTS `waypoints` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `point_comment` text,
  PRIMARY KEY (`entry`, `pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature waypoints';
