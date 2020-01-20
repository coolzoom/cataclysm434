DROP TABLE IF EXISTS `account_ip_history`;

CREATE TABLE `account_ip_history` (
  `id` int(10) DEFAULT NULL,
  `RealmID` int(10) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
