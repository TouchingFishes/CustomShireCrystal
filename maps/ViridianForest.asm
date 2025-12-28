	object_const_def
	const VIRIDIAN_FOREST_BUG_MANIAC
	const VIRIDIAN_FOREST_CAMPER
	const VIRIDIAN_FOREST_PICNICKER
	const VIRIDIAN_FOREST_DRAGON_TAMER
	const VIRIDIAN_FOREST_BUG_CATCHER1
	const VIRIDIAN_FOREST_BUG_CATCHER2
	const VIRIDIAN_FOREST_POKE_BALL1
	const VIRIDIAN_FOREST_POKE_BALL2
	const VIRIDIAN_FOREST_FRUIT_TREE

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugManiacWeevil:
	trainer BUG_MANIAC, WEEVIL, EVENT_BEAT_BUG_MANIAC_WEEVIL, BugManiacWeevilSeenText, BugManiacWeevilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugManiacWeevilAfterBattleText
	waitbutton
	closetext
	end

TrainerPokerangerMKyler:
	trainer POKERANGER_M, KYLER, EVENT_BEAT_POKERANGER_M_KYLER, PokerangerMKylerSeenText, PokerangerMKylerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokerangerMKylerAfterBattleText
	waitbutton
	closetext
	end

TrainerPokerangerFSophia:
	trainer POKERANGER_F, SOPHIA, EVENT_BEAT_POKERANGER_F_SOPHIA, PokerangerFSophiaSeenText, PokerangerFSophiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokerangerFSophiaAfterBattleText
	waitbutton
	closetext
	end

TrainerDragonTamerOz:
	trainer DRAGON_TAMER, OZ, EVENT_BEAT_DRAGON_TAMER_OZ, DragonTamerOzSeenText, DragonTamerOzBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DragonTamerOzAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

ViridianForestSign:
	jumptext ViridianForestSignText

ViridianForestDireHit:
	itemball DIRE_HIT

ViridianForestMaxPotion:
	itemball MAX_POTION

ViridianForestFruitTree:
	fruittree FRUITTREE_VIRIDIAN_FOREST

ViridianForestHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER

ViridianForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL

ViridianForestHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_RESTORE

ViridianForestHiddenRevive:
	hiddenitem REVIVE, EVENT_VIRIDIAN_FOREST_HIDDEN_REVIVE

BugManiacWeevilSeenText:
	text "Heh heh!"
	line "You stepped right"

	para "into my web of"
	line "BUG #MON!"

	para "Don't underestimate"
	line "the smallest"
	cont "creatures!"
	done

BugManiacWeevilBeatenText:
	text "Gah!"
	line "My bugs were"
	cont "crushed?!"
	done

BugManiacWeevilAfterBattleText:
	text "BUG #MON are"
	line "quick and tricky."

	para "If you look away"
	line "for even a second,"

	para "they'll crawl right"
	line "past your guard!"
	done

PokerangerMKylerSeenText:
	text "Hey there!"

	para "I'm a #RANGER,"
	line "patrolling this"
	cont "forest."

	para "Let's see how you"
	line "handle a battle."
	done

PokerangerMKylerBeatenText:
	text "Nice work!"
	line "That was solid."
	done

PokerangerMKylerAfterBattleText:
	text "Battling's one way"
	line "to learn."

	para "Just remember to"
	line "look out for your"
	cont "#MON."

	para "That's what really"
	line "matters."
	done

PokerangerFSophiaSeenText:
	text "Welcome to"
	line "VIRIDIAN FOREST."

	para "I keep watch to"
	line "make sure trainers"
	cont "and #MON stay"
	cont "safe."

	para "Let's test your"
	line "skill in battle!"
	done

PokerangerFSophiaBeatenText:
	text "Well done!"
	line "You're quite good"
	done

PokerangerFSophiaAfterBattleText:
	text "This forest is"
	line "full of life."

	para "Please walk"
	line "gently and"

	para "respect the"
	line "home of many"
	cont "#MON."
	done

DragonTamerOzSeenText:
	text "Dragons rule over"
	line "all other #MON."

	para "One day, I'll"
	line "stand beside"

	para "LANCE himself."
	line "That's my goal."
	done

DragonTamerOzBeatenText:
	text "Incredible…"
	line "So this is true"
	cont "strength."
	done

DragonTamerOzAfterBattleText:
	text "LANCE taught me"
	line "that power"

	para "comes from trust"
	line "between trainer"
	cont "and dragon."

	para "I still have"
	line "far to climb."
	done

BugCatcherEdSeenText:
	text "If you walk in"
	line "tall grass wearing"

	para "shorts, do you get"
	line "nicks and cuts?"
	done

BugCatcherEdBeatenText:
	text "Ouch, ouch, ouch!"
	done

BugCatcherEdAfterBattleText:
	text "They'll really"
	line "sting when you"
	cont "take a bath."
	done

BugCatcherDougSeenText:
	text "Why don't girls"
	line "like bug #MON?"
	done

BugCatcherDougBeatenText:
	text "No good!"
	done

BugCatcherDougAfterBattleText:
	text "Bug #MON squish"
	line "like plush toys"

	para "when you squeeze"
	line "their bellies."

	para "I love how they"
	line "feel!"
	done

ViridianForestSignText:
	text "VIRIDIAN FOREST"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2, 8
	warp_event  4,  0, ROUTE_2, 9
	warp_event 16, 47, ROUTE_2, 6
	warp_event 17, 47, ROUTE_2, 7

	def_coord_events

	def_bg_events
	bg_event 21, 41, BGEVENT_READ, ViridianForestSign
	bg_event  8,  3, BGEVENT_ITEM, ViridianForestHiddenMaxEther
	bg_event  3, 25, BGEVENT_ITEM, ViridianForestHiddenFullHeal
	bg_event 36,  2, BGEVENT_ITEM, ViridianForestHiddenFullRestore
	bg_event 35, 35, BGEVENT_ITEM, ViridianForestHiddenRevive

	def_object_events
	object_event 33, 42, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerBugManiacWeevil, -1
	object_event 32, 22, SPRITE_CAMPER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokerangerMKyler, -1
	object_event 13, 42, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokerangerFSophia, -1
	object_event 32,  2, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 5, TrainerDragonTamerOz, -1
	object_event 14, 17, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEd, -1
	object_event  6, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1
	object_event  3, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestDireHit, EVENT_VIRIDIAN_FOREST_DIRE_HIT
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestMaxPotion, EVENT_VIRIDIAN_FOREST_MAX_POTION
	object_event  6, 32, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestFruitTree, -1
