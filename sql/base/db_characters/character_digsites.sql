DROP TABLE IF EXISTS `character_digsites`;

CREATE TABLE `character_digsites` (
  `guid` int(10) unsigned NOT NULL,
  `entry` int(10) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
