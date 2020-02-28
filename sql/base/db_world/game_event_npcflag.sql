
DROP TABLE IF EXISTS `game_event_npcflag`;

CREATE TABLE IF NOT EXISTS `game_event_npcflag` (
  `eventEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `guid` mediumint(8) NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`, `eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
