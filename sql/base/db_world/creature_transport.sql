
DROP TABLE IF EXISTS `creature_transport`;

CREATE TABLE IF NOT EXISTS `creature_transport` (
  `guid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid',
  `transport_entry` int(11) NOT NULL COMMENT 'Transport entry',
  `npc_entry` int(11) NOT NULL COMMENT 'NPC entry',
  `TransOffsetX` float NOT NULL DEFAULT '0',
  `TransOffsetY` float NOT NULL DEFAULT '0',
  `TransOffsetZ` float NOT NULL DEFAULT '0',
  `TransOffsetO` float NOT NULL DEFAULT '0',
  `emote` int(11) NOT NULL,
  PRIMARY KEY (`transport_entry`, `guid`),
  UNIQUE KEY `entry` (`transport_entry`, `guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
