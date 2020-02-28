
DROP TABLE IF EXISTS `spell_required`;

CREATE TABLE IF NOT EXISTS `spell_required` (
  `spell_id` mediumint(8) NOT NULL DEFAULT '0',
  `req_spell` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell_id`, `req_spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell Additinal Data';
