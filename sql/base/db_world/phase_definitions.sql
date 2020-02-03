
DROP TABLE IF EXISTS `phase_definitions`;

CREATE TABLE IF NOT EXISTS `phase_definitions` (
  `zoneId` mediumint(7) DEFAULT NULL,
  `entry` smallint(5) DEFAULT NULL,
  `phasemask` bigint(20) DEFAULT NULL,
  `phaseId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `originmap` smallint(5) DEFAULT NULL,
  `terrainswapmap` smallint(5) DEFAULT NULL,
  `worldMapAreaSwap` smallint(5) DEFAULT NULL,
  `flags` tinyint(3) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
