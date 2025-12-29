Route28_MapScripts:
	def_scene_scripts

	def_callbacks

Route28Sign:
	jumptext Route28SignText

Route28HiddenHyperBeam:
	hiddenitem TM_HYPER_BEAM, EVENT_ROUTE_28_HIDDEN_HYPER_BEAM

Route28SignText:
	text "The writing on"
	line "this sign has"
	cont "faded long ago."
	;text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_28_KIWAME_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	def_coord_events

	def_bg_events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenHyperBeam

	def_object_events
