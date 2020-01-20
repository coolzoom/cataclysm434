DROP TABLE IF EXISTS `guild_achievement`;

CREATE TABLE `guild_achievement` (
  `guildId` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
