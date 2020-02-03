
DROP TABLE IF EXISTS `quest_poi_points`;

CREATE TABLE IF NOT EXISTS `quest_poi_points` (
  `questId` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idx` int(10) unsigned NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`, `id`, `idx`),
  KEY `questId_id` (`questId`, `id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
