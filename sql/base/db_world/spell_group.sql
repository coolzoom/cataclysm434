
DROP TABLE IF EXISTS `spell_group`;

CREATE TABLE IF NOT EXISTS `spell_group` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell System';
