	object_const_def
	const PEWTERNIDORANSPEECHHOUSE_POKEMANIAC
	const PEWTERNIDORANSPEECHHOUSE_NIDORAN_M

PewterNidoranSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranSpeechHousePokemaniacScript:
	jumptextfaceplayer PewterNidoranSpeechHousePokemaniacText

PewterNidoran:
	opentext
	writetext PewterNidoranText
	cry NIDORAN_M
	waitbutton
	closetext
	end

PewterNidoranSpeechHousePokemaniacText:
	text "NIDORAN, shake!"
	done

PewterNidoranText:
	text "NIDORAN: Gau gau!"
	done

PewterNidoranSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 1
	warp_event  3,  7, PEWTER_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHousePokemaniacScript, -1
	object_event  4,  5, SPRITE_NIDORAN_M, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, PewterNidoran, -1 ;SPRITE_GROWLITHE
