
DROP TABLE IF EXISTS `game_event_pool`;

CREATE TABLE IF NOT EXISTS `game_event_pool` (
  `eventEntry` smallint(6) DEFAULT NULL,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Id of the pool',
  PRIMARY KEY (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
