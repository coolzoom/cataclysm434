/*
* Copyright (C) 2016+     AzerothCore <www.azerothcore.org>
* Released under GNU GPL v2 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-GPL2
* Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
*/

#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "Spell.h"
#include "blackrock_spire.h"

enum Text
{
    EMOTE_ONE_STACK = 0,
    EMOTE_TEN_STACK = 1,
    EMOTE_FREE_OF_BONDS = 2,
    YELL_FREE_OF_BONDS = 3
};

enum Spells
{
    SPELL_ENCAGED_EMBERSEER = 15282,
    SPELL_FIRE_SHIELD_TRIGGER = 13377,
    SPELL_FIRE_SHIELD = 13376,
    SPELL_FREEZE_ANIM = 16245,
    SPELL_EMBERSEER_GROWING = 16048,
    SPELL_EMBERSEER_GROWING_TRIGGER = 16049,
    SPELL_EMBERSEER_FULL_STRENGTH = 16047,
    SPELL_FIRENOVA = 23462,
    SPELL_FLAMEBUFFET = 23341,
    SPELL_PYROBLAST = 17274,
    SPELL_ENCAGE_EMBERSEER = 15281,
    SPELL_STRIKE = 15580,
    SPELL_ENCAGE = 16045,
    SPELL_EMBERSEER_OBJECT_VISUAL = 16532
};

enum Events
{
    EVENT_RESPAWN = 1,
    EVENT_PRE_FIGHT_1 = 2,
    EVENT_PRE_FIGHT_2 = 3,
    EVENT_FIRENOVA = 4,
    EVENT_FLAMEBUFFET = 5,
    EVENT_PYROBLAST = 6,
    EVENT_FIRE_SHIELD = 7,
    EVENT_PLAYER_CHECK = 8,
    EVENT_ENTER_COMBAT = 9
};


class boss_pyroguard_emberseer : public CreatureScript
{
public:
    boss_pyroguard_emberseer() : CreatureScript("boss_pyroguard_emberseer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_pyroguard_emberseerAI(creature);
    }

    struct boss_pyroguard_emberseerAI : public BossAI
    {
        boss_pyroguard_emberseerAI(Creature* creature) : BossAI(creature, DATA_PYROGAURD_EMBERSEER) {}

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NOT_SELECTABLE);
            events.Reset();
            me->RemoveAura(SPELL_EMBERSEER_FULL_STRENGTH);
            me->RemoveAura(SPELL_EMBERSEER_GROWING);
            me->RemoveAura(SPELL_EMBERSEER_GROWING_TRIGGER);
            events.ScheduleEvent(EVENT_RESPAWN, 5000);
            events.ScheduleEvent(EVENT_FIRE_SHIELD, 3000);

