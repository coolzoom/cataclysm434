
DROP TABLE IF EXISTS `game_event_prerequisite`;

CREATE TABLE IF NOT EXISTS `game_event_prerequisite` (
  `eventEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `prerequisite_event` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`eventEntry`,`prerequisite_event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
