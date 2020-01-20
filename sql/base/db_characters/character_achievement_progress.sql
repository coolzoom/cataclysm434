DROP TABLE IF EXISTS `character_achievement_progress`;

CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
