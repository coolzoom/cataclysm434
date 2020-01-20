DROP TABLE IF EXISTS `guild`;

CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned DEFAULT '1',
  `todayExperience` bigint(20) unsigned DEFAULT '0',
  `RaidChallenge` int(10) NOT NULL DEFAULT '0',
  `ChallengeCount` int(32) unsigned NOT NULL DEFAULT '0',
  `RatedBGChallenge` int(10) NOT NULL DEFAULT '0',
  `DungeonChallenge` int(10) NOT NULL DEFAULT '0',
  `experience` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';
