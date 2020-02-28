
DROP TABLE IF EXISTS `phase_area`;

CREATE TABLE IF NOT EXISTS `phase_area` (
  `areaId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start_status` int(11) NOT NULL DEFAULT '64',
  `quest_end_status` int(11) NOT NULL DEFAULT '11',
  `flags` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`areaId`, `entry`, `quest_start`, `quest_end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
