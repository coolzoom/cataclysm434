
DROP TABLE IF EXISTS `spell_learn_spell`;

CREATE TABLE IF NOT EXISTS `spell_learn_spell` (
  `entry` mediumint(8) NOT NULL,
  `SpellID` mediumint(8) NOT NULL,
  `Active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`, `SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';
