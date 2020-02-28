
DROP TABLE IF EXISTS `player_factionchange_titles`;

CREATE TABLE IF NOT EXISTS `player_factionchange_titles` (
  `alliance_id` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
