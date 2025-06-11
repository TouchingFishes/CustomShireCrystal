	db 0 ; species ID placeholder

	db  95, 100,  70,  30, 100,  95
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 199 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/purgislug/front.dimensions"
	db STENCH, STENCH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, TOXIC, SLEEP_TALK, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, MUD_SLAP, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, DREAM_EATER, FACADE, REST, ATTRACT, STRENGTH, ROCK_SMASH, DOUBLE_EDGE, CURSE
	; end
