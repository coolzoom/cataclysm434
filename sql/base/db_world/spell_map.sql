
DROP TABLE IF EXISTS `spell_map`;

CREATE TABLE IF NOT EXISTS `spell_map` (
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `map` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aura_spell` mediumint(8) NOT NULL DEFAULT '0',
  `racemask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `autocast` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell`, `map`, `quest_start`, `quest_start_active`, `aura_spell`, `racemask`, `gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
