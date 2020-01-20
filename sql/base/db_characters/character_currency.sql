DROP TABLE IF EXISTS `character_currency`;

CREATE TABLE `character_currency` (
  `guid` int(10) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `total_count` int(10) unsigned NOT NULL,
  `season_count` int(11) unsigned NOT NULL DEFAULT '0',
  `week_count` int(10) unsigned NOT NULL,
  `week_cap` int(10) unsigned NOT NULL,
  `new_cap` int(10) unsigned NOT NULL,
  `season_cap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
