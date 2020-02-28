
DROP TABLE IF EXISTS `spellclassoptions_dbc`;

CREATE TABLE IF NOT EXISTS `spellclassoptions_dbc` (
  `Id` int(10) unsigned NOT NULL DEFAULT '0',
  `modalNextSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `spellClassMask_1` int(10) unsigned NOT NULL DEFAULT '0',
  `spellClassMask_2` int(10) unsigned NOT NULL DEFAULT '0',
  `spellClassMask_3` int(10) unsigned NOT NULL DEFAULT '0',
  `spellClassSet` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
