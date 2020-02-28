
DROP TABLE IF EXISTS `game_event_model_equip`;

CREATE TABLE IF NOT EXISTS `game_event_model_equip` (
  `eventEntry` smallint(6) DEFAULT NULL,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
