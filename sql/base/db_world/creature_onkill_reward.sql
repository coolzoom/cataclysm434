
DROP TABLE IF EXISTS `creature_onkill_reward`;

CREATE TABLE IF NOT EXISTS `creature_onkill_reward` (
  `creature_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `RewOnKillRepFaction1` smallint(6) NOT NULL DEFAULT '0',
  `RewOnKillRepFaction2` smallint(6) NOT NULL DEFAULT '0',
  `MaxStanding1` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward1` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue1` mediumint(8) NOT NULL DEFAULT '0',
  `MaxStanding2` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward2` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue2` mediumint(9) NOT NULL DEFAULT '0',
  `TeamDependent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencyId1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `CurrencyId2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `CurrencyId3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` mediumint(9) NOT NULL DEFAULT '0',
  `CurrencyCount2` mediumint(9) NOT NULL DEFAULT '0',
  `CurrencyCount3` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature OnKill Reputation gain';
