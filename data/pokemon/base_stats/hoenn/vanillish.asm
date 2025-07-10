	db 0 ; species ID placeholder

	db  51,  65,  65,  59,  80,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 120 ; catch rate
	db 138 ; base exp
	dw NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/vanillish/front.dimensions"
	db CLEAR_BODY, CLEAR_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, WATER_PULSE, SUBSTITUTE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, HAIL, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FLASH
	; end
