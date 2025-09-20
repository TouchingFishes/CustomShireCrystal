	db 0 ; species ID placeholder

	db  75,  85,  71, 108,  91,  60
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 45 ; catch rate
	db 181 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/crenjobo/front.dimensions"
	db FLASH_FIRE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, SWIFT, FRUSTRATION, RETURN, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SLUDGE_BOMB, FIRE_BLAST, AERIAL_ACE, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, CUT, FLY, FLASH, DOUBLE_EDGE, CURSE
	; end
