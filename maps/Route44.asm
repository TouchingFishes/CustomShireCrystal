	object_const_def
	const ROUTE44_FISHER1
	const ROUTE44_FISHER2
	const ROUTE44_YOUNGSTER1
	const ROUTE44_SUPER_NERD
	const ROUTE44_YOUNGSTER2
	const ROUTE44_ACE_TRAINER_M
	const ROUTE44_ACE_TRAINER_F
	const ROUTE44_FRUIT_TREE
	const ROUTE44_POKE_BALL1
	const ROUTE44_POKE_BALL2
;	const ROUTE44_POKE_BALL3
	const ROUTE44_ARTICUNO
	const ROUTE44_RICH_BOY
	const ROUTE44_BIRD_KEEPER
	const ROUTE44_CAMPER
	const ROUTE44_FISHER3

Route44_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route44ArticunoCallback

Route44ArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	checkevent EVENT_VIRIDIAN_GYM_BLUE
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NoAppear
	appear ROUTE44_ARTICUNO
	endcallback

.NoAppear:
	disappear ROUTE44_ARTICUNO
	endcallback

TrainerBirdKeeperVance1:
	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_VANCE
	endifjustbattled
	opentext
	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIRDKEEPER_VANCE
	iftrue Route44NumberAcceptedM
	checkevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperVanceLegendaryBirdsText
	promptbutton
	setevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_VANCE
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext BirdKeeperVance1BeatenText, 0
	readmem wVanceFightCount
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	reloadmapafterbattle
	loadmem wVanceFightCount, 1
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, VANCE2
	startbattle
	reloadmapafterbattle
	loadmem wVanceFightCount, 2
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, VANCE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	checkevent EVENT_VANCE_CARBOS
	iftrue .Carbos
	checkevent EVENT_GOT_CARBOS_FROM_VANCE
	iftrue .ReceivedCarbosBefore
	scall Route44RematchGiftM
	verbosegiveitem CARBOS
	iffalse VancePackFull
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

.ReceivedCarbosBefore:
	end

.Carbos:
	opentext
	writetext BirdKeeperVance2BeatenText
	waitbutton
	verbosegiveitem CARBOS
	iffalse VancePackFull
	clearevent EVENT_VANCE_CARBOS
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

Route44AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route44AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route44RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route44NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route44NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route44PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route44RematchM:
	jumpstd RematchMScript
	end

Route44GiftM:
	jumpstd GiftMScript
	end

Route44PackFullM:
	jumpstd PackFullMScript
	end

VancePackFull:
	setevent EVENT_VANCE_CARBOS
	jumpstd PackFullMScript
	end

Route44RematchGiftM:
	jumpstd RematchGiftMScript
	end

TrainerPsychicPhil:
	trainer PSYCHIC_T, PHIL, EVENT_BEAT_PSYCHIC_PHIL, PsychicPhilSeenText, PsychicPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherWilton1:
	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWilton1SeenText, FisherWilton1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_WILTON
	endifjustbattled
	opentext
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue .HasItem
	checkcellnum PHONE_FISHER_WILTON
	iftrue Route44NumberAcceptedM
	checkevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherWiltonHugePoliwagText
	promptbutton
	setevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FISHER_WILTON
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext FisherWilton1BeatenText, 0
	readmem wWiltonFightCount
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer FISHER, WILTON1
	startbattle
	reloadmapafterbattle
	loadmem wWiltonFightCount, 1
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, WILTON2
	startbattle
	reloadmapafterbattle
	loadmem wWiltonFightCount, 2
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, WILTON3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.HasItem:
	scall Route44GiftM
	checkevent EVENT_WILTON_HAS_ULTRA_BALL
	iftrue .UltraBall
	checkevent EVENT_WILTON_HAS_GREAT_BALL
	iftrue .GreatBall
	checkevent EVENT_WILTON_HAS_POKE_BALL
	iftrue .PokeBall
.UltraBall:
	verbosegiveitem ULTRA_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.GreatBall:
	verbosegiveitem GREAT_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.PokeBall:
	verbosegiveitem POKE_BALL
	iffalse .Route44PackFullM
.ItemReceived:
	clearflag ENGINE_WILTON_HAS_ITEM
	sjump Route44NumberAcceptedM

.Route44PackFullM:
	sjump Route44PackFullM

