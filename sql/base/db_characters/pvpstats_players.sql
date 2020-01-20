
DROP TABLE IF EXISTS `pvpstats_players`;

CREATE TABLE `pvpstats_players` (
  `battleground_id` int(11) DEFAULT NULL,
  `character_guid` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `score_killing_blows` int(11) DEFAULT NULL,
  `score_deaths` int(11) DEFAULT NULL,
  `score_honorable_kills` int(11) DEFAULT NULL,
  `score_bonus_honor` int(11) DEFAULT NULL,
  `score_damage_done` int(11) DEFAULT NULL,
  `score_healing_done` int(11) DEFAULT NULL,
  `attr_1` int(11) DEFAULT NULL,
  `attr_2` int(11) DEFAULT NULL,
  `attr_3` int(11) DEFAULT NULL,
  `attr_4` int(11) DEFAULT NULL,
  `attr_5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
