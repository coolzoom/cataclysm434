
DROP TABLE IF EXISTS `mail_level_reward`;

CREATE TABLE IF NOT EXISTS `mail_level_reward` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raceMask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `senderEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`, `raceMask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Mail System';
