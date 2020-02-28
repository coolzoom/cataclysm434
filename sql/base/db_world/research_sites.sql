
DROP TABLE IF EXISTS `research_sites`;

CREATE TABLE IF NOT EXISTS `research_sites` (
  `id` double DEFAULT NULL,
  `entry` double DEFAULT NULL,
  `map` double DEFAULT NULL,
  `minSkill` double DEFAULT NULL,
  `minLevel` double DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `position_z` float DEFAULT NULL,
  `enable` tinyint(3) DEFAULT NULL,
  `comment` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
