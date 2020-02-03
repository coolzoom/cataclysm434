
DROP TABLE IF EXISTS `player_classlevelstats`;

CREATE TABLE IF NOT EXISTS `player_classlevelstats` (
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `basehp` smallint(5) unsigned NOT NULL,
  `basemana` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`class`, `level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores levels stats.';
