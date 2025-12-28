	object_const_def
	const ROUTE2_BUG_CATCHER
	const ROUTE2_COOLTRAINER_F
	const ROUTE2_LADY
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

TrainerAromaLadyCelina:
	trainer AROMA_LADY, CELINA, EVENT_BEAT_AROMA_LADY_CELINA, AromaLadyCelinaSeenText, AromaLadyCelinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AromaLadyCelinaAfterBattleText
	waitbutton
	closetext
	end

TrainerLadyElenore:
	trainer LADY, ELENORE, EVENT_BEAT_LADY_ELENORE, LadyElenoreSeenText, LadyElenoreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LadyElenoreAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXIR

BugCatcherRobSeenText:
	text "My bug #MON are"
	line "tough. Prepare to"
	cont "lose!"
	done

BugCatcherRobBeatenText:
	text "I was whipped…"
	done

BugCatcherRobAfterBattleText:
	text "I'm going to look"
	line "for stronger bug"
	cont "#MON."
	done

AromaLadyCelinaSeenText:
	text "The forest air is"
	line "so fresh here…"

	para "Every breeze"
	line "carries a new"
	cont "scent."

	para "Care to battle"
	line "among the trees?"
	done

AromaLadyCelinaBeatenText:
	text "Ah…"
	line "That scent changed"
	cont "quickly…"
	done

AromaLadyCelinaAfterBattleText:
	text "VIRIDIAN FOREST"
	line "is full of gentle"
	cont "fragrances."

	para "Moss, leaves,"
	line "and flowers mix"
	cont "together."

	para "I come here to"
	line "relax with my"
	cont "#MON."
	done

LadyElenoreSeenText:
	text "Oh my…"
	line "A visitor?"

	para "One must always"
	line "be prepared,"
	cont "even while"
	cont "traveling."

	para "Shall we test"
	line "our poise?"
	done


LadyElenoreBeatenText:
	text "How gracious…"
	line "I accept this"
	cont "loss."
	done

LadyElenoreAfterBattleText:
	text "A true battle"
	line "is about"

	para "composure and"
	line "respect."

	para "You handled"
	line "yourself well."
	done


Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 15, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 15, 31, ROUTE_2_GATE, 3
	warp_event 16, 27, ROUTE_2_GATE, 1
	warp_event 17, 27, ROUTE_2_GATE, 2
	warp_event 12,  7, DIGLETTS_CAVE, 3
	warp_event  4, 31, VIRIDIAN_FOREST, 3 ;unten links
	warp_event  5, 31, VIRIDIAN_FOREST, 4 ;unten rechts
	warp_event  2,  8, VIRIDIAN_FOREST, 1 ;oben links
	warp_event  3,  8, VIRIDIAN_FOREST, 2 ;oben rechts

	def_coord_events

	def_bg_events
	bg_event  7, 51, BGEVENT_READ, Route2Sign
	bg_event 11,  9, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events
	object_event 10, 45, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRob, -1
	object_event  6,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerAromaLadyCelina, -1
	object_event  0, 40, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLadyElenore, -1
	object_event 19,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 14, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
