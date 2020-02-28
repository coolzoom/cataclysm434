
DROP TABLE IF EXISTS `game_event_quest_condition`;

CREATE TABLE IF NOT EXISTS `game_event_quest_condition` (
  `eventEntry` smallint(5) unsigned DEFAULT NULL,
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` float DEFAULT '0',
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
