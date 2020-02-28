
-- https://www.wowhead.com/item=34908/scourge-cage-key
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-75 WHERE `entry` IN (25609, 25611) AND `item`=34908;
DELETE FROM `creature_loot_template` WHERE `entry`=25655 AND `item`=34908;
