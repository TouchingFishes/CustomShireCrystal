	db 0 ; species ID placeholder

	db  66, 117,  70,  67,  40,  50
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 60 ; catch rate
	db 144 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/fraxure/front.dimensions"
	db STURDY, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, ROAR, SUBSTITUTE, TOXIC, HIDDEN_POWER, SLEEP_TALK, SUNNY_DAY, PROTECT, RAIN_DANCE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, MUD_SLAP, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, ROCK_SMASH, FOCUS_PUNCH, FLAMETHROWER, DOUBLE_EDGE, CURSE
	; end
