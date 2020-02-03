
DROP TABLE IF EXISTS `spell_proc_item_enchant`;

CREATE TABLE IF NOT EXISTS `spell_proc_item_enchant` (
  `entry` mediumint(8) unsigned NOT NULL,
  `ppmRate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
