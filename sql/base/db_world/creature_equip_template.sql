
DROP TABLE IF EXISTS `creature_equip_template`;

CREATE TABLE IF NOT EXISTS `creature_equip_template` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemEntry1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';