            if (instance->GetBossState(DATA_PYROGAURD_EMBERSEER) == IN_PROGRESS)
                OpenDoors(false);
        }

        void SetData(uint32 /*type*/, uint32 data)
        {
            switch (data)
            {
            case 1:
                events.ScheduleEvent(EVENT_PLAYER_CHECK, 5000);
                break;
            case 2:
                if (GameObject* door1 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_IN)))
                    if (door1->GetGoState() == GO_STATE_ACTIVE)
                        door1->SetGoState(GO_STATE_READY);
                if (GameObject* door2 = me->GetMap()->GetGameObject(instance->GetData64(GO_DOORS)))
                    if (door2->GetGoState() == GO_STATE_ACTIVE)
                        door2->SetGoState(GO_STATE_READY);
                break;
            case 3:
                Reset();
                break;
            default:
                break;
            }
        }



        void EnterCombat(Unit* /*who*/)
        {
            events.ScheduleEvent(EVENT_FIRENOVA, 6 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_FLAMEBUFFET, 3 * IN_MILLISECONDS);
            events.ScheduleEvent(EVENT_PYROBLAST, 14 * IN_MILLISECONDS);
        }

        void JustDied(Unit* /*killer*/)
        {
            UpdateRunes(GO_STATE_READY);
            OpenDoors(true);
            instance->SetBossState(DATA_PYROGAURD_EMBERSEER, DONE);
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell)
        {
            if (spell->Id == SPELL_ENCAGE_EMBERSEER)
                if (spell->Id == SPELL_ENCAGE_EMBERSEER)
                    me->CastSpell(me, SPELL_ENCAGED_EMBERSEER);

            if (spell->Id == SPELL_EMBERSEER_GROWING_TRIGGER)
            {
                if (me->GetAuraCount(SPELL_EMBERSEER_GROWING_TRIGGER) == 10)
                    Talk(EMOTE_TEN_STACK);

                if (me->GetAuraCount(SPELL_EMBERSEER_GROWING_TRIGGER) == 20)
                {
                    me->RemoveAura(SPELL_ENCAGED_EMBERSEER);
                    me->RemoveAura(SPELL_FREEZE_ANIM);
                    me->CastSpell(me, SPELL_EMBERSEER_FULL_STRENGTH);
                    Talk(EMOTE_FREE_OF_BONDS);
                    Talk(YELL_FREE_OF_BONDS);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NOT_SELECTABLE);
                    events.ScheduleEvent(EVENT_ENTER_COMBAT, 2000);
                }
            }
        }

        void OpenDoors(bool Boss_Killed)
        {
            if (GameObject* door1 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_IN)))
                door1->SetGoState(GO_STATE_ACTIVE);
            if (GameObject* door2 = me->GetMap()->GetGameObject(instance->GetData64(GO_DOORS)))
                door2->SetGoState(GO_STATE_ACTIVE);
            if (Boss_Killed)
                if (GameObject* door3 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_OUT)))
                    door3->SetGoState(GO_STATE_ACTIVE);
        }

        void UpdateRunes(GOState state)
        {
            if (GameObject* rune1 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_1)))
                rune1->SetGoState(state);
            if (GameObject* rune2 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_2)))
                rune2->SetGoState(state);
            if (GameObject* rune3 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_3)))
                rune3->SetGoState(state);
            if (GameObject* rune4 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_4)))
                rune4->SetGoState(state);
            if (GameObject* rune5 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_5)))
                rune5->SetGoState(state);
            if (GameObject* rune6 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_6)))
                rune6->SetGoState(state);
            if (GameObject* rune7 = me->GetMap()->GetGameObject(instance->GetData64(GO_EMBERSEER_RUNE_7)))
                rune7->SetGoState(state);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                    case EVENT_RESPAWN:
                    {
                        std::list<Creature*> creatureList;
                        GetCreatureListWithEntryInGrid(creatureList, me, NPC_BLACKHAND_INCARCERATOR, 35.0f);
                        for (std::list<Creature*>::iterator itr = creatureList.begin(); itr != creatureList.end(); ++itr)
                            if (Creature* creature = *itr)
                            {
                                if (!creature->isAlive())
                                    creature->Respawn();

                                creature->AI()->SetData(1, 2);
                            }
                        me->AddAura(SPELL_ENCAGED_EMBERSEER, me);
                        instance->SetBossState(DATA_PYROGAURD_EMBERSEER, NOT_STARTED);
                        break;
                    }
                    case EVENT_PRE_FIGHT_1:
                    {
                        std::list<Creature*> creatureList;
                        GetCreatureListWithEntryInGrid(creatureList, me, NPC_BLACKHAND_INCARCERATOR, 35.0f);
                        for (std::list<Creature*>::iterator itr = creatureList.begin(); itr != creatureList.end(); ++itr)
                        {
                            if (Creature* creature = *itr)
                                creature->AI()->SetData(1, 1);
                        }
                        events.ScheduleEvent(EVENT_PRE_FIGHT_2, 32000);
                        break;
                    }
                    case EVENT_PRE_FIGHT_2:
                    {
                        me->CastSpell(me, SPELL_FREEZE_ANIM);
                        me->CastSpell(me, SPELL_EMBERSEER_GROWING);
                        Talk(EMOTE_ONE_STACK);
                        break;
                    }
                    case EVENT_FIRE_SHIELD:
                    {
                        DoCast(me, SPELL_FIRE_SHIELD);
                        events.ScheduleEvent(EVENT_FIRE_SHIELD, 3000);
                        break;
                    }
                    case EVENT_PLAYER_CHECK:
                    {
                        bool _hasAura = false;
                        Map::PlayerList const &players = me->GetMap()->GetPlayers();
                        for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            if (Player* player = itr->getSource()->ToPlayer())
                                if (player->HasAura(SPELL_EMBERSEER_OBJECT_VISUAL))
                                    _hasAura = true;
                        }
                        if (_hasAura)
                        {
                            events.ScheduleEvent(EVENT_PRE_FIGHT_1, 1000);
                            instance->SetBossState(DATA_PYROGAURD_EMBERSEER, IN_PROGRESS);
                        }
                        break;
                    }
                    case EVENT_ENTER_COMBAT:
                    {
                        AttackStart(me->SelectNearestPlayer(30.0f));
                        break;
                    }
                    default:
                        break;
                    }
                }
                return;
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_FIRE_SHIELD:
                    DoCast(me, SPELL_FIRE_SHIELD);
                    events.ScheduleEvent(EVENT_FIRE_SHIELD, 3000);
                    break;
                case EVENT_FIRENOVA:
                    DoCast(me, SPELL_FIRENOVA);
                    events.ScheduleEvent(EVENT_FIRENOVA, 6000);
                    break;
                case EVENT_FLAMEBUFFET:
                    DoCast(me, SPELL_FLAMEBUFFET);
                    events.ScheduleEvent(EVENT_FLAMEBUFFET, 14000);
                    break;
                case EVENT_PYROBLAST:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_PYROBLAST);
                    events.ScheduleEvent(EVENT_PYROBLAST, 15000);
                    break;
                default:
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

