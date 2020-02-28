
DROP TABLE IF EXISTS `item_enchantment_template`;

CREATE TABLE IF NOT EXISTS `item_enchantment_template` (
  `entry` int(11) DEFAULT NULL,
  `ench` int(11) DEFAULT NULL,
  `chance` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
