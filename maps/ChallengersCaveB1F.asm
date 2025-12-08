	object_const_def
	const CHALLENGERSCAVEB1F_POKE_BALL1
	const CHALLENGERSCAVEB1F_ROCK1
	const CHALLENGERSCAVEB1F_ROCK2
	const CHALLENGERSCAVEB1F_POKE_BALL2
	const CHALLENGERSCAVEB1F_POKE_BALL3
	const CHALLENGERSCAVEB1F_POKE_BALL4
	const CHALLENGERSCAVEB1F_ACE_TRAINER_F1
	const CHALLENGERSCAVEB1F_ACE_TRAINER_F2
	const CHALLENGERSCAVEB1F_ACE_TRAINER_M1
	const CHALLENGERSCAVEB1F_ACE_TRAINER_M2
	const CHALLENGERSCAVEB1F_BLACK_BELT_T
	const CHALLENGERSCAVEB1F_JUGGLER
	const CHALLENGERSCAVEB1F_HIKER
	const CHALLENGERSCAVEB1F_POKEMANIAC
	const CHALLENGERSCAVEB1F_SUPER_NERD
	const CHALLENGERSCAVEB1F_VETERAN_F

ChallengersCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

ChallengersCaveB1FPotion:
	itemball POTION

ChallengersCaveb1fFullHeal:
	itemball FULL_HEAL

ChallengersCaveb1fHyperPotion:
	itemball HYPER_POTION

ChallengersCaveb1fDireHit:
	itemball DIRE_HIT

ChallengersCaveb1fRock:
	jumpstd SmashRockScript

ChallengersCaveb1fHiddenElixer:
	hiddenitem ELIXIR, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

TrainerAceTrainerFNaomi:
	trainer ACE_TRAINERF, NAOMI, EVENT_BEAT_ACE_TRAINERF_NAOMI, AceTrainerFNaomiSeenText, AceTrainerFNaomiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFNaomiAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainerFAlexa:
	trainer ACE_TRAINERF, ALEXA, EVENT_BEAT_ACE_TRAINERF_ALEXA, AceTrainerFAlexaSeenText, AceTrainerFAlexaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerFAlexaAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainerMTerry:
	trainer ACE_TRAINERM, TERRY, EVENT_BEAT_ACE_TRAINERM_TERRY, AceTrainerMTerrySeenText, AceTrainerMTerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMTerryAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainerMColby:
	trainer ACE_TRAINERM, COLBY, EVENT_BEAT_ACE_TRAINERM_COLBY, AceTrainerMColbySeenText, AceTrainerMColbyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerMColbyAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackbeltDai:
	trainer BLACKBELT_T, DAI, EVENT_BEAT_BLACKBELT_DAI, BlackbeltDaiSeenText, BlackbeltDaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltDaiAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerNelson:
	trainer JUGGLER, NELSON, EVENT_BEAT_JUGGLER_NELSON, JugglerNelsonSeenText, JugglerNelsonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerNelsonAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDawson:
	trainer HIKER, DAWSON, EVENT_BEAT_HIKER_DAWSON, HikerDawsonSeenText, HikerDawsonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDawsonAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacVince:
	trainer POKEMANIAC, VINCE, EVENT_BEAT_POKEMANIAC_VINCE, PokemaniacVinceSeenText, PokemaniacVinceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacVinceAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdJay:
	trainer SUPER_NERD, JAY, EVENT_BEAT_SUPER_NERD_JAY, SuperNerdJaySeenText, SuperNerdJayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdJayAfterBattleText
	waitbutton
	closetext
	end

TrainerVeteranFJulie:
	trainer VETERAN_F, JULIE, EVENT_BEAT_VETERAN_F_JULIE, VeteranFJulieSeenText, VeteranFJulieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VeteranFJulieAfterBattleText
	waitbutton
	closetext
	end

;BurnedTower1FHiddenUltraBall:
;	hiddenitem ULTRA_BALL, EVENT_BURNED_TOWER_1F_HIDDEN_ULTRA_BALL

Challengerscaveb1fPotion:
	itemball HP_UP

Challengerscaveb1fFullHeal:
	itemball HP_UP

Challengerscaveb1fHyperPotion:
	itemball HP_UP

Challengerscaveb1fDireHit:
	itemball HP_UP

AceTrainerFNaomiSeenText:
    text "Challengers Cave"
    line "is where we prove"
    cont "our strength!"
    done

AceTrainerFNaomiBeatenText:
    text "You're even"
    line "stronger than I"
    cont "expected!"
    done

AceTrainerFNaomiAfterBattleText:
    text "I come here to"
    line "push my limits."
    cont "Next time, I'll"
    cont "win for sure!"
    done

