
DROP TABLE IF EXISTS `game_event_creature`;

CREATE TABLE IF NOT EXISTS `game_event_creature` (
  `eventEntry` smallint(6) NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`, `eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
