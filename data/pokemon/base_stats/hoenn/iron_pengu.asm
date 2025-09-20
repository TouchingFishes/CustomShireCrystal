	db 0 ; species ID placeholder

	db  56,  80, 114, 126, 114,  60
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ICE ; type
	db 45 ; catch rate
	db 210 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 50 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/iron_pengu/front.dimensions"
	db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, SLEEP_TALK, HAIL, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FLY, FOCUS_PUNCH, ICE_BEAM, DOUBLE_EDGE, CURSE
	; end
