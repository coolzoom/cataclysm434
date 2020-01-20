
DROP TABLE IF EXISTS `instance`;

CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `isLFG` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hardMode` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`) USING BTREE,
  KEY `resettime` (`resettime`) USING BTREE,
  KEY `difficulty` (`difficulty`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
