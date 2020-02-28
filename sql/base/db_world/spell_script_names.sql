
DROP TABLE IF EXISTS `spell_script_names`;

CREATE TABLE IF NOT EXISTS `spell_script_names` (
  `spell_id` int(11) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  UNIQUE KEY `spell_id` (`spell_id`, `ScriptName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
