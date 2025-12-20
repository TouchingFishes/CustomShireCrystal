	object_const_def
	const UNIONCAVEB2F_ACE_TRAINER_M
	const UNIONCAVEB2F_ACE_TRAINER_F
	const UNIONCAVEB2F_HIKER
	const UNIONCAVEB2F_POKE_BALL1
	const UNIONCAVEB2F_POKE_BALL2
	const UNIONCAVEB2F_LAPRAS

UnionCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, UnionCaveB2FLaprasCallback

UnionCaveB2FLaprasCallback:
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .Appear
.NoAppear:
	disappear UNIONCAVEB2F_LAPRAS
	endcallback

.Appear:
	appear UNIONCAVEB2F_LAPRAS
	endcallback

UnionCaveLapras:
	faceplayer
	cry LAPRAS
	loadwildmon LAPRAS, 20
	startbattle
	disappear UNIONCAVEB2F_LAPRAS
	setflag ENGINE_UNION_CAVE_LAPRAS
	reloadmapafterbattle
	end

TrainerAceTrainermNick:
	trainer ACE_TRAINERM, NICK, EVENT_BEAT_ACE_TRAINERM_NICK, AceTrainermNickSeenText, AceTrainermNickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainermNickAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainerfGwen:
	trainer ACE_TRAINERF, GWEN, EVENT_BEAT_ACE_TRAINERF_GWEN, AceTrainerfGwenSeenText, AceTrainerfGwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerfGwenAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerPhillipAfterBattleText
	waitbutton
	closetext
	end

UnionCaveB2FElixer:
	itemball ELIXIR

UnionCaveB2FHyperPotion:
	itemball HYPER_POTION

AceTrainermNickSeenText:
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done

AceTrainermNickBeatenText:
	text "You've got"
	line "dazzling style!"
	done

AceTrainermNickAfterBattleText:
	text "Your #MON style"
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done

AceTrainerfGwenSeenText:
	text "I'm in training."
	line "Care for a round?"
	done

AceTrainerfGwenBeatenText:
	text "Aww, no! You're"
	line "too good for me."
	done

AceTrainerfGwenAfterBattleText:
	text "I'm going to train"
	line "by myself until I"
	cont "improve."
	done

HikerPhillipSeenText:
	text "If there's a trail"
	line "to follow, I'll"

	para "take it, no matter"
	line "how rough it gets."

	para "That's what a real"
	line "hiker does."
	done

HikerPhillipBeatenText:
	text "Ha! Guess I"
	line "slipped up there!"
	done

HikerPhillipAfterBattleText:
	text "Sometimes, a wild"
	line "#MON comes down"

	para "to drink by the"
	line "water's edge."

	para "That's why I hike"
	line "all this way."
	done

UnionCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 19, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerAceTrainermNick, -1
	object_event  5, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerfGwen, -1
	object_event  3, 30, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerHikerPhillip, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FElixer, EVENT_UNION_CAVE_B2F_ELIXER
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FHyperPotion, EVENT_UNION_CAVE_B2F_HYPER_POTION
	object_event 11, 31, SPRITE_SURF, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveLapras, EVENT_UNION_CAVE_B2F_LAPRAS
