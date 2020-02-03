
DROP TABLE IF EXISTS `gameobject_transport`;

CREATE TABLE IF NOT EXISTS `gameobject_transport` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `transport_entry` int(10) NOT NULL DEFAULT '0',
  `go_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `TransOffsetX` float NOT NULL DEFAULT '0',
  `TransOffsetY` float NOT NULL DEFAULT '0',
  `TransOffsetZ` float NOT NULL DEFAULT '0',
  `TransOffsetO` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`, `transport_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
