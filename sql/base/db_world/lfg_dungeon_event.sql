
DROP TABLE IF EXISTS `lfg_dungeon_event`;

CREATE TABLE IF NOT EXISTS `lfg_dungeon_event` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Dungeon entry from dbc',
  `eventEntry` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Associated to Dungeon Finder',
  PRIMARY KEY (`dungeonId`, `eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
