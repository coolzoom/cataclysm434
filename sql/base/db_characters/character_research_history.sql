DROP TABLE IF EXISTS `character_research_history`;

CREATE TABLE `character_research_history` (
  `guid` int(11) DEFAULT NULL,
  `projectid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
