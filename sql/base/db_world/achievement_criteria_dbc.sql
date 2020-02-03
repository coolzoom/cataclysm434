
DROP TABLE IF EXISTS `achievement_criteria_dbc`;

CREATE TABLE IF NOT EXISTS `achievement_criteria_dbc` (
  `ID` int(10) NOT NULL DEFAULT '0',
  `achievement` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '0',
  `value1` int(10) NOT NULL DEFAULT '0',
  `value2` int(10) NOT NULL DEFAULT '0',
  `additionalReqType1` int(10) NOT NULL DEFAULT '0',
  `additionalReqValue1` int(10) NOT NULL DEFAULT '0',
  `additionalReqType2` int(10) NOT NULL DEFAULT '0',
  `additionalReqValue2` int(10) NOT NULL DEFAULT '0',
  `completionFlag` int(10) NOT NULL DEFAULT '0',
  `timedCriteriaStartType` int(10) NOT NULL DEFAULT '0',
  `timeCriteriaMiscId` int(10) NOT NULL DEFAULT '0',
  `timeLimit` int(10) NOT NULL DEFAULT '0',
  `showOrder` int(10) NOT NULL DEFAULT '0',
  `additionalConditionType1` int(10) NOT NULL DEFAULT '0',
  `additionalConditionType2` int(10) NOT NULL DEFAULT '0',
  `additionalConditionType3` int(10) NOT NULL DEFAULT '0',
  `additionalConditionValue1` int(10) NOT NULL DEFAULT '0',
  `additionalConditionValue2` int(10) NOT NULL DEFAULT '0',
  `additionalConditionValue3` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
