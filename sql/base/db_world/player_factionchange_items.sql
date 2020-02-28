
DROP TABLE IF EXISTS `player_factionchange_items`;

CREATE TABLE IF NOT EXISTS `player_factionchange_items` (
  `race_A` int(10) unsigned NOT NULL,
  `alliance_id` int(10) unsigned NOT NULL,
  `commentA` text,
  `race_H` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  `commentH` text,
  PRIMARY KEY (`alliance_id`, `horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
