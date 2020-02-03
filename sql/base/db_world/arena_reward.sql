
DROP TABLE IF EXISTS `arena_reward`;

CREATE TABLE IF NOT EXISTS `arena_reward` (
  `seasonID` int(32) NOT NULL,
  `achievement` int(32) NOT NULL DEFAULT '0',
  `itemEntry` int(32) NOT NULL DEFAULT '0',
  `rank` int(32) NOT NULL,
  `title` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seasonID`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
