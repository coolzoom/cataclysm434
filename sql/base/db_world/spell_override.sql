
DROP TABLE IF EXISTS `spell_override`;

CREATE TABLE IF NOT EXISTS `spell_override` (
  `overrideSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `affSpell` int(10) NOT NULL DEFAULT '0',
  `aura` int(10) NOT NULL DEFAULT '0',
  `comment` longtext NOT NULL,
  PRIMARY KEY (`overrideSpell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
