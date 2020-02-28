
DROP TABLE IF EXISTS `spell_linked_spell`;

CREATE TABLE IF NOT EXISTS `spell_linked_spell` (
  `spell_trigger` mediumint(8) NOT NULL,
  `spell_effect` mediumint(8) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  UNIQUE KEY `trigger_effect_type` (`spell_trigger`, `spell_effect`, `type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell System';
