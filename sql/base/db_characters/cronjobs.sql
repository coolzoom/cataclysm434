DROP TABLE IF EXISTS `cronjobs`;

CREATE TABLE `cronjobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(11) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
