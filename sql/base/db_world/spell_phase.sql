
DROP TABLE IF EXISTS `spell_phase`;

CREATE TABLE IF NOT EXISTS `spell_phase` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `phasemask` bigint(20) unsigned NOT NULL DEFAULT '1',
  `terrainswapmap` smallint(5) unsigned NOT NULL DEFAULT '0',
  `worldmapareaswap` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
