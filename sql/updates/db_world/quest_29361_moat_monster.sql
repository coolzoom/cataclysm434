-- https://www.wowhead.com/quest=29361/moat-monster
-- https://www.wowhead.com/npc=53592/dnd-moat-monster-quest-credit
-- https://www.wowhead.com/item=69998/alliance-decoy-kit
-- https://www.wowhead.com/spell=99511/simulate-alliance-presence
-- https://www.wowhead.com/npc=53590/moat-monster
-- https://www.wowhead.com/item=69995/bloated-frog
-- https://www.wowhead.com/spell=99508/throw-frog

DELETE FROM `spell_script_names` WHERE `spell_id` IN (99511, 99508);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(99511, 'spell_simulate_alliance_presence'),
(99508, 'spell_throw_frog');

DELETE FROM `conditions` WHERE `SourceEntry` IN (99511, 99508) AND `SourceTypeOrReferenceId`=13;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 1, 99511, 0, 0, 31, 0, 3, 53591, 0, 0, 0, '', 'Targeting -> Moat Monster Spawn Loc'),
(13, 1, 99508, 0, 0, 31, 1, 3, 53590, 0, 0, 0, '', 'Targeting -> Moat Monster');

DELETE FROM `smart_scripts` WHERE `entryorguid`=53590 AND `source_type`=0;

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`=''  WHERE `entry`=53590;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(53590, 0, 0, 0, 8, 0, 100, 0, 99508, 1, 0, 0, 33, 53592, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On Spellhit - Quest Credit");