AceTrainerFAlexaSeenText:
    text "I study every"
    line "battle I fight."
    
	para "Let us learn from"
	line "each other!"
    done

AceTrainerFAlexaBeatenText:
    text "My notes didn't"
    line "prepare me!"
    done

AceTrainerFAlexaAfterBattleText:
    text "Your strategy was"
    line "unexpected…"
    cont "I need new data."
    done

AceTrainerMTerrySeenText:
    text "Down here, every"
    line "battle is a test!"
    cont "Are you ready?"
    done

AceTrainerMTerryBeatenText:
    text "I slipped up…"
    line "That cost me!"
    done

AceTrainerMTerryAfterBattleText:
    text "Strong trainers"
    line "learn quickly."
    cont "I'll improve too!"
    done

AceTrainerMColbySeenText:
    text "I train wherever"
    line "strong Pokémon"
    cont "gather! Let's go!"
    done

AceTrainerMColbyBeatenText:
    text "Your power…"
    line "It's the real" 
	cont "deal!"
    done

AceTrainerMColbyAfterBattleText:
    text "Keep battling like"
    line "that and you'll go"
    cont "far, maybe farther"
    cont "than me."
    done

BlackbeltDaiSeenText:
    text "My fighting spirit"
    line "burns bright!"
    cont "Face me!"
    done

BlackbeltDaiBeatenText:
    text "My spirit…"
    line "shaken!"
    done

BlackbeltDaiAfterBattleText:
    text "A true fighter"
    line "grows from defeat."
    cont "I'll train harder!"
    done

JugglerNelsonSeenText:
    text "Heh heh! Can you"
    line "keep up with my"
    cont "battle rhythm?"
    done

JugglerNelsonBeatenText:
    text "You broke my"
    line "focus!"
    done

JugglerNelsonAfterBattleText:
    text "I juggle moves and"
    line "strategies…"
    cont "sometimes I drop"
    cont "both!"
    done

HikerDawsonSeenText:
    text "Nothing beats a"
    line "good battle"
    cont "underground!"
    done

HikerDawsonBeatenText:
    text "Whoa! You hit"
    line "harder than a"
    cont "Rock Slide!"
    done

HikerDawsonAfterBattleText:
    text "I hike here all"
    line "the time. My"
    cont "#MON keep me"
    cont "company!"
    done

PokemaniacVinceSeenText:
    text "Strong #MON"
    line "are good! But"
    cont "battling you seems"
    cont "even better!"
    done

PokemaniacVinceBeatenText:
    text "I'm stunned, like"
    line "a PARALYZED"
	cont "#MON"
    done

PokemaniacVinceAfterBattleText:
    text "If you see any"
    line "unusual #MON,"
    cont "tell me!"
    done

SuperNerdJaySeenText:
    text "Do you know this"
    line "cave well?"
    cont "I've mapped it!"
    done

SuperNerdJayBeatenText:
    text "My calculations"
    line "were off!"
    done

SuperNerdJayAfterBattleText:
    text "The cave shifts"
    line "seasonally…"
    cont "I need more data!"
    done

VeteranFJulieSeenText:
    text "This cave tests"
    line "patience and"
    cont "strength. Show me"
    cont "yours!"
    done

VeteranFJulieBeatenText:
    text "You've passed my"
    line "test."
    done

VeteranFJulieAfterBattleText:
    text "Experience guides"
    line "me forward."

    para "Keep training!"
    line "Your journey"
	cont "continues!"
    done

ChallengersCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 25, DIGLETTS_CAVE, 7
	warp_event 19, 26, ROUTE_46, 3

	def_coord_events

	def_bg_events
	;bg_event 16, 11, BGEVENT_ITEM, ChallengersCaveb1fHiddenElixer

	def_object_events
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Challengerscaveb1fPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_POTION
	object_event 12, 22, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChallengersCaveb1fRock, -1
	object_event  6,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChallengersCaveb1fRock, -1
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Challengerscaveb1fFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Challengerscaveb1fHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 15, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Challengerscaveb1fDireHit, EVENT_DARK_CAVE_VIOLET_ENTRANCE_DIRE_HIT
	object_event 21, 26, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerAceTrainerFNaomi, -1
	object_event 23,  8, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerFAlexa, -1
	object_event 31, 16, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerMTerry, -1
	object_event  4,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerAceTrainerMColby, -1
	object_event 11, 21, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltDai, -1
	object_event 12, 11, SPRITE_JUGGLER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerNelson, -1
	object_event 28, 19, SPRITE_HIKER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerHikerDawson, -1
	object_event 30, 30, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerPokemaniacVince, -1
	object_event 26,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdJay, -1
	object_event 25, 26, SPRITE_VETERAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerVeteranFJulie, -1
