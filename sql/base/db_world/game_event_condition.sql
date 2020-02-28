
DROP TABLE IF EXISTS `game_event_condition`;

CREATE TABLE IF NOT EXISTS `game_event_condition` (
  `eventEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `req_num` float DEFAULT '0',
  `max_world_state_field` smallint(5) unsigned NOT NULL DEFAULT '0',
  `done_world_state_field` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`eventEntry`, `condition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
