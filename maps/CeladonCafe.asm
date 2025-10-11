	object_const_def
	const CELADONCAFE_SUPER_NERD
	const CELADONCAFE_ENGINEER
	const CELADONCAFE_FAT_GUY
	const CELADONCAFE_FIREBREATHER
	const CELADONCAFE_TEACHER

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChef:
	faceplayer
	opentext
	writetext ChefText_Eatathon
	waitbutton
	closetext
	end

CeladonCafeEngineer:
	opentext
	writetext EngineerText_Snarfle
	waitbutton
	closetext
	faceplayer
	opentext
	writetext EngineerText_Concentration
	waitbutton
	closetext
	turnobject CELADONCAFE_ENGINEER, LEFT
	end

CeladonCafeFatGuy:
	opentext
	writetext FatGuyText_GulpChew
	waitbutton
	closetext
	faceplayer
	opentext
	writetext FatGuyText_Quantity
	waitbutton
	closetext
	turnobject CELADONCAFE_FAT_GUY, RIGHT
	end

CeladonCafeFirebreather:
	opentext
	writetext FirebreatherText_MunchMunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext FirebreatherText_GoldenrodIsBest
	waitbutton
	closetext
	turnobject CELADONCAFE_FIREBREATHER, RIGHT
	end

CeladonCafeTeacher:
	checkitem COIN_CASE
	iftrue .HasCoinCase
	opentext
	writetext TeacherText_CrunchCrunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext TeacherText_NoCoinCase
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

.HasCoinCase:
	opentext
	writetext TeacherText_KeepEating
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, RIGHT
	opentext
	writetext TeacherText_MoreChef
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

EatathonContestPoster:
	jumptext EatathonContestPosterText

CeladonCafeTrashcan:
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end

.PackFull:
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	promptbutton
	writetext NoRoomForLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript

ChefText_Eatathon:
	text "Hi!"

	para "We're holding an"
	line "eatathon contest."

	para "We can't serve you"
	line "right now. Sorry."
	done

EngineerText_Snarfle:
	text "…Snarfle, chew…"
	done

EngineerText_Concentration:
	text "Don't talk to me!"

	para "You'll break my"
	line "concentration!"
	done

FatGuyText_GulpChew:
	text "…Gulp… Chew…"
	done

FatGuyText_Quantity:
	text "I take quantity"
	line "over quality!"

	para "I'm happy when I'm"
	line "full!"
	done

FirebreatherText_MunchMunch:
	text "Munch, munch…"
	done

FirebreatherText_GoldenrodIsBest:
	text "The food is good"
	line "here, but GOLDEN-"
	cont "ROD has the best"
	cont "food anywhere."
	done

TeacherText_CrunchCrunch:
	text "Crunch… Crunch…"
	done

TeacherText_NoCoinCase:
	text "Nobody here will"
	line "give you a COIN"

	para "CASE. You should"
	line "look in JOHTO."
	done

TeacherText_KeepEating:
	text "Crunch… Crunch…"

	para "I can keep eating!"
	done

TeacherText_MoreChef:
	text "More, CHEF!"
	done

EatathonContestPosterText:
	text "Eatathon Contest!"
	line "No time limit!"

	para "A battle without"
	line "end! The biggest"

	para "muncher gets it"
	line "all for free!"
	done

FoundLeftoversText:
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

NoRoomForLeftoversText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 9
	warp_event  7,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, EatathonContestPoster
	bg_event  7,  1, BGEVENT_READ, CeladonCafeTrashcan

	def_object_events
	object_event  9,  3, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeChef, -1
	object_event  4,  6, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CeladonCafeEngineer, -1
	object_event  1,  7, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCafeFatGuy, -1
	object_event  1,  2, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFirebreather, -1
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeTeacher, -1