TrainerFisherEdgar:
	trainer FISHER, EDGAR, EVENT_BEAT_FISHER_EDGAR, FisherEdgarSeenText, FisherEdgarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherEdgarAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainerfCybil:
	trainer ACE_TRAINERF, CYBIL, EVENT_BEAT_ACE_TRAINERF_CYBIL, AceTrainerfCybilSeenText, AceTrainerfCybilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainerfCybilAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacZachAfterBattleText
	waitbutton
	closetext
	end

TrainerAceTrainermAllen:
	trainer ACE_TRAINERM, ALLEN, EVENT_BEAT_ACE_TRAINERM_ALLEN, AceTrainermAllenSeenText, AceTrainermAllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AceTrainermAllenAfterBattleText
	waitbutton
	closetext
	end

TrainerRichBoyDarren:
	trainer RICH_BOY, DARREN, EVENT_BEAT_RICH_BOY_DARREN, RichBoyDarrenSeenText, RichBoyDarrenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RichBoyDarrenAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperAnders:
	trainer BIRD_KEEPER, ANDERS, EVENT_BEAT_BIRD_KEEPER_ANDERS, BirdKeeperAndersSeenText, BirdKeeperAndersBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperAndersAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperHarvey:
	trainer CAMPER, HARVEY, EVENT_BEAT_CAMPER_HARVEY, CamperHarveySeenText, CamperHarveyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperHarveyAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherNolan:
	trainer FISHER, NOLAN, EVENT_BEAT_FISHER_NOLAN, FisherNolanSeenText, FisherNolanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherNolanAfterBattleText
	waitbutton
	closetext
	end

Route44Sign1:
	jumptext Route44Sign1Text

Route44Sign2:
	jumptext Route44Sign2Text

Route44FruitTree:
	fruittree FRUITTREE_ROUTE_44

Route44MaxRevive:
	itemball MAX_REVIVE

Route44TmFacade:
	itemball TM_FACADE

;Route44MaxRepel:
;	itemball MAX_REPEL

Route44HiddenElixer:
	hiddenitem ELIXIR, EVENT_ROUTE_44_HIDDEN_ELIXER

Route44Articuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 60
	startbattle
	disappear ROUTE44_ARTICUNO
	reloadmapafterbattle
	end

FisherWilton1SeenText:
	text "Aack! You made me"
	line "lose a POLIWAG!"

	para "What are you going"
	line "to do about it?"
	done

FisherWilton1BeatenText:
	text "Just forget about"
	line "it."
	done

FisherWiltonHugePoliwagText:
	text "That POLIWAG that"
	line "got away…"
	cont "It was huge."

	para "I swear it must've"
	line "been 16 feet long!"
	done

FisherEdgarSeenText:
	text "I fish until I"
	line "can't anymore."

	para "I also battle"
	line "until I drop."

	para "That's my"
	line "relationship"
	cont "with my #MON."
	done

FisherEdgarBeatenText:
	text "Hmmmm…"
	line "This isn't right."
	done

FisherEdgarAfterBattleText:
	text "That's 100 wins"
	line "to 101 losses."

	para "I won't battle"
	line "again for a while."
	done

BirdKeeperVance1SeenText:
	text "Do you know about"
	line "the legendary bird"
	cont "#MON?"
	done

BirdKeeperVance1BeatenText:
	text "Whew! You're hot"
	line "stuff."
	done

BirdKeeperVanceLegendaryBirdsText:
	text "ARTICUNO, ZAPDOS"
	line "and MOLTRES are"

	para "the three legend-"
	line "ary bird #MON."

	para "I heard there are"
	line "other legendary"
	cont "birds, though."
	done

BirdKeeperVance2BeatenText:
	text "Why can't I ever"
	line "beat you?"

	para "Oh yeah, here you"
	line "go. It's that gift"

	para "I couldn't give"
	line "you last time."
	done

PsychicPhilSeenText:
	text "I'm gonna win,"
	line "for sure!"
	done

PsychicPhilBeatenText:
	text "Arrgh… That's a"
	line "shocking loss…"
	done

PsychicPhilAfterBattleText:
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done

PokemaniacZachSeenText:
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done

PokemaniacZachBeatenText:
	text "Oooh, your #MON"
	line "are so appealing."
	done

