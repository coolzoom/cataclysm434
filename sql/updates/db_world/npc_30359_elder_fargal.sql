
-- https://www.wowhead.com/npc=30359/elder-fargal
DELETE FROM `creature` WHERE `id`=30359;

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(200835,30359,571,0,0,1,1,0,0,6705.19,-214.593,976.073,385.017,300,0,0,48,120,0,0,0,0,0);
