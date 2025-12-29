object_const_def
	const CHERRYGROVEBAY_SWIMMER_GIRL1
	const CHERRYGROVEBAY_SWIMMER_GIRL2
    const CHERRYGROVEBAY_SWIMMER_GUY
	const CHERRYGROVEBAY_DRAGON_TAMER
    const CHERRYGROVEBAY_ROCK1
    const CHERRYGROVEBAY_ROCK2
	const CHERRYGROVEBAY_CAMPER

CherrygroveBay_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerFJill:
	trainer SWIMMERF, JILL, EVENT_BEAT_SWIMMERF_JILL, SwimmerFJillSeenText, SwimmerFJillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFJillAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerFLisa:
	trainer SWIMMERF, LISA, EVENT_BEAT_SWIMMERF_LISA, SwimmerFLisaSeenText, SwimmerFLisaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFLisaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerMHal:
	trainer SWIMMERM, HAL, EVENT_BEAT_SWIMMERM_HAL, SwimmerMHalSeenText, SwimmerMHalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMHalAfterBattleText
	waitbutton
	closetext
	end

TrainerDragonTamerJeb:
	trainer DRAGON_TAMER, JEB, EVENT_BEAT_DRAGON_TAMER_JEB, DragonTamerJebSeenText, DragonTamerJebBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DragonTamerJebAfterBattleText
	waitbutton
	closetext
	end

TrainerPokerangerMTrenton:
	trainer POKERANGER_M, TRENTON, EVENT_BEAT_POKERANGER_M_TRENTON, PokeRangerTrentonSeenText, PokeRangerTrentonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokeRangerTrentonAfterBattleText
	waitbutton
	closetext
	end

CherrygroveBayRock:
	jumpstd SmashRockScript

SwimmerFJillSeenText:
	text "Have you seen the"
	line "corals below?"

	para "They're colorful"
	line "and full of life."

	para "Let's battle!"
	done

SwimmerFJillBeatenText:
	text "Oh!"
	line "I lost…"
	done

SwimmerFJillAfterBattleText:
	text "Corals grow slowly"
	line "but beautifully."

	para "They shelter lots"
	line "of tiny #MON."

	para "I want to protect"
	line "them forever."
	done


SwimmerFLisaSeenText:
	text "Isn't the water"
	line "sparkly today?"

	para "Cute #MON look"
	line "even cuter when"
	cont "they swim!"

	para "Let's battle!"
	done

SwimmerFLisaBeatenText:
	text "Aww!"
	line "That was tough!"
	done

SwimmerFLisaAfterBattleText:
	text "I love #MON that"
	line "splash and play."

	para "Watching them"
	line "swim makes me"

	para "smile every time!"
	done

SwimmerMHalSeenText:
	text "Perfect day for"
	line "a swim, huh?"

	para "My #MON and I"
	line "never miss a"
	cont "chance like this."

	para "Care for a"
	line "battle?"
	done

SwimmerMHalBeatenText:
	text "Haha!"
	line "You swam circles"
	cont "around me!"
	done

SwimmerMHalAfterBattleText:
	text "SEEL and DEWGONG"
	line "love the open"

	para "water more than"
	line "anything."

	para "As long as we're"
	line "together, the"
	cont "sea feels right."
	done

DragonTamerJebSeenText:
	text "Look up."

	para "Someday, dragons"
	line "will rule the sky"
	cont "above us."

	para "Until then…"
	line "I train."
	done

DragonTamerJebBeatenText:
	text "So high…"
	line "yet still out-"
	cont "flown."
	done

DragonTamerJebAfterBattleText:
	text "When dragons fly,"

	para "the sky feels"
	line "endless."

	para "That's why I"
	line "train to reach"
	cont "those heights."
	done

PokeRangerTrentonSeenText:
	text "Hold on a moment."

	para "I'm studying these"
	line "trees and the life"
	cont "around them."

	para "Let me see how"
	line "fierce you are in"
	cont "battle."
	done

PokeRangerTrentonBeatenText:
	text "Hmm…"
	line "Your approach"
	cont "checks out."
	done

PokeRangerTrentonAfterBattleText:
	text "Trees tell stories"
	line "if you know how"

	para "to observe them."

	para "Protecting them"
	line "means unders-"
	cont "standing what"
	cont "grows nearby."
	done


CherrygroveBay_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 45, STEEL_WING_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6, 35, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerFJill, -1
	object_event 14, 21, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerFLisa, -1
	object_event  4, 15, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMHal, -1
	object_event 11, 31, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerDragonTamerJeb, -1
	object_event  8,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveBayRock, -1
	object_event 10, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveBayRock, -1
	object_event 12, 44, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokerangerMTrenton, -1
