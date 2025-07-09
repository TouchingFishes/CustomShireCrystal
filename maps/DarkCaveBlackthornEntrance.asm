	object_const_def
	const DARKCAVEBLACKTHORNENTRANCE_PHARMACIST
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL1
	const DARKCAVEBLACKTHORNENTRANCE_POKE_BALL2
	const DARKCAVEBLACKTHORNENTRANCE_HEX_MANIAC
	const DARKCAVEBLACKTHORNENTRANCE_ENGINEER

DarkCaveBlackthornEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

DarkCaveBlackthornEntrancePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	iftrue .GotBlackglasses
	writetext DarkCaveBlackthornEntrancePharmacistText1
	promptbutton
	verbosegiveitem BLACKGLASSES
	iffalse .PackFull
	setevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
.GotBlackglasses:
	writetext DarkCaveBlackthornEntrancePharmacistText2
	waitbutton
.PackFull:
	closetext
	end

TrainerHexManiacMalia:
	trainer HEX_MANIAC, MALIA, EVENT_BEAT_HEX_MANIAC_MALIA, HexManiacMaliaSeenText, HexManiacMaliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacMaliaAfterBattleText
	waitbutton
	closetext
	end

TrainerEngineerBobby:
	trainer ENGINEER, BOBBY, EVENT_BEAT_ENGINEER_BOBBY, EngineerBobbySeenText, EngineerBobbyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EngineerBobbyAfterBattleText
	waitbutton
	closetext
	end

DarkCaveBlackthornEntranceRevive:
	itemball REVIVE

DarkCaveBlackthornEntranceTMSnore:
	itemball TM_HAIL ; TM_SNORE

DarkCaveBlackthornEntrancePharmacistText1:
	text "Whoa! You startled"
	line "me there!"

	para "I had my BLACK-"
	line "GLASSES on, so I"

	para "didn't notice you"
	line "at all."

	para "What am I doing"
	line "here?"

	para "Hey, don't you"
	line "worry about it."

	para "I'll give you a"
	line "pair of BLACK-"
	cont "GLASSES, so forget"
	cont "you saw me, OK?"
	done

DarkCaveBlackthornEntrancePharmacistText2:
	text "BLACKGLASSES ups"
	line "the power of dark-"
	cont "type moves."
	done

HexManiacMaliaSeenText:
	text "Let the ritual"
	line "begin."
	done

HexManiacMaliaBeatenText:
	text "Oh no! My ritual"
	line "failed!"
	done

HexManiacMaliaAfterBattleText:
	text "Nighttime is when"
	line "ghosts thrive…"

	para "If you're frigh-"
	line "tened by them, you"
	cont "should think twice"
	cont "before going out…"
	done

EngineerBobbySeenText:
	text "Tell you what, the"
	line "wall before me has"

	para "the perfect con-"
	line "dition for dril-"
	cont "ling a tunnel."

	para "Oh, you wanna"
	line "battle?!"
	done

EngineerBobbyBeatenText:
	text "Uff. You're good."
	done

EngineerBobbyAfterBattleText:
	text "I tell you…"

	para "If people wanted"
	line "to, me and my pals"
	cont "could build a"
	cont "tunnel here…"
	done	

DarkCaveBlackthornEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  3, ROUTE_45, 1
	warp_event  3, 25, DARK_CAVE_VIOLET_ENTRANCE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntrancePharmacistScript, -1
	object_event 21, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceRevive, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_REVIVE
	object_event  7, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveBlackthornEntranceTMSnore, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_TM_SNORE
	object_event 21, 10, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerHexManiacMalia, -1
	object_event 26,  2, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 0, TrainerEngineerBobby, -1
