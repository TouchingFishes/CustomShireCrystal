SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw TurtwigEvosAttacks
	dw GrotleEvosAttacks
	dw TorterraEvosAttacks
	dw ChimcharEvosAttacks
	dw MonfernoEvosAttacks
	dw InfernapeEvosAttacks
	dw PiplupEvosAttacks
	dw PrinplupEvosAttacks
	dw EmpoleonEvosAttacks
	dw WeavileEvosAttacks
	dw HonchkrowEvosAttacks
	dw GliscorEvosAttacks
	dw LeafeonEvosAttacks
	dw GlaceonEvosAttacks
	dw YanmegaEvosAttacks
	dw KujinoughtEvosAttacks
	dw MlloyEvosAttacks
	dw LotugaEvosAttacks
	dw VertugaEvosAttacks
	dw ColijoboEvosAttacks
	dw CrenjoboEvosAttacks
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw VoltrelEvosAttacks
	dw VoltreanEvosAttacks
	dw SolosisEvosAttacks
	dw DuosionEvosAttacks
	dw ReuniclusEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw Iron_penguEvosAttacks
	dw Iron_thornEvosAttacks
	dw SlakothEvosAttacks
	dw VigorothEvosAttacks
	dw SlakingEvosAttacks
	dw NincadaEvosAttacks
	dw NinjaskEvosAttacks
	dw ShedinjaEvosAttacks
	dw TinkatinkEvosAttacks
	dw TinkatuffEvosAttacks
	dw TinkatonEvosAttacks
	dw MakuhitaEvosAttacks
	dw HariyamaEvosAttacks
	dw DuscornEvosAttacks
	dw FletchlingEvosAttacks
	dw FletchindaEvosAttacks
	dw TalonflameEvosAttacks
	dw SkittyEvosAttacks
	dw DelcattyEvosAttacks
	dw TropiusEvosAttacks
	dw TangrowthEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw MedititeEvosAttacks
	dw MedichamEvosAttacks
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
	dw GekoponEvosAttacks
	dw TynamoEvosAttacks
	dw EelektrikEvosAttacks
	dw EelektrossEvosAttacks
	dw CorsoreefEvosAttacks
	dw DundragEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw BarboachEvosAttacks
	dw WhiscashEvosAttacks
	dw BronzorEvosAttacks
	dw BronzongEvosAttacks
	dw SmoguanaEvosAttacks
	dw SmokomodoEvosAttacks
	dw TorkoalEvosAttacks
	dw VanilliteEvosAttacks
	dw VanillishEvosAttacks
	dw VanilluxeEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw NohfaceEvosAttacks
	dw KitsunohEvosAttacks
	dw KrolucadaEvosAttacks
	dw KrolucardEvosAttacks
	dw SwabluEvosAttacks
	dw AltariaEvosAttacks
	dw LarvestaEvosAttacks
	dw VolcaronaEvosAttacks
	dw ImpidimpEvosAttacks
	dw MorgremEvosAttacks
	dw GrimmsnarlEvosAttacks
	dw WyrdeerEvosAttacks
	dw BaltoyEvosAttacks
	dw ClaydolEvosAttacks
	dw PurgislugEvosAttacks
	dw LarvicidEvosAttacks
	dw PendragonEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw CastformEvosAttacks
	dw LitwickEvosAttacks
	dw LampentEvosAttacks
	dw ChandelureEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw DecibelleEvosAttacks
	dw ChimechoEvosAttacks
	dw AbsolEvosAttacks
	dw MagnezoneEvosAttacks
	dw SnoverEvosAttacks
	dw AbomasnowEvosAttacks
	dw ShuppetEvosAttacks
	dw BanetteEvosAttacks
	dw LileepEvosAttacks
	dw CradilyEvosAttacks
	dw AnorithEvosAttacks
	dw ArmaldoEvosAttacks
	dw AxewEvosAttacks
	dw FraxureEvosAttacks
	dw HaxorusEvosAttacks
	dw RelicanthEvosAttacks
	dw LuvdiscEvosAttacks
	dw RaelicEvosAttacks
	dw RomushuEvosAttacks
	dw FusangEvosAttacks
	dw BeldumEvosAttacks
	dw MetangEvosAttacks
	dw MetagrossEvosAttacks
	dw LatiasEvosAttacks
	dw LatiosEvosAttacks
	dw KyogreEvosAttacks
	dw GroudonEvosAttacks
	dw RayquazaEvosAttacks
	dw JirachiEvosAttacks
	dw DeoxysEvosAttacks
.IndirectEnd::

TurtwigEvosAttacks:
	evolve EVOLVE_LEVEL, 18, GROTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 6, ABSORB
	dbw 11, RAZOR_LEAF
	dbw 17, CURSE
	dbw 21, BITE
	dbw 26, LEECH_SEED
	dbw 31, SYNTHESIS
	dbw 36, CRUNCH
	dbw 41, GIGA_DRAIN
	dbw 46, ROCK_SLIDE
	db 0 ; no more level-up moves

GrotleEvosAttacks:
	evolve EVOLVE_LEVEL, 32, TORTERRA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, WITHDRAW
	dbw 1, TACKLE
	dbw 6, WITHDRAW
	dbw 11, ABSORB
	dbw 16, RAZOR_LEAF
	dbw 17, CURSE
	dbw 23, BITE
	dbw 29, MEGA_DRAIN
	dbw 35, SYNTHESIS
	dbw 41, CRUNCH
	dbw 47, WOOD_HAMMER
	dbw 53, ROCK_SLIDE
	db 0 ; no more level-up moves

TorterraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, WITHDRAW
	dbw 1, TACKLE
	dbw 6, WITHDRAW
	dbw 11, ABSORB
	dbw 16, RAZOR_LEAF
	dbw 17, CURSE
	dbw 23, BITE
	dbw 29, MEGA_DRAIN
	dbw 32, EARTHQUAKE
	dbw 35, SYNTHESIS
	dbw 43, CRUNCH
	dbw 51, WOOD_HAMMER
	dbw 59, STONE_EDGE
	db 0 ; no more level-up moves

