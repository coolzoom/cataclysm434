
-- https://www.wowhead.com/npc=17555/stephanos
DELETE FROM `creature` WHERE `id`=17555;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(183747, 17555, 530, 3557, 3557, 1, 1, 0, 0, -4057.15, -11788.6, 8.87662, 5.59502, 120, 0, 0, 14193, 2790, 0, 0, 0, 0, 0),
(116999, 17555, 530, 3557, 3557, 1, 1, 0, 0, -3868.74, -11640.9, -137.671, 2.2478, 120, 0, 0, 175983, 4455, 0, 0, 0, 0, 0);
