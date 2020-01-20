DROP TABLE IF EXISTS `character_queststatus_monthly`;

CREATE TABLE `character_queststatus_monthly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';
