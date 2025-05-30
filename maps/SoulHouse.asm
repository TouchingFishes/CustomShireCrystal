	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY
	const SOULHOUSE_AGATHA

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

AgathaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_AGATHA
	iftrue .FightDone
	writetext AgathaSeenText
	waitbutton
	closetext
	winlosstext AgathaBeatenText, 0
	loadtrainer AGATHA, AGATHA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AGATHA
	opentext
	writetext AgathaAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext AgathaAfterText
	waitbutton
	closetext
	end

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

AgathaSeenText:
	text "AGATHA: Hello,"
	line "child."

	para "My name is"
	line "AGATHA."

	para "I fought for years"
	line "as a member of"
	cont "the ELITE FOUR."

	para "…………"

	para "Have you come to"
	line "mourn a #MON?"

	para "It might not be"
	line "here any longer."

	para "MR.FUJI kept many"
	line "of the graves"
	cont "elsewhere after"

	para "the radio company"
	line "took over."

	para "…………"

	para "He could have"
	line "fought to preserve"
	cont "the tower! But he"

	para "wouldn't get"
	line "involved. Too"

	para "scared of abusing"
	line "his influence."

	para "That old fool…"

	para "Power is meant to"
	line "be used!"

	para "You clearly"
	line "understand me."

	para "I'll show you"
	line "what a powerful"
	cont "trainer can do!"
	done

AgathaBeatenText:
	text "Oh, my!"
	done

AgathaRewardText:
	text "You're quite"
	line "something, child."

	para "A strong trainer"
	line "with a deep"

	para "connection to"
	line "your #mon."

	;para "Here, take this"
	;line "TM!"
	done

AgathaAfterText:
	text "I expect great"
	line "things from you,"
	cont "if you will them."
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
	object_event  9,  7, SPRITE_AGATHA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AgathaScript, -1

