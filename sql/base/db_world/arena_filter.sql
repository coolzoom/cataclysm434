
DROP TABLE IF EXISTS `arena_filter`;

CREATE TABLE IF NOT EXISTS `arena_filter` (
  `name` varchar(765) DEFAULT NULL,
  `wintrade_count` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
