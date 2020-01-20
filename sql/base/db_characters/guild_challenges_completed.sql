
DROP TABLE IF EXISTS `guild_challenges_completed`;

CREATE TABLE `guild_challenges_completed` (
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeId` int(10) unsigned DEFAULT NULL,
  `dateCompleted` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`),
  KEY `challengeId` (`challengeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
