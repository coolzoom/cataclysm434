
DROP TABLE IF EXISTS `player_factionchange_achievement`;

CREATE TABLE IF NOT EXISTS `player_factionchange_achievement` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
