
DROP TABLE IF EXISTS `game_event_battleground_holiday`;

CREATE TABLE IF NOT EXISTS `game_event_battleground_holiday` (
  `eventEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bgflag` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
