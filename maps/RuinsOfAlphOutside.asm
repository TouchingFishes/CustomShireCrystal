	object_const_def
	const RUINSOFALPHOUTSIDE_YOUNGSTER1
	const RUINSOFALPHOUTSIDE_SCIENTIST
	const RUINSOFALPHOUTSIDE_FAT_GUY
	const RUINSOFALPHOUTSIDE_CAMPER
	const RUINSOFALPHOUTSIDE_YOUNGSTER2
	const RUINSOFALPHOUTSIDE_GENTLEMAN
	const RUINSOFALPHOUTSIDE_HIKER1
	const RUINSOFALPHOUTSIDE_SUPER_NERD
	const RUINSOFALPHOUTSIDE_HIKER2

RuinsOfAlphOutside_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphOutsideNoop1Scene, SCENE_RUINSOFALPHOUTSIDE_NOOP
	scene_script RuinsOfAlphOutsideNoop2Scene, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphOutsideScientistCallback

RuinsOfAlphOutsideNoop1Scene:
	end

RuinsOfAlphOutsideNoop2Scene:
	end

RuinsOfAlphOutsideScientistCallback:
	checkflag ENGINE_UNOWN_DEX
	iftrue .NoScientist
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .MaybeScientist
	sjump .NoScientist

.MaybeScientist:
	readvar VAR_UNOWNCOUNT
	ifgreater 2, .YesScientist
	sjump .NoScientist

.YesScientist:
	appear RUINSOFALPHOUTSIDE_SCIENTIST
	setscene SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX
	endcallback

.NoScientist:
	disappear RUINSOFALPHOUTSIDE_SCIENTIST
	setscene SCENE_RUINSOFALPHOUTSIDE_NOOP
	endcallback

RuinsOfAlphOutsideScientistScene1:
	turnobject RUINSOFALPHOUTSIDE_SCIENTIST, UP
	turnobject PLAYER, DOWN
	sjump RuinsOfAlphOutsideScientistSceneContinue

RuinsOfAlphOutsideScientistScene2:
	turnobject RUINSOFALPHOUTSIDE_SCIENTIST, LEFT
	turnobject PLAYER, RIGHT
	sjump RuinsOfAlphOutsideScientistSceneContinue

RuinsOfAlphOutsideScientistScript:
	faceplayer
RuinsOfAlphOutsideScientistSceneContinue:
	opentext
	writetext RuinsOfAlphOutsideScientistText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow RUINSOFALPHOUTSIDE_SCIENTIST, PLAYER
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST, RuinsOfAlphOutsideScientistWalkToLabMovement
	disappear RUINSOFALPHOUTSIDE_SCIENTIST
	stopfollow
	applymovement PLAYER, RuinsOfAlphOutsidePlayerEnterLabMovement
	setmapscene RUINS_OF_ALPH_RESEARCH_CENTER, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX
	warpcheck
	end

RuinsOfAlphOutsideFatGuyScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_RUINS_COWARD
	iftrue .Next
	setevent EVENT_TALKED_TO_RUINS_COWARD
	writetext RuinsOfAlphOutsideFatGuyText1
	promptbutton
.Next:
	writetext RuinsOfAlphOutsideFatGuyText2
	waitbutton
	closetext
	end

RuinsOfAlphOutsideCamper1Script:
	faceplayer
	opentext
	writetext RuinsOfAlphOutsideCamper1Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideYoungster2Script:
	faceplayer
	opentext
	writetext RuinsOfAlphOutsideYoungster2Text
	waitbutton
	closetext
	turnobject RUINSOFALPHOUTSIDE_YOUNGSTER2, UP
	end

TrainerPsychicNathan:
	trainer PSYCHIC_T, NATHAN, EVENT_BEAT_PSYCHIC_NATHAN, PsychicNathanSeenText, PsychicNathanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicNathanAfterBattleText
	waitbutton
	closetext
	end

TrainerRuinManiacFoster:
	trainer RUIN_MANIAC, FOSTER, EVENT_BEAT_RUIN_MANIAC_FOSTER, RuinManiacFosterSeenText, RuinManiacFosterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RuinManiacFosterAfterBattleText
	waitbutton
	closetext
	end

TrainerCollectorEdwin:
	trainer COLLECTOR, EDWIN, EVENT_BEAT_COLLECTOR_EDWIN, CollectorEdwinSeenText, CollectorEdwinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CollectorEdwinAfterBattleText
	waitbutton
	closetext
	end

TrainerRuinManiacHunter:
	trainer RUIN_MANIAC, HUNTER, EVENT_BEAT_RUIN_MANIAC_HUNTER, RuinManiacHunterSeenText, RuinManiacHunterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RuinManiacHunterAfterBattleText
	waitbutton
	closetext
	end

RuinsOfAlphOutsideMysteryChamberSign:
	jumptext RuinsOfAlphOutsideMysteryChamberSignText

RuinsOfAlphSign:
	jumptext RuinsOfAlphSignText

RuinsOfAlphResearchCenterSign:
	jumptext RuinsOfAlphResearchCenterSignText

RuinsOfAlphOutsideScientistWalkToLabMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

