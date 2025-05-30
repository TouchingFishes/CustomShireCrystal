	object_const_def
	const CELADONDEPTSTORE4F_CLERK
	const CELADONDEPTSTORE4F_SUPER_NERD
	const CELADONDEPTSTORE4F_YOUNGSTER
	const CELADONDEPTSTORE4F_LORELEI

CeladonDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore4FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_4F
	closetext
	end

CeladonDeptStore4FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore4FSuperNerdText

CeladonDeptStore4FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore4FYoungsterText

CeladonDeptStore4FDirectory:
	jumptext CeladonDeptStore4FDirectoryText

CeladonDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

LoreleiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LORELEI
	iftrue .FightDone
	writetext LoreleiSeenText
	waitbutton
	closetext
	winlosstext LoreleiBeatenText, 0
	loadtrainer LORELEI, LORELEI1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext LoreleiAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext LoreleiAfterText
	waitbutton
	closetext
	end

LoreleiSeenText:
	text "LORELEI: Hello"
	line "there, trainer."
	cont "I am LORELEI."

	para "I am just buying"
	line "some essentials."

	para "And what are you"
	line "doing here?"

	para "…………"

	para "So you battled"
	line "the ELITE FOUR?"

	para "I hope you took"
	line "KAREN down a peg."

	para "…………You're the"
	line "new CHAMPION."
	cont "I'm impressed."

	para "Fascinating, allow"
	line "me to test you and"
	cont "your #MON."

	para "Let's battle! I"
	line "won't hold back!"
	done

LoreleiBeatenText:
	text "As expected of"
	line "the CHAMPION!"
	done

LoreleiAfterText:
	text "You're as good as"
	line "I thought!"
	done

CeladonDeptStore4FSuperNerdText:
	text "I'm here to buy"
	line "SURF MAIL to send"
	cont "to my girlfriend."
	done

CeladonDeptStore4FYoungsterText:
	text "This is the only"
	line "place where you"

	para "can buy LOVELY"
	line "MAIL."
	done

CeladonDeptStore4FDirectoryText:
	text "Express Yourself"
	line "With Gifts!"

	para "4F: WISEMAN GIFTS"
	done

CeladonDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_5F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_3F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, CeladonDeptStore4FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore4FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FClerkScript, -1
	object_event  7,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FSuperNerdScript, -1
	object_event  4,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FYoungsterScript, -1
	object_event  7,  2, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LoreleiScript, -1
