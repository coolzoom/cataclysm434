DROP TABLE IF EXISTS `arena_team`;

CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isSoloQueueTeam` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
