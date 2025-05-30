	object_const_def
	const TINTOWERROOF_HO_OH
	const TINTOWERROOF_YAMA

TinTowerRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTowerRoofHoOhCallback

TinTowerRoofHoOhCallback:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TINTOWERROOF_HO_OH
	endcallback

.NoAppear:
	disappear TINTOWERROOF_HO_OH
	endcallback

TinTowerHoOh:
	faceplayer
	opentext
	writetext HoOhText
	cry HO_OH
	pause 15
	closetext
	setevent EVENT_FOUGHT_HO_OH
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon HO_OH, 75
	startbattle
	disappear TINTOWERROOF_HO_OH
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_HO_OH
	clearevent EVENT_YAMA_VISIBLE
	end

YamaScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MASTER_YAMA
	iftrue YamaScript_AfterBattle
	writetext YamaScript_YamaBeforeText
	waitbutton
	closetext
	winlosstext YamaScript_YamaBeatenText, 0
	loadtrainer MASTER, YAMA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MASTER_YAMA
	opentext
	writetext YamaScript_YamaDefeatText
	waitbutton
	closetext
	end

YamaScript_AfterBattle:
	writetext YamaScript_YamaDefeatText
	waitbutton
	closetext
	end

HoOhText:
	text "Shaoooh!"
	done

YamaScript_YamaBeforeText:
	text "Oh, so you're the"
	line "one, who fought my"
	cont "old friend …"

	para "…………"

	para "I can sense that"
	line "he enjoyed your"

	para "battle. Maybe you"
	line "will be a worthy"

	para "challenger for me…"

	para "…………"

	para "Let's find out!"
	done

YamaScript_YamaBeatenText:
	text "…………"
	done

YamaScript_YamaDefeatText:
	text "I see …"

	para "…………"

	para "So that's why he"
	line "showed himself to"
	cont "you …"
	done

TinTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, TIN_TOWER_9F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_HO_OH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHoOh, EVENT_TIN_TOWER_ROOF_HO_OH
	object_event  8,  5, SPRITE_MASTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, YamaScript_Battle, EVENT_YAMA_VISIBLE