PokemaniacZachAfterBattleText:
	text "If a #MON has"
	line "different colors"

	para "from usual, it's"
	line "more valuable."

	para "What? You mean"
	line "that's not true?"
	done

AceTrainermAllenSeenText:
	text "I can tell you're"
	line "a good trainer by"
	cont "looking at you."

	para "I'm good at #-"
	line "MON, and I can see"
	cont "that you are too."
	done

AceTrainermAllenBeatenText:
	text "Tch! It's a total"
	line "loss on my part."
	done

AceTrainermAllenAfterBattleText:
	text "Wow. You have a"
	line "lot of BADGES."

	para "No wonder you're"
	line "so tough."

	para "I wonder if"
	line "ECRUTEAK GYM's"

	para "MORTY is still in"
	line "training?"

	para "He really hammered"
	line "me."
	done

RichBoyDarrenSeenText:
	text "I spent ages look-"
	line "ing for my team."

	para "Let's find out, if"
	line "it was worth it."
	done

RichBoyDarrenBeatenText:
	text "Seems like the"
	line "time i spent was"
	cont "not worth it."
	done

RichBoyDarrenAfterBattleText:
	text "Someone told me"
	line "that my #MON"

	para "are on the cusp of"
	line "realizing their"
	cont "full potential."
	done

BirdKeeperAndersSeenText:
	text "I love the way"
	line "my birds can tame"

	para "the wind. Let me"
	line "show you!"
	done

BirdKeeperAndersBeatenText:
	text "What a show!"
	done

BirdKeeperAndersAfterBattleText:
	text "Bird #MON are"
	line "the strongest."

	para "Trust me."
	done

AceTrainerfCybilSeenText:
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done

AceTrainerfCybilBeatenText:
	text "Nope! This won't"
	line "do at all."
	done

AceTrainerfCybilAfterBattleText:
	text "We all get better"
	line "by experiencing"
	cont "many battles."

	para "I battled a lot to"
	line "become what I am"
	cont "today--an elite."
	done

CamperHarveySeenText:
	text "Hiking all the way"
	line "up here has been a"

	para "blast. Let's bat-"
	line "tle!"
	done

CamperHarveyBeatenText:
	text "That was tough!"
	done

CamperHarveyAfterBattleText:
	text "I'm so exhausted."
	done

FisherNolanSeenText:
	text "I like travelling"
	line "around and enjoy-"
	cont "ing nature."

	para "How about a bat-"
	line "tle?"
	done

FisherNolanBeatenText:
	text "Darn!"
	done

FisherNolanAfterBattleText:
	text "These mountain"
	line "lakes are so"
	cont "pristine."
	done

Route44Sign1Text:
	text "ROUTE 44"
	line "ICE PATH AHEAD"
	done

Route44Sign2Text:
	text "ROUTE 44"

	para "MAHOGANY TOWN -"
	line "BLACKTHORN CITY"
	done

ArticunoText:
	text "Kyyaaaaaaah!"
	done

Route44_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  7, ICE_PATH_1F, 1

	def_coord_events

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route44Sign1
	bg_event  6, 28, BGEVENT_READ, Route44Sign2
	bg_event 32, 27, BGEVENT_ITEM, Route44HiddenElixer

	def_object_events
	object_event 34, 17, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherWilton1, -1
	object_event 19, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherEdgar, -1
	object_event 10, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicPhil, -1
	object_event 43, 20, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacZach, -1
	object_event 49, 20, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperVance1, -1
	object_event 41, 33, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerAceTrainermAllen, -1
	object_event 31, 32, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerAceTrainerfCybil, -1
	object_event  9, 23, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route44FruitTree, -1
	object_event  8, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRevive, EVENT_ROUTE_44_MAX_REVIVE
	object_event 44,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44TmFacade, EVENT_ROUTE_44_TM_FACADE
	;object_event 14, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRepel, EVENT_ROUTE_44_MAX_REPEL
	object_event 35, 26, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route44Articuno, EVENT_BIRDS_VISIBLE
	object_event 18, 16, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerRichBoyDarren, -1 ;SPRITEMOVEDATA_STANDING_LEFT
	object_event 50, 29, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperAnders, -1
	object_event 51,  5, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerCamperHarvey, -1
	object_event 53, 22, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherNolan, -1
