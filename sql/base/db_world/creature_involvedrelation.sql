
DROP TABLE IF EXISTS `creature_involvedrelation`;

CREATE TABLE IF NOT EXISTS `creature_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System';
