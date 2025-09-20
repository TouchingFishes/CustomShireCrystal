	db 0 ; species ID placeholder

	db  50,  45,  45,  50,  35,  35
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 65 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/skitty/front.dimensions"
	db CUTE_CHARM, CUTE_CHARM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, SLEEP_TALK, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, HAIL, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, MUD_SLAP, DREAM_EATER, FACADE, REST, ATTRACT, STRENGTH, FLASH, ROCK_SMASH, ICE_BEAM, THUNDERBOLT
	; end
