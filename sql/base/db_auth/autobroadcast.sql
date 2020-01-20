
DROP TABLE IF EXISTS `autobroadcast`;

CREATE TABLE `autobroadcast` (
  `id` int(10) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `text` longtext,
  `text_1` longtext,
  `text_2` longtext,
  `text_3` longtext,
  `text_4` longtext,
  `text_5` longtext,
  `text_6` longtext,
  `text_7` longtext,
  `RealmID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
