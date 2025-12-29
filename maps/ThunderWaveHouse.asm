	object_const_def
	const THUNDERWAVEHOUSE_SAGE

ThunderWaveHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ThunderWaveGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM_THUNDER_WAVE
	iftrue .AlreadyGotThunderWave
	writetext SageThunderWaveIntroText
	verbosegiveitem TM_THUNDER_WAVE
	setevent EVENT_GOT_TM_THUNDER_WAVE
	waitbutton
	closetext
	end
.AlreadyGotThunderWave:
	writetext SageThunderWaveAfterText
	waitbutton
.NoRoomForTM:
	writetext SageThunderWaveBagFullText
	waitbutton
	closetext
	end

SageThunderWaveIntroText:
	text "The flow of battle"
	line "is not decided"

	para "by strength alone."

	para "Sometimes, still-"
	line "ness is what"
	cont "turns the tide."

	para "Take this TM."
	line "It teaches"
	cont "THUNDER WAVE."
	done

SageThunderWaveAfterText:
	text "THUNDER WAVE"
	line "halts even the"

	para "swiftest foe."

	para "Remember control"
	line "is a form of"
	cont "strength."
	done

SageThunderWaveBagFullText:
	text "You do not have"
	line "enough space for"
	cont "this TM."

	para "Clear your pack,"
	line "then return to me."
	done

ThunderWaveHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ThunderWaveGuy, -1
