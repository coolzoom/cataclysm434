DROP TABLE IF EXISTS `character_current_artifacts`;

CREATE TABLE `character_current_artifacts` (
  `guid` int(10) unsigned NOT NULL,
  `branchId` int(10) NOT NULL DEFAULT '0',
  `entry` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`branchId`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