ChimcharEvosAttacks:
	evolve EVOLVE_LEVEL, 14, MONFERNO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, TAUNT
	dbw 10, EMBER
	dbw 16, FURY_SWIPES
	dbw 19, FLAME_WHEEL
	dbw 25, FIRE_SPIN
	dbw 28, FACADE
	dbw 34, FAINT_ATTACK
	dbw 37, CALM_MIND
	dbw 43, FIRE_SPIN
	db 0 ; no more level-up moves

MonfernoEvosAttacks:
	evolve EVOLVE_LEVEL, 36, INFERNAPE
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAUNT
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 7, TAUNT
	dbw 13, EMBER
	dbw 16, ARM_THRUST
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 28, FACADE
	dbw 32, FAINT_ATTACK
	dbw 39, FIRE_SPIN
	dbw 43, CALM_MIND
	dbw 50, OVERHEAT
	db 0 ; no more level-up moves


InfernapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 7, TAUNT
	dbw 13, EMBER
	dbw 16, ARM_THRUST
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 28, FACADE
	dbw 32, FAINT_ATTACK
	dbw 36, LOW_KICK
	dbw 42, FIRE_SPIN
	dbw 49, CALM_MIND
	dbw 59, OVERHEAT
	db 0 ; no more level-up moves

PiplupEvosAttacks:
	evolve EVOLVE_LEVEL, 16, PRINPLUP
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 6, BUBBLE
	dbw 10, METAL_SOUND
	dbw 15, PECK
	dbw 19, BIDE
	dbw 24, BUBBLEBEAM
	dbw 28, FURY_ATTACK
	dbw 33, SWAGGER
	dbw 37, MIST
	dbw 42, DRILL_PECK
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

PrinplupEvosAttacks:
	evolve EVOLVE_LEVEL, 36, EMPOLEON
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 6, BUBBLE
	dbw 10, METAL_SOUND
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BIDE
	dbw 24, BUBBLEBEAM
	dbw 28, FURY_ATTACK
	dbw 33, SWAGGER
	dbw 37, MIST
	dbw 42, DRILL_PECK
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 1, BUBBLE
	dbw 6, MUD_SLAP
	dbw 10, SWORDS_DANCE
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 20, BUBBLEBEAM
	dbw 25, SWAGGER
	dbw 31, MIRROR_SHOT
	dbw 39, DIVE
	dbw 46, MIST
	dbw 52, DRILL_PECK
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, TAUNT
	dbw 9, QUICK_ATTACK
	dbw 16, SCREECH
	dbw 23, NIGHT_SLASH
	dbw 30, FURY_SWIPES
	dbw 37, AGILITY
	dbw 44, ICY_WIND
	dbw 51, SLASH
	dbw 58, BEAT_UP
	dbw 65, METAL_CLAW
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 9, ASTONISH
	dbw 14, PURSUIT
	dbw 22, HAZE
	dbw 27, NIGHT_SHADE
	dbw 35, FAINT_ATTACK
	dbw 40, TAUNT
	dbw 48, MEAN_LOOK
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SCREECH
	dbw 7, SAND_ATTACK
	dbw 14, HARDEN
	dbw 21, QUICK_ATTACK
	dbw 29, FAINT_ATTACK
	dbw 37, SLASH
	dbw 45, X_SCISSOR
	dbw 53, GUILLOTINE
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, RAZOR_LEAF
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, MAGICAL_LEAF
	dbw 42, GRASSWHISTLE
	dbw 47, LEAF_BLADE
	dbw 52, SYNTHESIS
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, ICY_WIND
	dbw 23, QUICK_ATTACK
	dbw 30, SWIFT
	dbw 36, AURORA_BEAM
	dbw 42, MIRROR_COAT
	dbw 47, ICE_BEAM
	dbw 52, BLIZZARD
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 1, SCREECH
	dbw 7, QUICK_ATTACK
	dbw 13, DOUBLE_TEAM
	dbw 19, SONICBOOM
	dbw 23, DETECT
	dbw 28, RAZOR_WIND
	dbw 31, SUPERSONIC
	dbw 37, UPROAR
	dbw 40, OMINOUS_WIND
	dbw 43, WING_ATTACK
	dbw 49, SIGNAL_BEAM
	db 0 ; no more level-up moves

KujinoughtEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, OCTAZOOKA
	dbw 1, LOCK_ON
	dbw 1, FOCUS_ENERGY
	dbw 1, SMOKESCREEN
	dbw 50, WATER_SPOUT
	db 0 ; no more level-up moves

MlloyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LOW_KICK
	dbw 1, FALSE_SWIPE
	dbw 6, MUD_SLAP
	dbw 11, SCREECH
	dbw 16, KARATE_CHOP
	dbw 21, KNOCK_OFF
	dbw 26, AERIAL_ACE
	dbw 31, SWORDS_DANCE
	dbw 36, AGILITY
	dbw 41, SLASH
	dbw 46, RAZOR_WIND
	dbw 58, LEAF_BLADE
	db 0 ; no more level-up moves

LotugaEvosAttacks:
	evolve EVOLVE_ITEM, SUN_STONE, VERTUGA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 3, WITHDRAW
	dbw 7, BITE
	dbw 13, NATURE_POWER
	dbw 19, BIDE
	dbw 25, BUBBLEBEAM
	dbw 31, MIST
	dbw 37, RAIN_DANCE
	dbw 43, EGG_BOMB
	dbw 49, HYDRO_PUMP 
	db 0 ; no more level-up moves

VertugaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWER_WHIP
	dbw 1, BUBBLEBEAM
	dbw 1, WITHDRAW
	dbw 1, NATURE_POWER
	db 0 ; no more level-up moves

ColijoboEvosAttacks:
	evolve EVOLVE_LEVEL, 38, CRENJOBO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, MEAN_LOOK
	dbw 3, SCARY_FACE
	dbw 7, SPITE
	dbw 13, EMBER
	dbw 18, FAINT_ATTACK
	dbw 21, WILL_O_WISP
	dbw 31, RAZOR_WIND
	dbw 43, GRUDGE
	dbw 49, OMINOUS_WIND
	db 0 ; no more level-up moves

CrenjoboEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, MEAN_LOOK
	dbw 3, SCARY_FACE
	dbw 7, SPITE
	dbw 13, EMBER
	dbw 18, FAINT_ATTACK
	dbw 21, WILL_O_WISP
	dbw 31, RAZOR_WIND
	dbw 38, GRUDGE
	dbw 46, OMINOUS_WIND
	dbw 53,	AGILITY
	dbw 59, HEAT_WAVE
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERPUNCH
	dbw 10, THUNDERPUNCH
	dbw 18, LIGHT_SCREEN
	dbw 26, SWIFT
	dbw 37, SCREECH
	dbw 48, THUNDERBOLT
	dbw 59, THUNDER
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, FIRE_PUNCH
	dbw 1, LEER
	dbw 1, SMOG
	dbw 8, LEER
	dbw 14, SMOG
	dbw 20, FIRE_PUNCH
	dbw 26, SMOKESCREEN
	dbw 34, SUNNY_DAY
	dbw 42, FLAMETHROWER
	dbw 50, CONFUSE_RAY
	dbw 58, FIRE_BLAST
	db 0 ; no more level-up moves

VoltrelEvosAttacks:
	evolve EVOLVE_LEVEL, 25, VOLTREAN
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, HOWL
	dbw 4, THUNDER_WAVE
	dbw 7, SUPERSONIC
	dbw 13, QUICK_ATTACK
	dbw 21, MIST
	dwb 27, UPROAR
	dbw 31, WING_ATTACK
	dbw 43, PURSUIT
	dbw 55, AGILITY
	db 0 ; no more level-up moves

VoltreanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, HOWL
	dbw 1, THUNDER_WAVE
	dbw 1, MIST
	dbw 3, QUICK_ATTACK
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK
	dbw 21, MIST
	dbw 25, SPARK
	dbw 33, UPROAR
	dbw 40, AERIAL_ACE
	dbw 47, AGILITY
	dbw 61, THUNDER
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	evolve EVOLVE_LEVEL, 32, DUOSION
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	evolve EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 49, ENDEAVOR
	dbw 56, ENCORE
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	evolve EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, DOUBLE_TEAM
	dbw 25, BUBBLEBEAM
	dbw 31, AGILITY
	dbw 37, HAZE
	dbw 37, MIST
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, GUST
	dbw 1, SWEET_SCENT
	dbw 1, DOUBLE_TEAM
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, DOUBLE_TEAM
	dbw 26, RAZOR_WIND
	dbw 33, SCARY_FACE
	dbw 40, STUN_SPORE
	dbw 47, SILVER_WIND
	dbw 53, WHIRLWIND
	dbw 60, SIGNAL_BEAM
	db 0 ; no more level-up moves

Iron_penguEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	dbw 7, POWDER_SNOW
	dbw 14, PECK
	dbw 21, AGILITY
	dbw 28, MIRROR_SHOT
	dbw 35, TAKE_DOWN
	dbw 42, ICE_BEAM
	dbw 49, ENCORE
	dbw 56, DRILL_PECK
	dbw 63, BLIZZARD
	db 0 ; no more level-up moves

Iron_thornEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, METAL_CLAW
	dbw 8, SCREECH
	dbw 16, BITE
	dbw 24, THUNDERSHOCK
	dbw 32, SCARY_FACE
	dbw 40, MIRROR_SHOT
	dbw 48, CHARGE_BEAM
	dbw 56, THUNDER
	dbw 64, IRON_TAIL
	dbw 72, HYPER_BEAM
	db 0 ; no more level-up moves

SlakothEvosAttacks:
	evolve EVOLVE_LEVEL, 18, VIGOROTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, YAWN
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 37, COUNTER
	dbw 43, FLAIL
	db 0 ; no more level-up moves

VigorothEvosAttacks:
	evolve EVOLVE_LEVEL, 36, SLAKING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ENCORE
	dbw 1, FOCUS_ENERGY
	dbw 1, UPROAR
	dbw 7, ENCORE
	dbw 13, UPROAR
	dbw 19, FURY_SWIPES
	dbw 25, ENDURE
	dbw 31, SLASH
	dbw 37, COUNTER
	dbw 43, FOCUS_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

SlakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ENCORE
	dbw 1, SLACK_OFF
	dbw 1, YAWN
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 36, SWAGGER
	dbw 37, COUNTER
	dbw 43, FOCUS_PUNCH
	dbw 49, REVERSAL
	dbw 55, FLAIL
	dbw 62, HAMMER_ARM
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	evolve EVOLVE_LEVEL, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, FALSE_SWIPE
	dbw 31, MUD_SLAP
	dbw 38, METAL_CLAW
	dbw 45, DIG
	db 0 ; no more level-up moves

NinjaskEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, SWORDS_DANCE
	dbw 31, SLASH
	dbw 38, AGILITY
	dbw 45, BATON_PASS
	dbw 51, X_SCISSOR
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, SILVER_WIND
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 21, OMINOUS_WIND
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_BALL
	dbw 45, GRUDGE
	dbw 51, MAGICAL_FIRE
	db 0 ; no more level-up moves

TinkatinkEvosAttacks:
	evolve EVOLVE_LEVEL, 24, TINKATUFF
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 21, KNOCK_OFF
	dbw 25, METAL_CLAW
	dbw 31, SWEET_KISS
	dbw 35, SLAM
	dbw 41, REST
	dbw 41, SLEEP_TALK
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

TinkatuffEvosAttacks:
	evolve EVOLVE_LEVEL, 38, TINKATON
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 23, KNOCK_OFF
	dbw 29, METAL_CLAW
	dbw 37, SWEET_KISS
	dbw 43, SLAM
	dbw 51, REST
	dbw 51, SLEEP_TALK
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TinkatonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CHARM
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 23, KNOCK_OFF
	dbw 29, METAL_CLAW
	dbw 37, SWEET_KISS
	dbw 38, HAMMER_SMASH
	dbw 45, SLAM
	dbw 55, DOUBLE_EDGE
	dbw 63, SUPERPOWER
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	evolve EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 4, SAND_ATTACK
	dbw 10, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 28, KNOCK_OFF
	dbw 31, SMELLINGSALT
	dbw 37, BELLY_DRUM
	dbw 40, ENDURE
	dbw 46, SEISMIC_TOSS
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ARM_THRUST
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, TACKLE
	dbw 4, SAND_ATTACK
	dbw 10, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 24, BULK_UP
	dbw 29, KNOCK_OFF
	dbw 33, SMELLINGSALT
	dbw 40, BELLY_DRUM
	dbw 44, ENDURE
	dbw 51, SEISMIC_TOSS
	dbw 55, REVERSAL
	dbw 62, HEAVY_SLAM
	db 0 ; no more level-up moves

DuscornEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, FOCUS_ENERGY
	dbw 9, TAIL_WHIP
	dbw 13, ENDURE
	dbw 17, SAND_ATTACK
	dbw 21, STOMP
	dbw 25, FAINT_ATTACK
	dbw 29, KNOCK_OFF
	dbw 35, TAKE_DOWN
	dbw 41, GIGA_DRAIN ;HORN_LEECH
	dbw 47, SKULL_BASH
	dbw 53, SYNTHESIS
	db 0 ; no more level-up moves

FletchlingEvosAttacks:
	evolve EVOLVE_LEVEL, 17, FLETCHINDA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, QUICK_ATTACK
	dbw 10, PECK
	dbw 16, AGILITY
	dbw 21, FLAME_WHEEL
	dbw 25, RAZOR_WIND
	dbw 34, FLAME_CHARGE
	dbw 40, AERIAL_ACE
	dbw 48, STEEL_WING
	db 0 ; no more level-up moves
	
FletchindaEvosAttacks:
	evolve EVOLVE_LEVEL, 35, FLETCHINDA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, QUICK_ATTACK
	dbw 10, PECK
	dbw 16, AGILITY
	dbw 17, EMBER
	dbw 25, FLAME_WHEEL
	dbw 29, RAZOR_WIND
	dbw 38, FLAME_CHARGE
	dbw 44, AERIAL_ACE
	dbw 52, STEEL_WING
	db 0 ; no more level-up moves

TalonflameEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, QUICK_ATTACK
	dbw 10, PECK
	dbw 16, AGILITY
	dbw 17, EMBER
	dbw 25, FLAME_WHEEL
	dbw 29, RAZOR_WIND
	dbw 35, FLAME_CHARGE
	dbw 42, HOWL
	dbw 48, AERIAL_ACE
	dbw 56, STEEL_WING
	dbw 63, OVERHEAT
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	evolve EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, ATTRACT
	dbw 3, TAIL_WHIP
	dbw 7, METRONOME
	dbw 13, SING
	dbw 15, DOUBLESLAP
	dbw 19, FAINT_ATTACK
	dbw 25, CHARM
	dbw 27, MAGICAL_LEAF
	dbw 31, COVET
	dbw 37, HEAL_BELL
	dbw 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ATTRACT
	dbw 1, DOUBLESLAP
	dbw 1, MAGICAL_LEAF
	dbw 1, SING
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, LEER
	dbw 7, GROWTH
	dbw 11, RAZOR_LEAF
	dbw 17, STOMP
	dbw 21, SWEET_SCENT
	dbw 27, WHIRLWIND
	dbw 31, MAGICAL_LEAF
	dbw 37, BODY_SLAM
	dbw 41, SOLARBEAM
	dbw 47, SYNTHESIS
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, INGRAIN
	dbw 1, SLAM
	dbw 5, SLEEP_POWDER
	dbw 11, ABSORB
	dbw 14, GROWTH
	dbw 20, POISONPOWDER
	dbw 23, VINE_WHIP
	dbw 29, BIND
	dbw 32, MEGA_DRAIN
	dbw 38, STUN_SPORE
	dbw 40, GRASS_KNOT
	dbw 46, TICKLE
	dbw 53, POWER_WHIP
	db 0 ; no more level-up moves

AronEvosAttacks:
	evolve EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 34, PROTECT
	dbw 39, METAL_SOUND
	dbw 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	evolve EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 45, METAL_SOUND
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 50, METAL_SOUND
	dbw 58, DOUBLE_EDGE
	dbw 63, HEAVY_SLAM
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	evolve EVOLVE_LEVEL, 37, MEDICHAM
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 4, MEDITATE
	dbw 9, CONFUSION
	dbw 12, DETECT
	dbw 18, HIDDEN_POWER
	dbw 22, MIND_READER
	dbw 28, CALM_MIND
	dbw 32, HI_JUMP_KICK
	dbw 38, PSYCH_UP
	dbw 42, REVERSAL
	dbw 48, RECOVER
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 1, CONFUSION
	dbw 1, DETECT
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, BULK_UP
	dbw 1, THUNDERPUNCH
	dbw 4, MEDITATE
	dbw 9, CONFUSION
	dbw 12, DETECT
	dbw 18, HIDDEN_POWER
	dbw 22, MIND_READER
	dbw 28, CALM_MIND
	dbw 32, HI_JUMP_KICK
	dbw 40, PSYCH_UP
	dbw 46, REVERSAL
	dbw 54, RECOVER
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	evolve EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, LEER
	dbw 9, HOWL
	dbw 12, BITE
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 28, ROAR
	dbw 33, BITE
	dbw 36, THUNDER
	dbw 41, CHARGE_BEAM
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	evolve EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, LEER
	dbw 1, BITE
	dbw 5, LEER
	dbw 10, BITE
	dbw 13, HOWL
	dbw 18, QUICK_ATTACK
	dbw 21, SPARK
	dbw 26, ODOR_SLEUTH
	dbw 32, ROAR
	dbw 40, BITE
	dbw 46, THUNDER
	dbw 54, CHARGE_BEAM
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, LEER
	dbw 1, BITE
	dbw 6, LEER
	dbw 11, BITE
	dbw 14, HOWL
	dbw 19, QUICK_ATTACK
	dbw 22, SPARK
	dbw 27, ODOR_SLEUTH
	dbw 33, ROAR
	dbw 41, CHARGE_BEAM
	dbw 47, THUNDER
	dbw 55, CRUNCH
	db 0 ; no more level-up moves

GekoponEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, FOCUS_ENERGY
	dbw 7, THUNDERSHOCK
	dbw 11, YAWN
	dbw 17, SLAM
	dbw 23, TAKE_DOWN
	dbw 29, ENERGY_BALL
	dbw 35, SPARK
	dbw 41, BODY_SLAM
	dbw 47, RAIN_DANCE
	dbw 53, REST
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	evolve EVOLVE_LEVEL, 39, EELEKTRIK
	dbw 1, CHARGE_BEAM
	dbw 1, VICEGRIP
	dbw 1, SCREECH
	dbw 1, THUNDER_WAVE
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0 ; no more evolutions
	dbw 1, CHARGE_BEAM
	dbw 1, VICEGRIP
	dbw 1, SPARK
	dbw 1, THUNDER_WAVE
	dbw 8, SCREECH
	dbw 15, ACID
	dbw 21, SPARK
	dbw 27, BITE
	dbw 34, ROLLOUT
	dbw 41, DEFENSE_CURL
	dbw 48, ZAP_CANNON
	dbw 59, THRASH
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, SPARK
	dbw 1, CRUSH_CLAW
	dbw 1, ACID
	dbw 41, THRASH
	db 0 ; no more level-up moves

CorsoreefEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, WATER_PULSE
	dbw 7, HARDEN
	dbw 13, BUBBLE
	dbw 18, RECOVER
	dbw 18, REFRESH
	dbw 24, BUBBLEBEAM
	dbw 29, INGRAIN
	dbw 35, ROCK_BLAST
	dbw 40, MIRROR_COAT
	dbw 46, ANCIENTPOWER
	dbw 52, SCALD
	dbw 57, WATER_SPOUT
	db 0 ; no more level-up moves

DundragEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 6, DEFENSE_CURL
	dbw 13, YAWN
	dbw 16, GLARE
	dbw 23, MUD_SHOT
	dbw 26, PURSUIT
	dbw 33, SCREECH
	dbw 36, TAKE_DOWN
	dbw 43, ENDEAVOR
	dbw 48, TWISTER
	dbw 52, DRAGON_PULSE
	dbw 61, SKY_ATTACK
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	evolve EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 31, TAKE_DOWN
	dbw 37, SWAGGER
	dbw 43, AGILITY
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 1, RAGE
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 33, SLASH
	dbw 38, TAUNT
	dbw 43, SWAGGER
	dbw 48, SKULL_BASH
	dbw 53, AGILITY
	db 0 ; no more level-up moves

BarboachEvosAttacks:
	evolve EVOLVE_LEVEL, 30, WHISCASH
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 6, SPLASH
	dbw 11, WATER_GUN
	dbw 16, MAGNITUDE
	dbw 21, AMNESIA
	dbw 26, REST
	dbw 26, SNORE
	dbw 31, EARTHQUAKE
	dbw 36, FUTURE_SIGHT
	dbw 41, FISSURE
	db 0 ; no more level-up moves

WhiscashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 1, SPLASH
	dbw 1, TICKLE
	dbw 6, SPLASH
	dbw 11, WATER_GUN
	dbw 16, MAGNITUDE
	dbw 21, AMNESIA
	dbw 26, REST
	dbw 26, SNORE
	dbw 30, MUDDY_WATER
	dbw 36, EARTHQUAKE
	dbw 46, FUTURE_SIGHT
	dbw 56, FISSURE
	db 0 ; no more level-up moves

BronzorEvosAttacks:
	evolve EVOLVE_LEVEL, 33, BRONZONG
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CONFUSION
	dbw 8, CONFUSE_RAY
	dbw 12, IRON_DEFENSE
	dbw 16, MIRROR_SHOT
	dbw 20, SAFEGUARD
	dbw 24, HYPNOSIS
	dbw 28, EXTRASENSORY
	dbw 32, ANCIENTPOWER
	dbw 36, FUTURE_SIGHT
	dbw 40, GYRO_BALL
	dbw 44, FAINT_ATTACK
	db 0 ; no more level-up moves

BronzongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, CONFUSION
	dbw 12, CONFUSE_RAY
	dbw 17, IRON_DEFENSE
	dbw 22, MIRROR_SHOT
	dbw 27, SAFEGUARD
	dbw 32, HYPNOSIS
	dbw 33, SUNNY_DAY
	dbw 33, RAIN_DANCE
	dbw 37, EXTRASENSORY
	dbw 42, ANCIENTPOWER
	dbw 47, FUTURE_SIGHT
	dbw 52, GYRO_BALL
	dbw 57, FAINT_ATTACK
	dbw 63, FLASH_CANNON
	db 0 ; no more level-up moves

SmoguanaEvosAttacks:
	evolve EVOLVE_LEVEL, 33, SMOGUANA
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, SLASH
	dbw 31, SMOKESCREEN
	dbw 35, BURNING_SAND
	dbw 41, FLAME_WHEEL
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmokomodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, MAGNITUDE
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, SLASH
	dbw 31, SMOKESCREEN
	dbw 33, ROCK_SLIDE
	dbw 37, BURNING_SAND
	dbw 45, ERUPTION
	dbw 55, FISSURE
	db 0 ; no more level-up moves

TorkoalEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 4, SMOG
	dbw 7, CURSE
	dbw 14, SMOKESCREEN
	dbw 17, FIRE_SPIN
	dbw 20, BODY_SLAM
	dbw 27, PROTECT
	dbw 30, FLAMETHROWER
	dbw 33, IRON_DEFENSE
	dbw 40, AMNESIA
	dbw 43, BURNING_SAND
	dbw 46, HEAT_WAVE
	db 0 ; no more level-up moves

VanilliteEvosAttacks:
	evolve EVOLVE_LEVEL, 35, VANILLISH
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 4, HARDEN
	dbw 9, POWDER_SNOW
	dbw 14, UPROAR
	dbw 19, ICY_WIND
	dbw 25, MILK_DRINK
	dbw 29, MIRROR_SHOT
	dbw 31, ENCORE
	dbw 36, SHEER_COLD
	dbw 42, REFLECT
	dbw 42, LIGHT_SCREEN
	dbw 53, BLIZZARD
	db 0 ; no more level-up moves

VanillishEvosAttacks:
	evolve EVOLVE_LEVEL, 47, VANILLUXE
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 4, HARDEN
	dbw 9, POWDER_SNOW
	dbw 14, UPROAR
	dbw 19, ICY_WIND
	dbw 25, MILK_DRINK
	dbw 29, MIRROR_SHOT
	dbw 31, ENCORE
	dbw 35, SHEER_COLD
	dbw 43, REFLECT
	dbw 43, LIGHT_SCREEN
	dbw 56, BLIZZARD
	db 0 ; no more level-up moves

VanilluxeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 4, HARDEN
	dbw 9, POWDER_SNOW
	dbw 14, UPROAR
	dbw 19, ICY_WIND
	dbw 25, MILK_DRINK
	dbw 29, MIRROR_SHOT
	dbw 31, ENCORE
	dbw 35, SHEER_COLD
	dbw 43, REFLECT
	dbw 43, LIGHT_SCREEN
	dbw 47, WEATHER_BALL
	dbw 56, BLIZZARD
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	evolve EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 9, SAND_TOMB
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	evolve EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 45, DRAGON_CLAW
	dbw 53, SANDSTORM
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

NohfaceEvosAttacks:
	evolve EVOLVE_HAPPINESS, TR_EVENITE, KITSUNOH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, MEAN_LOOK
	dbw 7, QUICK_ATTACK
	dbw 10, SWORDS_DANCE
	dbw 13, NIGHT_SHADE
	dbw 19, SLASH
	dbw 25, FAINT_ATTACK
	dbw 31, CRUSH_CLAW
	dbw 37, OMINOUS_WIND
	dbw 46, HEX
	dbw 55, NIGHT_SLASH
	db 0 ; no more level-up moves

KitsunohEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, MEAN_LOOK
	dbw 8, QUICK_ATTACK
	dbw 11, SWORDS_DANCE
	dbw 14, NIGHT_SHADE
	dbw 20, SLASH
	dbw 26, FAINT_ATTACK
	dbw 32, CRUSH_CLAW
	dbw 38, OMINOUS_WIND
	dbw 47, HEX
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

KrolucadaEvosAttacks:
	evolve EVOLVE_LEVEL, 42, KROLUCARD
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, BITE
	dbw 30, HAZE
	dbw 40, DEFENSE_CURL
	dbw 50, PSYBEAM
	dbw 60, SILVER_WIND
	db 0 ; no more level-up moves

KrolucardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 1, SCRATCH
	dbw 12, LEECH_LIFE
	dbw 22, BITE
	dbw 32, HAZE
	dbw 42, DRAIN_LIFE
	dbw 52, EXTRASENSORY
	dbw 62, MEAN_LOOK
	dbw 67, OMINOUS_WIND
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	evolve EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PECK
	dbw 8, ASTONISH
	dbw 11, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 38, MIRROR_MOVE
	dbw 41, REFRESH
	dbw 48, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, SING
	dbw 8, ASTONISH
	dbw 11, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 35, DRAGONBREATH
	dbw 40, DRAGON_DANCE
	dbw 45, REFRESH
	dbw 54, PERISH_SONG
	dbw 59, SKY_ATTACK
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	evolve EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, GUST
	dbw 30, FIRE_SPIN
	dbw 40, PSYBEAM
	dbw 50, PURSUIT
	dbw 59, SILVER_WIND
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, GUST
	dbw 30, FIRE_SPIN
	dbw 40, PSYBEAM
	dbw 50, PURSUIT
	dbw 60, SILVER_WIND
	dbw 70, FIERY_DANCE
	dbw 80, AIR_CUTTER
	;dbw 90, FIERY_DANCE
	db 0 ; no more level-up moves

ImpidimpEvosAttacks:
	evolve EVOLVE_LEVEL, 32, MORGREM
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 4, FAKE_OUT
	dbw 8, FAKE_TEARS
	dbw 15, LOW_KICK
	dbw 22, FAINT_ATTACK
	dbw 29, SWAGGER
	dbw 36, BEAT_UP
	dbw 44, REVENGE
	db 0 ; no more level-up moves

MorgremEvosAttacks:
	evolve EVOLVE_LEVEL, 42, GRIMMSNARL
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 5, FAKE_OUT
	dbw 9, FAKE_TEARS
	dbw 16, LOW_KICK
	dbw 23, FAINT_ATTACK
	dbw 30, SWAGGER
	dwb 35, FAINT_ATTACK
	dbw 40, BEAT_UP
	dbw 44, REVENGE
	dbw 49, TAUNT
	db 0 ; no more level-up moves

GrimmsnarlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 6, FAKE_OUT
	dbw 10, FAKE_TEARS
	dbw 17, LOW_KICK
	dbw 24, FAINT_ATTACK
	dbw 30, SWAGGER
	dwb 33, FAINT_ATTACK
	dbw 37, BEAT_UP
	dbw 42, REVENGE
	dbw 52, HAMMER_ARM
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, CONFUSE_RAY
	dbw 13, ASTONISH
	dbw 19, HYPNOSIS
	dbw 25, STOMP
	dbw 31, SAND_ATTACK
	dbw 37, TAKE_DOWN
	dbw 43, NIGHTMARE
	dbw 49, CALM_MIND
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	evolve EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, SANDSTORM
	dbw 37, COSMIC_POWER
	dbw 45, EXPLOSION
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HARDEN
	dbw 1, RAPID_SPIN
	dbw 1, TELEPORT
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, SANDSTORM
	dbw 36, HYPER_BEAM
	dbw 42, COSMIC_POWER
	dbw 55, EXPLOSION
	db 0 ; no more level-up moves

PurgislugEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ACID
	dbw 1, AMNESIA
	dbw 8, CONSTRICT
	dbw 15, CONFUSION
	dbw 22, SLUDGE
	dbw 29, CONFUSE_RAY
	dbw 36, MAGIC_COAT
	dbw 48, ANCIENTPOWER
	dbw 60, SPIT_UP
	dbw 60, STOCKPILE
	dbw 60, SWALLOW
	dbw 67, EXTRASENSORY
	db 0 ; no more level-up moves

LarvicidEvosAttacks:
	evolve EVOLVE_LEVEL, 40, PENDRAGON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, IRON_DEFENSE
	dbw 13, ACID
	dbw 19, METAL_CLAW
	dbw 25, SLASH
	dbw 31, PROTECT
	dbw 37, SPIKE_CANNON
	dbw 43, POISON_FANG
	dbw 49, SLAM
	dbw 55, IRON_TAIL
	db 0 ; no more level-up moves

PendragonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, IRON_DEFENSE
	dbw 1, ACID
	dbw 1, METAL_CLAW
	dbw 7, IRON_DEFENSE
	dbw 13, ACID
	dbw 19, METAL_CLAW
	dbw 25, SLASH
	dbw 31, PROTECT
	dbw 37, SPIKE_CANNON
	dbw 40, STEAMROLLER
	dbw 46, POISON_TAIL
	dbw 55, SLAM
	dbw 64, IRON_TAIL
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	evolve EVOLVE_HAPPINESS, TR_MORNDAY, MILOTIC
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 5, WRAP
	dbw 10, SPLASH
	dbw 15, REFRESH
	dbw 20, WATER_PULSE
	dbw 25, DRAGONBREATH
	dbw 30, RECOVER
	dbw 35, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	dbw 45, ATTRACT
	dbw 50, SAFEGUARD
	dbw 55, DRAGON_PULSE
	db 0 ; no more level-up moves

CastformEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, EMBER
	dbw 10, POWDER_SNOW
	dbw 10, WATER_GUN
	dbw 20, HAIL
	dbw 20, RAIN_DANCE
	dbw 20, SUNNY_DAY
	dbw 30, WEATHER_BALL
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	evolve EVOLVE_LEVEL, 41, LAMPENT
	db 0 ; no more evolutions
	dbw 1, SPITE
	dbw 8, SMOG
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, EMBER
	dbw 32, WILL_O_WISP
	dbw 37, FIRE_SPIN
	dbw 44, SHADOW_BALL
	dbw 49, GRUDGE
	dbw 56, OVERHEAT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, CHANDELURE
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, WILL_O_WISP
	dbw 1, NIGHT_SHADE
	dbw 1, SMOG
	dbw 8, SMOG
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, EMBER
	dbw 32, WILL_O_WISP
	dbw 39, FIRE_SPIN
	dbw 48, SHADOW_BALL
	dbw 55, GRUDGE
	dbw 64, OVERHEAT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_SPIN
	dbw 1, WILL_O_WISP
	dbw 1, SHADOW_BALL
	dbw 1, CONFUSE_RAY
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	evolve EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, NIGHT_SHADE
	dbw 1, LEER
	dbw 5, DISABLE
	dbw 12, MEAN_LOOK
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 38, WILL_O_WISP
	dbw 45, PAIN_SPLIT
	dbw 49, FUTURE_SIGHT
	dbw 54, HEX
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SHADE
	dbw 1, BIND
	dbw 1, DISABLE
	dbw 1, LEER
	dbw 5, DISABLE
	dbw 12, MEAN_LOOK
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 37, SHADOW_PUNCH
	dbw 41, WILL_O_WISP
	dbw 51, PAIN_SPLIT
	dbw 58, FUTURE_SIGHT
	dbw 65, HEX
	db 0 ; no more level-up moves

DecibelleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, TAKE_DOWN
	dbw 22, UPROAR
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, MIRROR_SHOT
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	evolve EVOLVE_HAPPINESS, TR_MORNDAY, DECIBELLE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, TAKE_DOWN
	dbw 22, UPROAR
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, MIRROR_SHOT
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 9, TAUNT
	dbw 13, QUICK_ATTACK
	dbw 17, RAZOR_WIND
	dbw 21, BITE
	dbw 26, SWORDS_DANCE
	dbw 31, DOUBLE_TEAM
	dbw 36, SLASH
	dbw 41, FUTURE_SIGHT
	dbw 46, PERISH_SONG
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MIRROR_SHOT
	dbw 1, FLASH_CANNON
	dbw 1, SUPERSONIC
	dbw 1, ZAP_CANNON
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	evolve EVOLVE_LEVEL, 40, ABOMASNOW
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 7, MIST
	dbw 10, RAZOR_LEAF
	dbw 16, TAKE_DOWN
	dbw 19, GRASSWHISTLE
	dbw 25, INGRAIN
	dbw 28, AVALANCHE
	dbw 34, HAIL
	dbw 37, SWAGGER
	dbw 43, BLIZZARD
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, BITE
	dbw 1, DOUBLE_TEAM
	dbw 1, LEER
	dbw 7, MIST
	dbw 10, RAZOR_LEAF
	dbw 16, TAKE_DOWN
	dbw 19, GRASSWHISTLE
	dbw 25, INGRAIN
	dbw 28, AVALANCHE
	dbw 34, HAIL
	dbw 40, WOOD_HAMMER
	dbw 42, SWAGGER
	dbw 53, BLIZZARD
	dbw 61, SHEER_COLD
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	evolve EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 8, SCREECH
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, SPITE
	dbw 32, WILL_O_WISP
	dbw 37, FAINT_ATTACK
	dbw 44, SHADOW_BALL
	dbw 49, SNATCH
	dbw 56, GRUDGE
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 1, CURSE
	dbw 1, NIGHT_SHADE
	dbw 1, SCREECH
	dbw 8, SCREECH
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, SPITE
	dbw 32, WILL_O_WISP
	dbw 39, FAINT_ATTACK
	dbw 48, SHADOW_BALL
	dbw 55, SNATCH
	dbw 64, GRUDGE
	db 0 ; no more level-up moves

LileepEvosAttacks:
	evolve EVOLVE_LEVEL, 40, CRADILY
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 8, CONSTRICT
	dbw 15, ACID
	dbw 22, INGRAIN
	dbw 29, CONFUSE_RAY
	dbw 36, AMNESIA
	dbw 43, ANCIENTPOWER
	dbw 50, SPIT_UP
	dbw 50, STOCKPILE
	dbw 50, SWALLOW
	db 0 ; no more level-up moves

CradilyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ACID
	dbw 1, ASTONISH
	dbw 1, CONSTRICT
	dbw 1, INGRAIN
	dbw 8, CONSTRICT
	dbw 15, ACID
	dbw 22, INGRAIN
	dbw 29, CONFUSE_RAY
	dbw 36, AMNESIA
	dbw 40, ENERGY_BALL
	dbw 48, ANCIENTPOWER
	dbw 60, SPIT_UP
	dbw 60, STOCKPILE
	dbw 60, SWALLOW
	db 0 ; no more level-up moves

