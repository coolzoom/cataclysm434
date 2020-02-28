
DROP TABLE IF EXISTS `locales_broadcast_text`;

CREATE TABLE IF NOT EXISTS `locales_broadcast_text` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaleText_loc1` longtext,
  `MaleText_loc2` longtext,
  `MaleText_loc3` longtext,
  `MaleText_loc4` longtext,
  `MaleText_loc5` longtext,
  `MaleText_loc6` longtext,
  `MaleText_loc7` longtext,
  `MaleText_loc8` longtext,
  `FemaleText_loc1` longtext,
  `FemaleText_loc2` longtext,
  `FemaleText_loc3` longtext,
  `FemaleText_loc4` longtext,
  `FemaleText_loc5` longtext,
  `FemaleText_loc6` longtext,
  `FemaleText_loc7` longtext,
  `FemaleText_loc8` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
