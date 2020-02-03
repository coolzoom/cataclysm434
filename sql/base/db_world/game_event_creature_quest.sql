
DROP TABLE IF EXISTS `game_event_creature_quest`;

CREATE TABLE IF NOT EXISTS `game_event_creature_quest` (
  `eventEntry` smallint(5) unsigned DEFAULT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
