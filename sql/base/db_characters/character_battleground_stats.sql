
DROP TABLE IF EXISTS `character_battleground_stats`;

CREATE TABLE `character_battleground_stats` (
  `guid` int(10) NOT NULL,
  `win` int(10) NOT NULL,
  `played` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
