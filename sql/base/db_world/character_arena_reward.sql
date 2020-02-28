
DROP TABLE IF EXISTS `character_arena_reward`;

CREATE TABLE IF NOT EXISTS `character_arena_reward` (
  `guid` int(32) unsigned NOT NULL DEFAULT '0',
  `rank` int(32) unsigned NOT NULL DEFAULT '0',
  `currentSeason` int(32) unsigned NOT NULL DEFAULT '0',
  `type` int(32) NOT NULL DEFAULT '0',
  `isRewarded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`currentSeason`,`rank`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