enum IncarceratorEvents
{
    EVENT_ENCAGED_EMBERSEER = 1,
    EVENT_STRIKE = 2,
    EVENT_ENCAGE = 3
};

class npc_blackhand_incarcerator : public CreatureScript
{
public:
    npc_blackhand_incarcerator() : CreatureScript("npc_blackhand_incarcerator") { }

    struct npc_blackhand_incarceratorAI : public ScriptedAI
    {
        npc_blackhand_incarceratorAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
            if (Creature* Emberseer = me->FindNearestCreature(NPC_PYROGAURD_EMBERSEER, 30.0f, true))
                Emberseer->AI()->SetData(1, 3);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->DespawnOrUnsummon(10000);
        }

        void SetData(uint32 data, uint32 value)
        {
            if (data == 1 && value == 1)
            {
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
                me->InterruptSpell(CURRENT_CHANNELED_SPELL);
                _events.CancelEvent(EVENT_ENCAGED_EMBERSEER);
            }

            if (data == 1 && value == 2)
                _events.ScheduleEvent(EVENT_ENCAGED_EMBERSEER, 1000);
        }

        void EnterCombat(Unit* /*who*/)
        {
            // Used to close doors
            if (Creature* Emberseer = me->FindNearestCreature(NPC_PYROGAURD_EMBERSEER, 30.0f, true))
                Emberseer->AI()->SetData(1, 2);

            // Had to do this because CallForHelp will ignore any npcs without LOS
            std::list<Creature*> creatureList;
            GetCreatureListWithEntryInGrid(creatureList, me, NPC_BLACKHAND_INCARCERATOR, 60.0f);
            for (std::list<Creature*>::iterator itr = creatureList.begin(); itr != creatureList.end(); ++itr)
            {
                if (Creature* creature = *itr)
                    creature->SetInCombatWithZone();    // AI()->AttackStart(me->GetVictim());
            }

            _events.ScheduleEvent(EVENT_STRIKE, urand(8000, 16000));
            _events.ScheduleEvent(EVENT_ENCAGE, urand(10000, 20000));
        }

        void UpdateAI(uint32 diff)
        {


            if (!UpdateVictim())
            {
                _events.Update(diff);

                while (uint32 eventId = _events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                    case EVENT_ENCAGED_EMBERSEER:
                    {
                        if (me->GetPositionX() == me->GetHomePosition().GetPositionX())
                            if (!me->HasAura(SPELL_ENCAGE_EMBERSEER))
                                if (Creature* Emberseer = me->FindNearestCreature(NPC_PYROGAURD_EMBERSEER, 30.0f, true))
                                    DoCast(Emberseer, SPELL_ENCAGE_EMBERSEER);
                        break;

                    }
                    }
                }
                return;
            }

            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_STRIKE:
                    DoCastVictim(SPELL_STRIKE, true);
                    _events.ScheduleEvent(EVENT_STRIKE, urand(14000, 23000));
                    break;
                case EVENT_ENCAGE:
                    DoCast(SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true), EVENT_ENCAGE, true);
                    _events.ScheduleEvent(EVENT_ENCAGE, urand(6000, 12000));
                    break;
                default:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_blackhand_incarceratorAI(creature);
    }
};

void AddSC_boss_pyroguard_emberseer()
{
    new boss_pyroguard_emberseer();
    new npc_blackhand_incarcerator();
}
