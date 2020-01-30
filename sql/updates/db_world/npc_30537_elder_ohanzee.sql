
-- https://www.wowhead.com/npc=30537/elder-ohanzee
DELETE FROM `creature` WHERE `id`=30537;

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(200841,30537,604,0,0,3,1,0,0,1697.94,752.12,142.76,3.78,300,0,0,48,120,0,0,0,0,0);
