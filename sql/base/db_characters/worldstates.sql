
DROP TABLE IF EXISTS `worldstates`;

CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

INSERT INTO `worldstates`(`entry`,`value`,`comment`) VALUES
(3781,9000000,NULL),
(3801,0,NULL),
(3802,1,NULL),
(20001,1454691600,NULL),
(20002,1471492800,NULL),
(20003,1471060800,NULL),
(20005,1471060800,NULL),
(20006,1471060800,NULL),
(20007,1472702400,NULL);
