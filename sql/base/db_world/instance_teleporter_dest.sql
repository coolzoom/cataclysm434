
DROP TABLE IF EXISTS `instance_teleporter_dest`;

CREATE TABLE IF NOT EXISTS `instance_teleporter_dest` (
  `teleporterId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teleporterType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `teleportationId` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `gossipMessage` varchar(255) NOT NULL,
  `teleportationSpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `directTeleport` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invisibleBeforeActivation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BroadcastTextID` mediumint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
