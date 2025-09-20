	db 0 ; species ID placeholder

	db  64, 115,  65,  75,  93,  63
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, GHOST ; type
	db 45 ; catch rate
	db 179 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/banette/front.dimensions"
	db INSOMNIA, INSOMNIA ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUBSTITUTE, TOXIC, ZAP_CANNON, SLEEP_TALK, HIDDEN_POWER, SUNNY_DAY, TAUNT, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, SWIFT, FRUSTRATION, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, DREAM_EATER, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLASH, THUNDERBOLT
	; end