RuinsOfAlphOutsidePlayerEnterLabMovement:
	step UP
	step_end

RuinsOfAlphOutsideFossilGuyScript:
	faceplayer
	checkitem STARDUST
    iffalse .NoStardust
    ; Prevent giving if party full
    ;readvar VAR_PARTYCOUNT
    ;ifequal PARTY_LENGTH, .PartyFull

    ; Check if all four Pokémon were already received
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_OMANYTE
    iffalse .OpenMenu
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_KABUTO
    iffalse .OpenMenu
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_LILEEP
    iffalse .OpenMenu
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_ANORITH
    iffalse .OpenMenu

    opentext
    writetext RuinsOfAlphOutsideFossilGuyAllGiftsTakenText
    waitbutton
    closetext
    end

.OpenMenu:
    opentext
    writetext RuinsOfAlphOutsideFossilGuyIntroText
    waitbutton ;promptbutton
	loadmenu .GiftMenuHeader
	verticalmenu
	closewindow
	ifequal 0, .Cancel
    ifequal 1, .PickOmanyte
    ifequal 2, .PickKabuto
    ifequal 3, .PickLileep
    ifequal 4, .PickAnorith
    ifequal 5, .Cancel
    end

.PickOmanyte:
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_OMANYTE
    iftrue .AlreadyTaken
    sjump .ChooseOmanyte

.PickKabuto:
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_KABUTO
    iftrue .AlreadyTaken
    sjump .ChooseKabuto

.PickLileep:
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_LILEEP
    iftrue .AlreadyTaken
    sjump .ChooseLileep

.PickAnorith:
    checkevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_ANORITH
    iftrue .AlreadyTaken
    sjump .ChooseAnorith

.AlreadyTaken:
    opentext
    writetext RuinsOfAlphOutsideFossilGuyAlreadyTakenText
    waitbutton
    closetext
    end

.ChooseOmanyte:
    takeitem STARDUST
    givepoke OMANYTE, PLAIN_FORM, 7
    setevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_OMANYTE
    sjump .Receive

.ChooseKabuto:
    takeitem STARDUST
    givepoke KABUTO, PLAIN_FORM, 7
    setevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_KABUTO
    sjump .Receive

.ChooseLileep:
    takeitem STARDUST
    givepoke LILEEP, PLAIN_FORM, 7
    setevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_LILEEP
    sjump .Receive

.ChooseAnorith:
    takeitem STARDUST
    givepoke ANORITH, PLAIN_FORM, 7
    setevent EVENT_RUINS_OF_ALPH_OUTSIDE_GOT_ANORITH
    sjump .Receive

.Receive:
    opentext
    writetext RuinsOfAlphOutsideFossilGuyReceivedGiftText
    waitbutton
    closetext
    end

.NoStardust:
    opentext
    writetext RuinsOfAlphOutsideFossilGuyNoStardustText
    waitbutton
    closetext
    end

.Cancel:
	opentext
    writetext RuinsOfAlphOutsideFossilGuyCancelText
    waitbutton
    closetext
    end

.PartyFull:
    opentext
    writetext RuinsOfAlphOutsideFossilGuyPartyFullGiftText
    waitbutton
    closetext
    end

.GiftMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
    db "OMANYTE@"
    db "KABUTO@"
    db "LILEEP@"
    db "ANORITH@"
    db "CANCEL@"

RuinsOfAlphOutsideScientistText:
	text "Hm? That's a #-"
	line "DEX, isn't it?"
	cont "May I see it?"

	para "There are so many"
	line "kinds of #MON."

	para "Hm? What's this?"

	para "What is this"
	line "#MON?"

	para "It looks like the"
	line "strange writing on"

	para "the walls of the"
	line "RUINS."

	para "If those drawings"
	line "are really #-"
	cont "MON, there should"
	cont "be many more."

	para "I know! Let me up-"
	line "grade your #-"
	cont "DEX. Follow me."
	done

PsychicNathanSeenText:
	text "Hmmm… This is a"
	line "strange place."
	done

PsychicNathanBeatenText:
	text "…"
	done

PsychicNathanAfterBattleText:
	text "I like thinking"
	line "here."
	done

RuinsOfAlphOutsideMysteryChamberSignText:
	text "MYSTERY STONE"
	line "PANEL CHAMBER"
	done

RuinsOfAlphSignText:
	text "RUINS OF ALPH"
	line "VISITORS WELCOME"
	done

RuinsOfAlphResearchCenterSignText:
	text "RUINS OF ALPH"
	line "RESEARCH CENTER"

	para "THE AUTHORITY ON"
	line "THE RUINS OF ALPH"
	done

RuinsOfAlphOutsideFatGuyText1:
	text "While exploring"
	line "the RUINS, we"

	para "suddenly noticed"
	line "an odd presence."

	para "We all got scared"
	line "and ran away."

	para "You should be"
	line "careful too."
	done

RuinsOfAlphOutsideFatGuyText2:
	text "The RUINS hide a"
	line "huge secret!"

	para "…I think…"
	done

RuinsOfAlphOutsideCamper1Text:
	text "There are many"
	line "kinds of UNOWN, so"

	para "we use them for"
	line "our secret codes."
	done

RuinsOfAlphOutsideYoungster2Text:
	text "A… H… E… A… D…"
	line "Hmm…"

	para "What?"

	para "I'm decoding this"
	line "message!"
	done

RuinsOfAlphOutsideFossilGuyIntroText:
    text "Wait…"

	para "Is that sparkle"
	line "coming from your"
	cont "bag STARDUST?"

	para "I have traveled a-"
	line "cross the world to"

	para "hunt for rare"
	line "FOSSIL #MON."

	para "If you want to, I"
	line "can offer you one"

	para "in exchange for"
	line "some STARDUST."
	done

RuinsOfAlphOutsideFossilGuyAlreadyTakenText:
    text "You already "
	line "claimed that"
	cont "#MON!"
    done

RuinsOfAlphOutsideFossilGuyNoStardustText:
    text "Sorry, I am"
	line "looking for some"

	para "ancient relics."
	line "Please do not"
	cont "bother me."
    done

RuinsOfAlphOutsideFossilGuyPartyFullGiftText:
    text "Your party seems"
	line "to be full."

    para "Make space first."
    done

RuinsOfAlphOutsideFossilGuyAllGiftsTakenText:
    text "Sadly, there is"
	line "no #MON left"

	para "that I could give"
	line "you."
    done

RuinsOfAlphOutsideFossilGuyReceivedGiftText:
    text "Pleasure doing"
	line "business!"
    done

RuinsOfAlphOutsideFossilGuyCancelText:
	text "Oh…"

	para "Come back once you"
	line "are serious about"
	cont "trading with me!"
	done

RuinManiacFosterSeenText:
	text "Ah! A visitor to"
	line "these old ruins!"

	para "The walls tell all"
	line "kinds of secrets."

	para "But first, you"
	line "must prove your-"
	cont "self!"
	done

RuinManiacFosterBeatenText:
	text "The ruins…"
	line "They still hold"
	cont "more mysteries…"
	done

RuinManiacFosterAfterBattleText:
	text "The Unown… the"
	line "ancient scripts…"

	para "I must uncover"
	line "their truth!"

	para "But first, I need"
	line "to train harder!"
	done

CollectorEdwinSeenText:
	text "Oh! A fellow"
    line "treasure seeker!"

    para "These ruins are"
    line "full of rare and"
    cont "curious #MON."

    para "Care for a battle?"
    line "I must test your"
    cont "collector spirit!"
	done

CollectorEdwinBeatenText:
	text "Remarkable!"
    line "Your skill is a"
    cont "rare find indeed!"
    done

CollectorEdwinAfterBattleText:
	text "I gather rare"
    line "items and #MON"
    cont "from old places."

    para "Someday, I'll"
    line "uncover the true"
    cont "value of these"
    cont "ruins…"

    para "Until then, I'll"
    line "keep searching!"
    done

RuinManiacHunterSeenText:
	text "Ah! You found me…"
    line "I wasn't expecting"
    cont "company here…"

    para "I came to watch my"
    line "BRONZOR shimmer in"
    cont "the water's glow."

    para "Umm… w-would you"
    line "like to battle…?"
    done

RuinManiacHunterBeatenText:
	text "Oh… I-I lost…"
    line "Sorry, BRONZOR…"
    done

RuinManiacHunterAfterBattleText:
	text "The reflection on"
    line "BRONZOR's surface…"
    cont "it's soothing."

    para "That's why I hide"
    line "back here… it's"
    cont "quiet and calm."

    para "You're welcome to"
    line "stay… if you want."
    done


RuinsOfAlphOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 14,  7, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  2, 29, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 16, 33, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 10, 13, RUINS_OF_ALPH_INNER_CHAMBER, 1
	warp_event 17, 11, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event  6, 19, UNION_CAVE_B1F, 1
	warp_event  6, 27, UNION_CAVE_B1F, 2
	warp_event  7,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 13, 20, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 13, 21, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	def_coord_events
	coord_event 11, 14, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX, RuinsOfAlphOutsideScientistScene1
	coord_event 10, 15, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX, RuinsOfAlphOutsideScientistScene2

	def_bg_events
	bg_event 16,  8, BGEVENT_READ, RuinsOfAlphOutsideMysteryChamberSign
	bg_event 12, 16, BGEVENT_READ, RuinsOfAlphSign
	bg_event 18, 12, BGEVENT_READ, RuinsOfAlphResearchCenterSign

	def_object_events
	object_event  4, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPsychicNathan, -1
	object_event 11, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistScript, EVENT_RUINS_OF_ALPH_OUTSIDE_SCIENTIST
	object_event 13, 17, SPRITE_FAT_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideFatGuyScript, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FAT_GUY
	object_event 14, 11, SPRITE_CAMPER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideCamper1Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideYoungster2Script, EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	object_event 11, 20, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideFossilGuyScript, -1
	object_event 11, 33, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerRuinManiacFoster, -1
	object_event  2, 34, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCollectorEdwin, -1
	object_event  3, 12, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerRuinManiacHunter, -1
