
DROP TABLE IF EXISTS `character_currency_weekcap`;

CREATE TABLE `character_currency_weekcap` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `source` smallint(3) unsigned NOT NULL DEFAULT '0',
  `max_week_rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `week_cap` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
