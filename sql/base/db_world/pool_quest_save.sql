
DROP TABLE IF EXISTS `pool_quest_save`;

CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`, `quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
