
DROP TABLE IF EXISTS `creature_linked_respawn`;

CREATE TABLE IF NOT EXISTS `creature_linked_respawn` (
  `guid` int(10) unsigned NOT NULL COMMENT 'dependent creature',
  `linkedGuid` int(10) unsigned NOT NULL COMMENT 'master creature',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature Respawn Link System';
