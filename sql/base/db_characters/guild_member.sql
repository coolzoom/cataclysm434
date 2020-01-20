DROP TABLE IF EXISTS `guild_member`;

CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `activity` bigint(20) NOT NULL,
  `profession1_skillID` int(10) NOT NULL DEFAULT '0',
  `weekReputation` int(10) NOT NULL DEFAULT '0',
  `profession2_rank` int(10) NOT NULL DEFAULT '0',
  `profession2_skillID` int(10) NOT NULL DEFAULT '0',
  `profession1_rank` int(10) NOT NULL DEFAULT '0',
  `weekActivity` int(10) NOT NULL DEFAULT '0',
  `profession1_level` int(10) NOT NULL DEFAULT '0',
  `profession2_level` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`) USING BTREE,
  KEY `guildid_key` (`guildid`) USING BTREE,
  KEY `guildid_rank_key` (`guildid`,`rank`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';
