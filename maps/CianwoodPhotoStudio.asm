	object_const_def
	const CIANWOODPHOTOSTUDIO_POKEMANIAC

CianwoodPhotoStudio_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPhotoStudioPokemaniacScript:
	faceplayer
	opentext
	writetext CianwoodPhotoStudioPokemaniacText_Question
	yesorno
	iffalse .Refused
	writetext CianwoodPhotoStudioPokemaniacText_Yes
	waitbutton
	special PhotoStudio
	waitbutton
	closetext
	end

.Refused:
	writetext CianwoodPhotoStudioPokemaniacText_No
	waitbutton
	closetext
	end

CianwoodPhotoStudioPokemaniacText_Question:
	text "You have magnifi-"
	line "cent #MON with"
	cont "you."

	para "How about a photo"
	line "for a souvenir?"
	done

CianwoodPhotoStudioPokemaniacText_Yes:
	text "OK! Big smile now!"
	done

CianwoodPhotoStudioPokemaniacText_No:
	text "Oh, that's too"
	line "bad. I thought it"

	para "would be a great"
	line "memento…"
	done

CianwoodPhotoStudio_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 5
	warp_event  3,  7, CIANWOOD_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPhotoStudioPokemaniacScript, -1
