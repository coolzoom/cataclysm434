
DROP TABLE IF EXISTS `character_bug_submission`;

CREATE TABLE `character_bug_submission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `playerId` bigint(20) DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `orientation` float DEFAULT NULL,
  `mapId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
