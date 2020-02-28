
DROP TABLE IF EXISTS `vehicle_scaling_info`;

CREATE TABLE IF NOT EXISTS `vehicle_scaling_info` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `baseItemLevel` float NOT NULL DEFAULT '0',
  `scalingFactor` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ArkDB Vehicle Scaling Info';
