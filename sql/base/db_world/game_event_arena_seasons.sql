
DROP TABLE IF EXISTS `game_event_arena_seasons`;

CREATE TABLE IF NOT EXISTS `game_event_arena_seasons` (
  `eventEntry` smallint(5) unsigned DEFAULT NULL,
  `season` tinyint(3) unsigned NOT NULL COMMENT 'Arena season number',
  UNIQUE KEY `season` (`season`, `eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
