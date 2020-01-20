DROP TABLE IF EXISTS `character_pvp_stats`;

CREATE TABLE `character_pvp_stats` (
  `data` int(11) DEFAULT NULL,
  `completedEncounters` int(11) DEFAULT NULL,
  `hardMode` int(11) DEFAULT NULL,
  `matchMakerRating` int(11) DEFAULT NULL,
  `map` int(11) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
