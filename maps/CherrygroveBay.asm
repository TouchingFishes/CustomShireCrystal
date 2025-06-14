object_const_def
	const CHERRYGROVEBAY_SWIMMER1
    const CHERRYGROVEBAY_SWIMMER2
    const CHERRYGROVEBAY_ROCK1
    const CHERRYGROVEBAY_ROCK2

CherrygroveBay_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerfJill:
	trainer SWIMMERF, JILL, EVENT_BEAT_SWIMMERF_JILL, SwimmerfElaineSeenText2, SwimmerfElaineBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfElaineAfterBattleText2
	waitbutton
	closetext
	end

TrainerSwimmerfLisa:
	trainer SWIMMERF, LISA, EVENT_BEAT_SWIMMERF_LISA, SwimmerfPaulaSeenText2, SwimmerfPaulaBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfPaulaAfterBattleText2
	waitbutton
	closetext
	end

TrainerSwimmermHal:
	trainer SWIMMERM, HAL, EVENT_BEAT_SWIMMERM_HAL, SwimmerfPaulaSeenText2, SwimmerfPaulaBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfPaulaAfterBattleText2
	waitbutton
	closetext
	end

TrainerDragonTamerJeb:
	trainer DRAGON_TAMER, JEB, EVENT_BEAT_DRAGON_TAMER_JEB, SwimmerfPaulaSeenText2, SwimmerfPaulaBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfPaulaAfterBattleText2
	waitbutton
	closetext
	end

CherrygroveBayRock:
	jumpstd SmashRockScript

SwimmerfElaineSeenText2:
	text "Are you going to"
	line "CIANWOOD?"

	para "How about a quick"
	line "battle first?"
	done

SwimmerfElaineBeatenText2:
	text "I lost that one!"
	done

SwimmerfElaineAfterBattleText2:
	text "I'd say I'm a bet-"
	line "ter swimmer than"
	cont "you. Yeah!"
	done

SwimmerfPaulaSeenText2:
	text "No inner tube for"
	line "me."

	para "I'm hanging on to"
	line "a sea #MON!"
	done

SwimmerfPaulaBeatenText2:
	text "Ooh, I'm feeling"
	line "dizzy!"
	done

SwimmerfPaulaAfterBattleText2:
	text "While I float like"
	line "this, the waves"
	cont "carry me along."
	done

CherrygroveBay_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 45, ROUTE_28_STEEL_WING_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 25, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfJill, -1
	object_event 14, 21, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLisa, -1
	object_event  5, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmermHal, -1
	object_event 11, 31, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerDragonTamerJeb, -1
	object_event  8,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveBayRock, -1
	object_event 10, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveBayRock, -1
