	object_const_def
	const ROUTE28KIWAMEHOUSE_GRANNY

Route28KiwameHouse_MapScripts:
	def_scene_scripts
	scene_script Route28KiwameHouseNoopScene ; unusable

	def_callbacks

Route28KiwameHouseNoopScene:
	end

KiwameScript:
	faceplayer
	opentext
	writetext KiwameIntroText
	yesorno
	iffalse .Refused
	writetext KiwameWhichElementText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal MOVETUTOR_FRENZY_PLANT, .FrenzyPlant
	ifequal MOVETUTOR_BLAST_BURN, .BlastBurn
	ifequal MOVETUTOR_HYDRO_CANNON, .HydroCannon
	sjump .Incompatible

.FrenzyPlant:
	setval MOVETUTOR_FRENZY_PLANT
	writetext KiwameChooseGrassText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.BlastBurn:
	setval MOVETUTOR_BLAST_BURN
	writetext KiwameChooseFireText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.HydroCannon:
	setval MOVETUTOR_HYDRO_CANNON
	writetext KiwameChooseWaterText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 9, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "GRASS@"
	db "FIRE@"
	db "WATER@"
	db "CANCEL@"

.Refused:
	writetext KiwameRefuseText
	waitbutton
	closetext
	end

.TeachMove:
	writetext KiwameTeachMoveText
	promptbutton
	writetext KiwameGoodbyeText
	waitbutton
	closetext
	end

.Incompatible:
	writetext KiwameNoEligibleMonText
	waitbutton
	closetext
	end

KiwameIntroText:
	text "…So, you have"
	line "climbed this far."

	para "At the foot of"
	line "MT. SILVER,"

	para "I await trainers"
	line "who seek the"
	cont "ultimate form of"
	cont "power."

	para "GRASS."
	line "FIRE."
	cont "WATER."

	para "These types have"
	line "potential to reach"
	cont "pinnacle of"
	cont "#MON attacks."

	para "………"

	para "Are you ready"
	line "to learn?"
	done

KiwameWhichElementText:
	text "Tell me…"
	line "which element"
	cont "do you choose?"
	done

KiwameChooseGrassText:
	text "GRASS…"

	para "Life that grows,"
	line "endures, and"
	cont "overwhelms all."

	para "FRENZY PLANT is"
	line "the roar of the"
	cont "earth itself."
	done

KiwameChooseFireText:
	text "FIRE…"

	para "A force that"
	line "devours hesitation"
	cont "and leaves resolve."

	para "BLAST BURN is"
	line "unmatched fury."
	done

KiwameChooseWaterText:
	text "WATER…"

	para "Calm on the"
	line "surface,"

	para "unstoppable in"
	line "motion."

	para "HYDRO CANNON is"
	line "absolute force."
	done

KiwameTeachMoveText:
	text "Very well."

	para "Let your partner"
	line "accept this power."

	para "Know this—"

	para "Such strength"
	line "demands resolve."

	para "Use it wisely."
	done

KiwameNoEligibleMonText:
	text "…I see no #MON"

	para "ready to bear"
	line "this burden."

	para "Return when you"
	line "found a #MON"
	cont "that is ready to"
	cont "bear such power."
	done

KiwameGoodbyeText:
	text "The mountain"
	line "watches all who"
	cont "pass."

	para "Power alone will"
	line "not carry you to"
	cont "the summit."

	para "Go now."

	para "Let your #MON's"
	line "will guide you."
	done

KiwameRefuseText:
	text "I see…"
	line "You choose to"
	cont "walk on."

	para "At the summit of"
	line "this mountain"

	para "waits one who has"
	line "perfected all"
	cont "three paths."

	para "When you are"
	line "ready to match"
	cont "that resolve,"

	para "return."
	done

Route28KiwameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_28, 1
	warp_event  3,  7, ROUTE_28, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, KiwameScript, -1
