
DROP TABLE IF EXISTS `report_quest`;

CREATE TABLE IF NOT EXISTS `report_quest` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(32) unsigned NOT NULL,
  `count` int(32) unsigned NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
