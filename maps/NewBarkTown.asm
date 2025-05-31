	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_RIVAL
	const NEWBARKTOWN_STEVEN

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script NewBarkTownNoop1Scene, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU
	scene_script NewBarkTownNoop2Scene, SCENE_NEWBARKTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NewBarkTownFlypointCallback

NewBarkTownNoop1Scene:
	end

NewBarkTownNoop2Scene:
	end

NewBarkTownFlypointCallback:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherRunsToYouMovement2
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, NewBarkTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_StevenScene1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .end
	checkevent EVENT_BEAT_STEVEN
	iftrue .end

	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear NEWBARKTOWN_STEVEN
	pause 10
	turnobject NEWBARKTOWN_STEVEN, RIGHT
	opentext
	writetext NewBarkTownStevenTextIntro
	waitbutton
	closetext
	setevent EVENT_NEW_BARK_TOWN_STEVEN
	winlosstext NewBarkTownStevenTextLoss, 0
	loadtrainer STEVEN, STEVEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	opentext
	writetext NewBarkTownStevenEpilogueText
	waitbutton
	closetext
	applymovement NEWBARKTOWN_STEVEN, NewBarkTownStevenLeaves1
	disappear NEWBARKTOWN_STEVEN
	end

.end
	end

NewBarkTown_StevenScene2:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .end
	checkevent EVENT_BEAT_STEVEN
	iftrue .end

	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, UP
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear NEWBARKTOWN_STEVEN
	opentext
	writetext NewBarkTownStevenTextIntro
	waitbutton
	closetext
	setevent EVENT_NEW_BARK_TOWN_STEVEN
	winlosstext NewBarkTownStevenTextLoss, 0
	loadtrainer STEVEN, STEVEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	opentext
	writetext NewBarkTownStevenEpilogueText
	waitbutton
	closetext
	applymovement NEWBARKTOWN_STEVEN, NewBarkTownStevenLeaves1
	disappear NEWBARKTOWN_STEVEN
	end

.end
	end

NewBarkTown_StevenScene3:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .end
	checkevent EVENT_BEAT_STEVEN
	iftrue .end

	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear NEWBARKTOWN_STEVEN
	pause 10
	turnobject NEWBARKTOWN_STEVEN, LEFT
	opentext
	writetext NewBarkTownStevenTextIntro
	waitbutton
	closetext
	setevent EVENT_NEW_BARK_TOWN_STEVEN
	winlosstext NewBarkTownStevenTextLoss, 0
	loadtrainer STEVEN, STEVEN1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	opentext
	writetext NewBarkTownStevenEpilogueText
	waitbutton
	closetext
	applymovement NEWBARKTOWN_STEVEN, NewBarkTownStevenLeaves2
	disappear NEWBARKTOWN_STEVEN
	end	

.end
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownRivalScript:
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	turnobject NEWBARKTOWN_RIVAL, LEFT
	opentext
	writetext NewBarkTownRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_RIVAL
	applymovement PLAYER, NewBarkTown_RivalPushesYouAwayMovement
	stopfollow
	pause 5
	turnobject NEWBARKTOWN_RIVAL, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, NewBarkTown_RivalShovesYouOutMovement
	applymovement NEWBARKTOWN_RIVAL, NewBarkTown_RivalReturnsToTheShadowsMovement
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

NewBarkTown_TeacherRunsToYouMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

NewBarkTown_TeacherRunsToYouMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

NewBarkTown_TeacherBringsYouBackMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_TeacherBringsYouBackMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

NewBarkTown_RivalPushesYouAwayMovement:
	turn_head UP
	step DOWN
	step_end

NewBarkTown_RivalShovesYouOutMovement:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

NewBarkTown_RivalReturnsToTheShadowsMovement:
	step RIGHT
	step_end

NewBarkTownStevenLeaves1:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step_end

NewBarkTownStevenLeaves2:
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkTownRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

NewBarkTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done

NewBarkTownStevenTextIntro:
	text "STEVEN: And who"
	line "might you be?"

	para "…"

	para "My name is STEVEN."
	line "Nice to meet you."

	para "I just finished"
	line "talking to my old"
	cont "pla PROF.ELM."

	para "I have been tra-"
	line "velling through"
	cont "JOHTO in order to"
	
	para "find some local"
	line "FOSSIL #MON."
	cont "I have had some"
	
	para "success and ac-"
	line "quired two new"
	cont "#MON."
	
	para "How about me show-"
	line "casing my collec-"
	cont "tion?"
	done

NewBarkTownStevenTextLoss:
	text "I, the best trai-"
	line "ner from HOENN," 
	
	para "fall in defeat…"   
	line "Kudos to you,"

	para "<PLAYER>! You are"
	line "a truly noble"
	cont "#MON trainer!"
	done

NewBarkTownStevenEpilogueText:
	text "STEVEN: You're"
	line "really good."

	para "Tell you what."
	line "How about you help"

	para "me with my search"
	line "for new FOSSILS."

	para "I have heard that"
	line "a scientist in"
	cont "KANTO has dis-"
	
	para "covered a new"
	line "FOSSIL #MON."
	
	para "If you manage to"
	line "find him, I would"
	cont "reward you with a"
	
	para "special price. I"
	line "will be waiting in"
	cont "SAFFRON CITY!"

	para "See you then."
	done


NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1,  8, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene2
	coord_event  7,  4, SCENE_NEWBARKTOWN_NOOP, NewBarkTown_StevenScene1
	coord_event  6,  5, SCENE_NEWBARKTOWN_NOOP, NewBarkTown_StevenScene2
	coord_event  5,  4, SCENE_NEWBARKTOWN_NOOP, NewBarkTown_StevenScene3


	def_bg_events
	bg_event  8,  8, BGEVENT_READ, NewBarkTownSign
	bg_event 11,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 13, BGEVENT_READ, NewBarkTownElmsHouseSign

	def_object_events
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  3,  2, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownRivalScript, EVENT_RIVAL_NEW_BARK_TOWN
	object_event  6,  4, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_WHITE, OBJECTTYPE_SCRIPT, 0, NewBarkTownRivalScript, EVENT_NEW_BARK_TOWN_STEVEN
