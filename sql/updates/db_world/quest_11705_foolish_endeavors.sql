
-- https://www.wowhead.com/npc=25729/shadowstalker-getry
DELETE FROM `smart_scripts` WHERE `entryorguid`=25729 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2572900, 2572901) AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25729,0,0,1,19,0,100,0,11705,0,0,0,53,0,25729,0,0,0,0,7,0,0,0,0,0,0,0,'On Quest Accept - WP Start'),
(25729,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On Quest Accept - Talk'),
(25729,0,2,0,61,0,100,0,0,0,0,0,45,25729,0,0,0,0,0,19,25618,150,0,0,0,0,0,'On Quest Accept - Set Data'),
(25729,0,3,0,40,0,100,0,1,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP Reach - Say Text'),
(25729,0,4,5,40,0,100,0,14,0,0,0,11,58506,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP Reach - Cast Spell'),
(25729,0,5,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On WP Reach - Set Passive'),
(25729,0,6,7,8,0,100,0,45923,0,0,0,28,58506,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Spell Hit - Remove Aura'),
(25729,0,7,8,61,0,100,0,45923,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Spell Hit - Set Home Position'),
(25729,0,8,0,61,0,100,0,0,0,0,0,80,2572901,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Spell Hit - Script9'),
(25729,0,9,0,38,0,100,0,1,1,0,0,80,2572900,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Set Data - Script9'),
(2572900,9,0,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2572900,9,1,0,0,0,100,0,8000,8000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2572900,9,2,0,0,0,100,0,8000,8000,0,0,1,5,0,0,0,0,0,19,25751,30,0,0,0,0,0,'Script9 - Talk'),
(2572900,9,3,0,0,0,100,0,3000,3000,0,0,41,0,0,0,0,0,0,19,25751,30,0,0,0,0,0,'Script9 - Despawn'),
(2572900,9,4,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Despawn'),
(2572901,9,0,0,0,0,100,0,1000,1000,0,0,11,45922,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell');

DELETE FROM `creature` WHERE `id`=25729;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(202772,25729,571,0,0,1,1,0,1,3113.42,6576.81,97.0907,4.73096,360,0,0,1,0,0,0,0,0,0);

-- High Overlord Saurfang
DELETE FROM `creature` WHERE `id`=25751;

-- Varidus the Flenser <Cult of the Damned>
DELETE FROM `creature` WHERE `id`=25618;
-- https://classic.wowhead.com/npc=1412/squirrel
DELETE FROM `creature` WHERE `guid`=131324;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(131324,25618,571,0,0,1,1,0,1,3126.53,6532.78,80.0636,5.57699,60,0,0,0,0,0,0,0,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=25618 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2561800 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25618,0,0,1,38,0,100,0,25729,0,0,0,80,2561800,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Data Set - Script9'),
(25618,0,1,0,61,0,100,0,0,0,0,0,18,770,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Data Set - Set Flag'),
(25618,0,2,0,0,0,100,0,5000,5000,10000,10000,11,32711,0,0,0,0,0,1,0,0,0,0,0,0,0,'IC Update - Cast Spell Shadow Nova'),
(25618,0,3,4,6,0,100,0,0,0,0,0,15,11705,0,0,0,0,0,18,40,0,0,0,0,0,0,'On Death - Area Explored'),
(25618,0,4,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,25729,40,0,0,0,0,0,'On Death - Set Data'),
(2561800,9,0,0,0,0,100,0,0,0,0,0,11,45908,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2561800,9,1,0,0,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Run'),
(2561800,9,2,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,3125,6534,80.1,0,'Script9 - Move to Pos'),
(2561800,9,3,0,0,0,100,0,6000,6000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.11,'Script9 - Set Orientation'),
(2561800,9,4,0,0,0,100,0,32000,32000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,5,0,0,0,100,0,4000,4000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.52,'Script9 - Set Orientation'),
(2561800,9,6,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,7,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Home Position'),
(2561800,9,8,0,0,0,100,0,3000,3000,0,0,11,45923,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2561800,9,9,0,0,0,100,0,1000,1000,0,0,12,25730,4,120000,0,0,0,8,0,0,0,3149,6527,80.84,2.6,'Script9 - Summon Creature'),
(2561800,9,10,0,0,0,100,0,8000,8000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,12,0,0,0,100,0,4000,4000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,13,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,14,0,0,0,100,0,7000,7000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,15,0,0,0,100,0,9000,9000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,16,0,0,0,100,0,20000,20000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,17,0,0,0,100,0,10000,10000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,18,0,0,0,100,0,2000,2000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2561800,9,19,0,0,0,100,0,2000,2000,0,0,19,770,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Remove Flags'),
(2561800,9,20,0,0,0,100,0,1000,1000,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Remove all auras'),
(2561800,9,21,0,0,0,100,0,0,0,0,0,11,50329,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2561800,9,22,0,0,0,100,0,0,0,0,0,19,770,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Remove Flags'),
(2561800,9,23,0,0,0,100,0,2000,2000,0,0,49,0,0,0,0,0,0,19,25751,30,0,0,0,0,0,'Script9 - Attack Start'),
(2561800,9,24,0,0,0,100,0,100000,100000,0,0,41,0,0,0,0,0,0,19,25729,100,0,0,0,0,0,'Script9 - Fail Check'),
(2561800,9,25,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,25751,100,0,0,0,0,0,'Script9 - Fail Check'),
(2561800,9,26,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Fail Check');

-- https://www.wowhead.com/npc=25730/enkilah-necrolord
DELETE FROM `creature` WHERE `id`=25730;

DELETE FROM `smart_scripts` WHERE `entryorguid`=25730 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2573000 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(25730,0,0,0,37,0,100,0,0,0,0,0,80,2573000,2,0,0,0,0,1,0,0,0,0,0,0,0,'On AI Init - Script9'),
(25730,0,1,0,0,0,100,0,5000,5000,10000,10000,11,24573,0,0,0,0,0,2,0,0,0,0,0,0,0,'IC Update - Cast Spell Mortal Strike'),
(25730,0,2,0,0,0,100,0,2000,2000,11000,11000,11,16044,0,0,0,0,0,2,0,0,0,0,0,0,0,'IC Update - Cast Spell Cleave'),
(25730,0,3,0,0,0,100,0,10000,10000,30000,40000,11,41097,0,0,0,0,0,1,0,0,0,0,0,0,0,'IC Update - Cast Spell Whirlwind'),
(2573000,9,0,0,0,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Faction'),
(2573000,9,1,0,0,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Flags'),
(2573000,9,2,0,0,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Run'),
(2573000,9,3,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,3126,6539,80.05,0,'Script9 - Move to Pos'),
(2573000,9,4,0,0,0,100,0,9000,9000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.52,'Script9 - Set Orientation'),
(2573000,9,5,0,0,0,100,0,24000,24000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.11,'Script9 - Set Orientation'),
(2573000,9,6,0,0,0,100,0,0,0,0,0,36,25751,1,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Update Entry'),
(2573000,9,7,0,0,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Flags'),
(2573000,9,8,0,0,0,100,0,0,0,0,0,2,1979,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Faction'),
(2573000,9,9,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,21,50,0,0,0,0,0,0,'Script9 - Talk'),
(2573000,9,10,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,21,50,0,0,0,0,0,0,'Script9 - Talk'),
(2573000,9,11,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2573000,9,12,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2573000,9,13,0,0,0,100,0,14000,14000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Talk'),
(2573000,9,14,0,0,0,100,0,8000,8000,0,0,11,45950,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2573000,9,15,0,0,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Remove Flags'),
(2573000,9,16,0,0,0,100,0,0,0,0,0,11,45949,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Cast Spell'),
(2573000,9,17,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Script9 - Set Home Pos');

-- https://www.wowhead.com/npc=25625/warsong-aberration
DELETE FROM `creature` WHERE `id`=25625;

-- https://www.wowhead.com/npc=25655/bane
DELETE FROM `creature` WHERE `id`=25655;
