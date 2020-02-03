
DROP TABLE IF EXISTS `gossip_menu`;

CREATE TABLE IF NOT EXISTS `gossip_menu` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`, `text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
