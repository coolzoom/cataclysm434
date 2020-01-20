DROP TABLE IF EXISTS `character_lfr_looted`;

CREATE TABLE `character_lfr_looted` (
  `playerGUID` int(10) DEFAULT NULL,
  `objectEntry` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
