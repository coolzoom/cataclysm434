
DROP TABLE IF EXISTS `game_event_npc_gossip`;

CREATE TABLE IF NOT EXISTS `game_event_npc_gossip` (
  `guid` mediumint(8) NOT NULL DEFAULT '0',
  `event_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `textid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
