	db 0 ; species ID placeholder

	db  45,  40,  60,  50,  40,  75
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/swablu/front.dimensions"
	db NATURAL_CURE, NATURAL_CURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_FLYING, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, IRON_TAIL, DRAGONBREATH, RETURN, DOUBLE_TEAM, MUD_SLAP, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, FLY, ROCK_SMASH, DOUBLE_EDGE, CURSE, FLAMETHROWER
	; end
