
DROP TABLE IF EXISTS `areatrigger_tavern`;

CREATE TABLE IF NOT EXISTS `areatrigger_tavern` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';
