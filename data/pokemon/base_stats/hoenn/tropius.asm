	db 0 ; species ID placeholder

	db 110,  68,  83,  51,  83,  87
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 200 ; catch rate
	db 169 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/tropius/front.dimensions"
	db CHLOROPHYLL, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, SUBSTITUTE, ROAR, TOXIC, SLEEP_TALK, BULLET_SEED, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SWIFT, FRUSTRATION, SOLARBEAM, DRAGONBREATH, EARTHQUAKE, RETURN, DOUBLE_TEAM, MUD_SLAP, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, CUT, FLY, STRENGTH, FLASH, ROCK_SMASH
	; end
