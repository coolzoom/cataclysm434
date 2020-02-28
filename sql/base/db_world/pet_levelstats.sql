
DROP TABLE IF EXISTS `pet_levelstats`;

CREATE TABLE IF NOT EXISTS `pet_levelstats` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `hp` smallint(5) unsigned NOT NULL,
  `mana` smallint(5) unsigned NOT NULL,
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `mindmg` mediumint(11) NOT NULL DEFAULT '0' COMMENT 'Min base damage',
  `maxdmg` mediumint(11) NOT NULL DEFAULT '0' COMMENT 'Max base damage',
  `attackpower` mediumint(11) NOT NULL DEFAULT '0' COMMENT 'Attack power',
  `str` smallint(5) unsigned NOT NULL,
  `agi` smallint(5) unsigned NOT NULL,
  `sta` smallint(5) unsigned NOT NULL,
  `inte` smallint(5) unsigned NOT NULL,
  `spi` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`creature_entry`, `level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores pet levels stats.';
