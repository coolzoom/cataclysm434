
DROP TABLE IF EXISTS `achievement_log`;

CREATE TABLE IF NOT EXISTS `achievement_log` (
  `AchievementEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned DEFAULT NULL,
  `Value1` int(10) unsigned DEFAULT NULL,
  `Value2` int(10) unsigned DEFAULT NULL,
  `AchievementName` varchar(2048) DEFAULT NULL,
  `CriteriaName` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`AchievementEntry`,`CriteriaEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
