DROP TABLE IF EXISTS `pvpstats_battlegrounds`;

CREATE TABLE `pvpstats_battlegrounds` (
  `matherMakerRating` int(11) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `winner_faction` int(11) DEFAULT NULL,
  `bracket_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
