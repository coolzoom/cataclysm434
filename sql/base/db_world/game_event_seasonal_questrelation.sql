
DROP TABLE IF EXISTS `game_event_seasonal_questrelation`;

CREATE TABLE IF NOT EXISTS `game_event_seasonal_questrelation` (
  `questId` int(10) unsigned NOT NULL COMMENT 'Quest Identifier',
  `eventEntry` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`, `eventEntry`),
  KEY `idx_quest` (`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';
