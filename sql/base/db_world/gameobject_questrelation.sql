
DROP TABLE IF EXISTS `gameobject_questrelation`;

CREATE TABLE IF NOT EXISTS `gameobject_questrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
