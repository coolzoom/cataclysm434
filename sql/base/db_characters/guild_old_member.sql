DROP TABLE IF EXISTS `guild_old_member`;

CREATE TABLE `guild_old_member` (
  `guid` int(10) NOT NULL,
  `guildId` int(10) NOT NULL,
  `weekReputation` int(10) NOT NULL,
  `leaveDate` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