AnorithEvosAttacks:
	evolve EVOLVE_LEVEL, 40, ARMALDO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, HARDEN
	dbw 13, MUD_SLAP
	dbw 19, WATER_GUN
	dbw 25, METAL_CLAW
	dbw 31, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 43, FURY_CUTTER
	dbw 49, SLASH
	dbw 55, ROCK_BLAST
	db 0 ; no more level-up moves

ArmaldoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, WATER_GUN
	dbw 7, HARDEN
	dbw 13, MUD_SLAP
	dbw 19, WATER_GUN
	dbw 25, METAL_CLAW
	dbw 31, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 46, FURY_CUTTER
	dbw 55, SLASH
	dbw 64, ROCK_BLAST
	db 0 ; no more level-up moves

AxewEvosAttacks:
	evolve EVOLVE_LEVEL, 38, FRAXURE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 10, SCARY_FACE
	dbw 16, DRAGON_RAGE
	dbw 20, FALSE_SWIPE
	dbw 24, TAUNT
	dbw 30, SLASH
	dbw 36, DIG
	dbw 41, SWORDS_DANCE
	dbw 48, X_SCISSOR
	db 0 ; no more level-up moves
	
FraxureEvosAttacks:
	evolve EVOLVE_LEVEL, 48, HAXORUS
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 10, SCARY_FACE
	dbw 16, DRAGON_RAGE
	dbw 20, FALSE_SWIPE
	dbw 24, TAUNT
	dbw 30, SLASH
	dbw 36, DIG
	dbw 41, SWORDS_DANCE
	dbw 49, X_SCISSOR
	dbw 56, OUTRAGE
	dbw 61, GUILLOTINE
	db 0 ; no more level-up moves

HaxorusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 10, SCARY_FACE
	dbw 16, DRAGON_RAGE
	dbw 20, FALSE_SWIPE
	dbw 24, TAUNT
	dbw 30, SLASH
	dbw 36, DIG
	dbw 41, SWORDS_DANCE
	dbw 48, X_SCISSOR
	dbw 51, DRAGON_CLAW
	dbw 56, OUTRAGE
	dbw 61, GUILLOTINE
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, DOUBLE_EDGE 
	dbw 43, ANCIENTPOWER
	dbw 50, REST
	dbw 57, HEAD_SMASH
	dbw 64, HYDRO_PUMP
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 12, WATER_GUN
	dbw 16, AGILITY
	dbw 24, SCALD
	dbw 28, ATTRACT
	dbw 36, SWEET_KISS
	dbw 40, TAKE_DOWN
	dbw 48, SAFEGUARD
	dbw 56, FLAIL
	db 0 ; no more level-up moves

RaelicEvosAttacks:
	evolve EVOLVE_LEVEL, 50, ROMUSHU
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 33, DRAGONBREATH
	dbw 37, MAGIC_COAT
	dbw 41, WOOD_HAMMER
	dbw 49, DRAGON_PULSE
	db 0 ; no more level-up moves

RomushuEvosAttacks:
	evolve EVOLVE_LEVEL, 64, FUSANG
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HEADBUTT
	dbw 1, DEFENSE_CURL
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 30, STUN_SPORE
	dbw 38, DRAGONBREATH
	dbw 47, MAGIC_COAT
	dbw 56, WOOD_HAMMER
	dbw 63, DRAGON_PULSE
	db 0 ; no more level-up moves

FusangEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WOOD_HAMMER
	dbw 1, HEADBUTT
	dbw 1, DEFENSE_CURL
	dbw 1, DRAGONBREATH
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 30, STUN_SPORE
	dbw 38, DRAGONBREATH
	dbw 47, MAGIC_COAT
	dbw 50, ANCIENTPOWER
	dbw 61, EXTRASENSORY
	dbw 79, DRAGON_PULSE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	evolve EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	evolve EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 26, SCARY_FACE
	dbw 32, GYRO_BALL
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 50, METEOR_MASH
	dbw 56, AGILITY
	dbw 62, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	dbw 1, CONFUSION
	dbw 1, METAL_CLAW
	dbw 1, SCARY_FACE
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 26, SCARY_FACE
	dbw 32, GYRO_BALL
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 45, METEOR_MASH
	dbw 55, HAMMER_ARM
	dbw 66, AGILITY
	dbw 77, HYPER_BEAM
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
	dbw 10, AIR_CUTTER
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, DIVE
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, CHARM
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, MEMENTO
	dbw 10, AIR_CUTTER
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, DRAGON_DANCE
	db 0 ; no more level-up moves

KyogreEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_PULSE
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, BODY_SLAM
	dbw 30, CALM_MIND
	dbw 35, ICE_BEAM
	dbw 45, HYDRO_PUMP
	dbw 50, REST
	dbw 60, SHEER_COLD
	dbw 65, DOUBLE_EDGE
	dbw 75, WATER_SPOUT
	db 0 ; no more level-up moves

GroudonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SHOT
	dbw 1, HAMMER_ARM
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, SLASH
	dbw 30, BULK_UP
	dbw 35, EARTHQUAKE
	dbw 45, FIRE_BLAST
	dbw 50, REST
	dbw 60, FISSURE
	dbw 65, SOLARBEAM
	dbw 75, ERUPTION
	db 0 ; no more level-up moves

RayquazaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TWISTER
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, DRAGON_CLAW
	dbw 30, DRAGON_DANCE
	dbw 35, CRUNCH
	dbw 45, FLY
	dbw 50, REST
	dbw 60, EXTREMESPEED
	dbw 65, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

JirachiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, WISH
	dbw 5, REST
	dbw 10, SWIFT
	dbw 15, MIRROR_SHOT
	dbw 20, PSYCHIC_M
	dbw 25, REFRESH
	dbw 30, REST
	dbw 35, DOUBLE_EDGE
	dbw 40, FUTURE_SIGHT
	dbw 45, COSMIC_POWER
	dbw 50, DOOM_DESIRE
	db 0 ; no more level-up moves

DeoxysEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, NIGHT_SHADE
	dbw 10, TELEPORT
	dbw 15, KNOCK_OFF
	dbw 20, PURSUIT
	dbw 25, PSYCHIC_M
	dbw 30, SNATCH
	dbw 35, COSMIC_POWER
	dbw 40, RECOVER
	dbw 45, PSYCHO_BOOST
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

ENDSECTION
