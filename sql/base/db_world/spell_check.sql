
DROP TABLE IF EXISTS `spell_check`;

CREATE TABLE IF NOT EXISTS `spell_check` (
  `spellid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyName` smallint(5) NOT NULL DEFAULT '-1',
  `SpellFamilyMaskA` bigint(30) NOT NULL DEFAULT '-1',
  `SpellFamilyMaskB` int(10) NOT NULL DEFAULT '-1',
  `SpellIcon` int(10) NOT NULL DEFAULT '-1',
  `SpellVisual` int(10) NOT NULL DEFAULT '-1',
  `SpellCategory` int(10) NOT NULL DEFAULT '-1',
  `EffectType` int(10) NOT NULL DEFAULT '-1',
  `EffectAura` int(10) NOT NULL DEFAULT '-1',
  `EffectIdx` tinyint(3) NOT NULL DEFAULT '-1',
  `Name` varchar(40) NOT NULL DEFAULT '',
  `Code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`spellid`, `SpellFamilyName`, `SpellFamilyMaskA`, `SpellFamilyMaskB`, `SpellIcon`, `SpellVisual`, `SpellCategory`, `EffectType`, `EffectAura`, `EffectIdx`, `Code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
