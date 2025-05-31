	object_const_def
	const SILPHCO1F_RECEPTIONIST
	const SILPHCO1F_OFFICER
	const SILPHCO1F_STEVEN

SilphCo1F_MapScripts:
	def_scene_scripts

	def_callbacks

SilphCoReceptionistScript:
	jumptextfaceplayer SilphCoReceptionistText

SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_UP_GRADE
	iftrue .GotUpGrade
	writetext SilphCoOfficerText
	promptbutton
	verbosegiveitem UP_GRADE
	iffalse .NoRoom
	setevent EVENT_GOT_UP_GRADE
.GotUpGrade:
	writetext SilphCoOfficerText_GotUpGrade
	waitbutton
.NoRoom:
	closetext
	end

StevenScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GIDEON
	iffalse .NoFightYet
	checkevent EVENT_BEAT_STEVEN_AGAIN
	iftrue .FightDone
	writetext StevenSeenText
	waitbutton
	closetext
	winlosstext StevenBeatenText, 0
	loadtrainer STEVEN, STEVEN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN_AGAIN
	opentext
	writetext StevenAfterText
	waitbutton
	closetext
	end

.NoFightYet:
	writetext StevenNotReadyText
	waitbutton
	closetext
	end

.FightDone:
	writetext StevenAfterText
	waitbutton
	closetext
	end

SilphCoReceptionistText:
	text "Welcome. This is"
	line "SILPH CO.'s HEAD"
	cont "OFFICE BUILDING."
	done

SilphCoOfficerText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."

	para "But since you came"
	line "such a long way,"

	para "have this neat"
	line "little souvenir."
	done

SilphCoOfficerText_GotUpGrade:
	text "It's SILPH CO.'s"
	line "latest product."

	para "It's not for sale"
	line "anywhere yet."
	done

StevenNotReadyText:
	text "Hi <PLAYER>!"

	para "How has KANTO been"
	line "to you?"

	para "Have you had any"
	line "luck in locating"
	cont "the scientist, who"
	
	para "discovered the new"
	line "fossil #MON?"

	para "………"

	para "Don't worry! I'm"
	line "sure you will find"
	cont "him."

	para "Maybe he is work-"
	line "ing at a place re-"
	cont "lated to science?"

	para "Good luck on your"
	line "journey."
	done

StevenSeenText:
	text "TBD"
	done

StevenBeatenText:
	text "TBD"
	done

StevenAfterText:
	text "TBD"
	done

SilphCo1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoReceptionistScript, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
	object_event 11,  4, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_WHITE, OBJECTTYPE_SCRIPT, 0, StevenScript, -1
