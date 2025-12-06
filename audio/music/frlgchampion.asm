;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.1 (08-May-2023)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_FRLGChampion:
	musicheader 4, 1, Music_FRLGChampion_Ch1
	musicheader 1, 2, Music_FRLGChampion_Ch2
	musicheader 1, 3, Music_FRLGChampion_Ch3
	musicheader 1, 4, Music_FRLGChampion_Ch4

Music_FRLGChampion_Ch1:
	volume $66
	dutycycle $0
	notetype 6, $d7
	tempo 112
;Bar 1
	octave 3
	note G#, 2
	note G_, 2
	note G#, 2
	note A_, 2
	note G#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
;Bar 2
	note C_, 2
	note C#, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note D#, 2
	note D_, 2
	note D#, 2
	octave 3
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F_, 2
;Bar 3
	dutycycle $3
	intensity $d7
	octave 3
	note F#, 1
	note __, 1
	note F#, 14
	note G_, 1
	note __, 1
	note G_, 14
;Bar 4
	note A_, 1
	note __, 1
	note A_, 14
	note G_, 1
	note __, 1
	note G_, 14
;Bar 5
	callchannel Music_FRLGChampion_Ch1_Type1
	note C#, 8
	callchannel Music_FRLGChampion_Ch1_Type1
	note D_, 8
;Bar 6
	callchannel Music_FRLGChampion_Ch1_Type1
	note E_, 8
	callchannel Music_FRLGChampion_Ch1_Type1
	note D_, 4
	note C_, 4
	intensity $e7
;Bar 7
	callchannel Music_FRLGChampion_Ch1_Bar7
;Bar 8
	note G_, 1
	note __, 1
	note G_, 5
	note __, 1
	note G_, 8
;Bar 9
	callchannel Music_FRLGChampion_Ch1_Bar7
;Bar 10
	note A#, 1
	note __, 1
	note A#, 5
	note __, 1
	intensity $8a
	note F_, 8
;Bar 11
	intensity $d7
	dutycycle $3
Music_FRLGChampion_Ch1_loop:
	octave 3
	note F#, 8
	octave 4
	note C#, 8
	octave 3
	note F_, 8
	octave 4
	note C_, 8
;Bar 12
	octave 3
	note E_, 8
	note B_, 8
	note C#, 8
	note G#, 8
;Bar 13
	note G_, 8
	note G#, 6
	octave 4
	note F#, 1
	note G_, 1
	note G#, 2
	note G#, 2
	note G_, 2
	note G#, 1
	note __, 1
	note B_, 1
	note __, 1
	note G#, 2
	note G#, 2
	note G#, 2
;Bar 14
	octave 3
	note C#, 12
	note E_, 12
	note G#, 8
;Bar 15
	dutycycle $0
	intensity $c2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C#, 2
	note C_, 4
	callchannel Music_FRLGChampion_Ch4_Type10
	note C_, 2
	note C_, 2
;Bar 16
	octave 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	note B_, 2
	intensity $d7
	note G#, 8
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
;Bar 17
	note G_, 8
	note G#, 4
	note __, 4
	note A_, 1
	note G#, 2
	note __, 1
	note G#, 3
	note __, 1
	note G#, 2
	note G#, 1
	note __, 1
	note G_, 2
	note G#, 2
;Bar 18
	dutycycle $1
	octave 4
	notetype 12, $d8
	note C_, 4
	intensity $7c
	note C#, 12
	notetype 6, $d7
;Bar 19
	octave 3
	note F#, 5
	note __, 1
	note F#, 5
	note __, 1
	note F#, 3
	note __, 1
	note F#, 2
	note G#, 2
	note F#, 2
	octave 4
	note C#, 2
Music_FRLGChampion_Bar19:
	octave 3
	note G#, 2
	note F#, 2
	note G#, 2
	octave 4
	note C#, 2
	loopchannel 5, Music_FRLGChampion_Bar19
;Bar 21
	octave 2
	note F#, 2
	note F#, 2
	note __, 4
	note E_, 8
	note F#, 2
	note F#, 2
	note __, 4
	note G_, 8
;Bar 22
	note F#, 2
	note F#, 2
	note __, 4
	note E_, 8
	note F#, 2
	note F#, 2
	note C#, 12
;Bar 23
	note F#, 2
	note F#, 2
	note __, 4
	note E_, 8
	note F#, 2
	note F#, 2
	note __, 4
	note G_, 8
;Bar 24
	note F#, 2
	note F#, 2
	note __, 4
	note E_, 8
	note F#, 2
	note F#, 2
	note C#, 12
;Bar 25
	octave 3
Music_FRLGChampion_Ch1_Bar25:
	note F#, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	loopchannel 3, Music_FRLGChampion_Ch1_Bar25
	note F#, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 6
;Bar 26
	note F#, 2
	note E_, 6
	note F#, 2
	note E_, 6
	note F#, 2
	note E_, 6
	note F#, 2
	note E_, 2
;Bar 27
Music_FRLGChampion_Ch1_Bar27:
	octave 3
	note G_, 4
	octave 4
	note D_, 2
	note C#, 2
	loopchannel 3, Music_FRLGChampion_Ch1_Bar27
	octave 3
	note G_, 4
	octave 4
	note D_, 2
	note C#, 6
;Bar 28
	octave 3
	note G_, 2
	note F#, 6
	note G_, 2
	note F#, 6
	note G_, 2
	note F#, 6
	note G_, 2
	note F#, 2
;Bar 29
Music_FRLGChampion_Ch1_Bar29:
	octave 3
	note G#, 4
	octave 4
	note D#, 2
	note D_, 2
	loopchannel 3, Music_FRLGChampion_Ch1_Bar29
	octave 3
	note G#, 4
	octave 4
	note D#, 2
	note D_, 6
;Bar 30
	octave 3
Music_FRLGChampion_Ch1_Bar30:
	note G#, 2
	note G_, 6
	loopchannel 7, Music_FRLGChampion_Ch1_Bar30
;Bar 31
	octave 4
	note D_, 4
;Bar 32
	notetype 12, $d8
	note D#, 16
;Bar 33
	octave 3
	note C_, 12
	dutycycle $2
	octave 4
	note C#, 4
	notetype 6, $b2
;Bar 34
	note E_, 2
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	note D#, 2
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	note E_, 2
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 3
	note A_, 2
	note E_, 2
;Bar 35
	note C#, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 2
	note D#, 2
	note E_, 2
	note A_, 2
	octave 5
	note C#, 2
	note D#, 2
	note E_, 2
	note D#, 2
	note C#, 2
	octave 4
	note A_, 2
	octave 5
	note C#, 2
	octave 4
	note A_, 2
	note E_, 2
;Bar 36
	note F#, 2
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	note F_, 2
	note F#, 2
	note B_, 2
	octave 5
	note D#, 2
	note F#, 2
	note D#, 2
	octave 4
	note B_, 2
	note F#, 2
	note F_, 2
	note F#, 2
	note D#, 2
	octave 3
	note B_, 2
;Bar 37
	note F#, 2
	note A#, 2
	note B_, 2
	octave 4
	note D#, 2
	note F#, 2
	note A#, 2
	note B_, 2
	octave 5
	note D#, 2
	note F_, 2
	note F#, 2
	note D#, 2
	octave 4
	note B_, 2
	note F#, 2
	note B_, 2
	note A_, 2
	note G#, 2
;Bar 38
	note G_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note B_, 2
	octave 5
	note C_, 2
	note D#, 2
	note E_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note C_, 2
;Bar 39
	note E_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C_, 2
	note D#, 2
	note E_, 2
	note C_, 2
	octave 4
	note G_, 2
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note G_, 2
;Bar 40
	note F#, 2
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	note F_, 2
	note F#, 2
	note A_, 2
	note A#, 2
	note B_, 2
	octave 5
	note D#, 2
	note F_, 2
	note F#, 2
	note D#, 2
	octave 4
	note B_, 2
	note A#, 2
	note F#, 2
;Bar 41
	note A_, 2
	note A#, 2
	note B_, 2
	note F#, 2
	note F_, 2
	note F#, 2
	note G#, 2
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note D#, 2
	octave 3
	note F#, 2
;Bar 42
	intensity $d8
	dutycycle $1
	note A_, 4
	note G#, 4
	note F#, 4
	note G#, 4
	note A_, 4
	note G#, 4
	note B_, 4
	note A_, 4
;Bar 43
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note B_, 2
	octave 4
	note E_, 4
	note C#, 4
;Bar 44
	octave 3
	note C#, 4
	octave 2
	note C#, 2
	note __, 2
	note C#, 2
	note __, 2
	note C#, 1
	note __, 3
	octave 3
	note C_, 4
	octave 2
	note C_, 2
	note __, 2
	note C_, 2
	note __, 2
	note C_, 1
	note __, 3
;Bar 45
	note B_, 4
	octave 1
	note B_, 2
	note __, 2
	note B_, 2
	note __, 2
	note B_, 1
	note __, 3
	octave 2
	note G#, 4
	octave 1
	note G#, 3
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 4
;Bar 46
	octave 3
	note G_, 4
	octave 2
	note G#, 4
	octave 3
	note G#, 16
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 2
	note G#, 2
;Bar 47
	intensity $8c
	note B_, 16
	note G#, 16
	intensity $d8
;Bar 48
	octave 2
	note C#, 4
	note __, 2
	note C#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	octave 1
	note G#, 3
	note __, 1
	note G#, 1
	note __, 3
	octave 2
	note C#, 4
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
;Bar 49
	octave 1
	note G#, 2
	note __, 4
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note F#, 2
	note G#, 1
	note __, 1
	note B_, 1
	note __, 1
	note G#, 3
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
;Bar 50
	note G#, 2
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	octave 2
	note G#, 4
	note __, 4
	octave 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note D#, 8
;Bar 51
	note G#, 4
	octave 1
	note G#, 1
	note __, 3
	note G#, 3
	note __, 1
	note G#, 1
	note __, 3
	note G#, 1
	note __, 3
	note G#, 4
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 4
;Bar 52
	intensity $c8
Music_FRLGChampion_Ch1_Bar52_53:
	octave 2
	note F#, 2
	octave 1
	note F#, 14
	loopchannel 4, Music_FRLGChampion_Ch1_Bar52_53
	loopchannel 0, Music_FRLGChampion_Ch1_loop

Music_FRLGChampion_Ch1_Type1:
	notetype 3, $d8
	octave 2
	note F#, 4
	note __, 1
	note F#, 2
	note __, 1
	loopchannel 2, Music_FRLGChampion_Ch1_Type1
	notetype 6, $d8
	octave 3
	endchannel

Music_FRLGChampion_Ch1_Bar7:
	note F#, 1;
	note __, 1
	note F#, 5
	note __, 1
	note F#, 8
	note G_, 1
	note __, 1
	note G_, 5
	note __, 1
	note G_, 8
;Bar 8
	note A_, 1
	note __, 1
	note A_, 5
	note __, 1
	note A_, 8
	endchannel

; ============================================================================================================

Music_FRLGChampion_Ch2:
	dutycycle $1
	notetype 6, $d7
;Bar 1
	octave 5
	note D_, 2
	octave 4
	note A#, 2
	octave 5
	note C#, 2
	octave 4
	note G#, 2
	note B_, 2
	note F#, 2
	note A_, 2
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	note D#, 2
	note F#, 2
	note D_, 2
	note F_, 2
	note C#, 2
	note E_, 2
	octave 5
	note D_, 2
;Bar 2
	octave 4
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note C#, 2
	octave 3
	note G#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note B_, 2
	octave 5
	note D_, 2
	octave 3
	note A#, 2
	note F_, 2
	note A_, 2
	note E_, 2
	note G_, 2
	note D#, 2
	note F#, 2
	octave 5
	note D_, 2
;Bar 3
	intensity $a7
	dutycycle $1
	octave 4
	note F#, 1
	note __, 1
	note F#, 14
	note F#, 1
	note __, 1
	note F#, 14
;Bar 4
	note F#, 1
	note __, 1
	note F#, 14
	note F#, 1
	note __, 1
	note F#, 10
	octave 3
	dutycycle $0
	intensity $e7
	vibrato $04, $22
	note C#, 1
	note D_, 1
	note E_, 1
	note F_, 1
;Bar 5
	note F#, 1
	note __, 1
	note F#, 6
	octave 4
	note F#, 6
	note __, 2
	octave 3
	note F#, 1
	note __, 1
	note F#, 6
	octave 4
	note F#, 6
	note __, 2
;Bar 6
	octave 3
	note F#, 1
	note __, 1
	note F#, 6
	octave 4
	note F#, 6
	note __, 2
	octave 3
	note F#, 1
	note __, 1
	note F#, 6
	note F_, 6
	note __, 2
;Bar 7
	octave 4
	dutycycle $2
	intensity $b2
	vibrato $00, $00
Music_FRLGChampion_Ch2_Bar7_10:
	note F#, 2
	note F#, 2
	note A_, 2
	octave 5
	note D_, 2
	note F#, 2
	note D_, 2
	octave 4
	note A_, 2
	note G_, 2
	loopchannel 7, Music_FRLGChampion_Ch2_Bar7_10
;Bar 10
	dutycycle $1
	vibrato $04, $14
	octave 3
	note F#, 1
	note __, 1
	note F#, 6
	octave 2
	note A#, 2
	note A#, 1
	note __, 1
	note A#, 2
	note A#, 1
	note __, 1
;Bar 11
Music_FRLGChampion_Ch2_loop:
	notetype 12, $d8
	octave 4
	note F#, 8
	note F_, 8
;Bar 12
	note E_, 8
	note C#, 8
;Bar 13
	note C_, 4
	note C#, 12
	notetype 6, $d8
;Bar 14
	dutycycle $0
	vibrato $04, $22
	note G_, 4
	note G#, 6
	note B_, 2
	octave 5
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note D_, 2
	note C#, 4
	octave 4
	note B_, 2
	octave 5
	note C#, 2
	note C#, 2
	octave 4
	note B_, 2
	octave 5
	note C#, 2
;Bar 15
	octave 3
	note F#, 11
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F_, 12
	note __, 2
	note F_, 1
	note __, 1
;Bar 16
	note E_, 8
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 2
	note C#, 11
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
;Bar 17
	note C_, 8
	note C#, 8
	note D_, 1
	note C#, 2
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C_, 2
	note C#, 2
;Bar 18
	dutycycle $3
	vibrato $00, $14
	notetype 12, $d8
	octave 4
	note F_, 4
	intensity $7c
	note F#, 12
	notetype 6, $d7
;Bar 19
	note C#, 12
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 2
;Bar 20
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 2
;Bar 21
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note E_, 8
	octave 4
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note G_, 8
;Bar 22
	octave 4
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note E_, 8
	octave 4
	note F#, 1
	note __, 1
	note F#, 2
	octave 3
	note C#, 8
	note E_, 4
;Bar 23
	note F#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note F#, 2
	note G#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note F_, 2
;Bar 24
	note F#, 2
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note F#, 1
	note __, 1
	note C#, 8
	note E_, 4
;Bar 25
	dutycycle $0
	notetype 12, $f7
	octave 4
	note F#, 4
	note G_, 2
	note G#, 12
	notetype 6, $e7
	dutycycle $1
;Bar 26
	octave 3
	note C#, 1
	note __, 1
	note C#, 2
	note C#, 7
	note __, 1
	note C#, 3
	note __, 1
	note C#, 7
	note __, 1
	note C#, 1
	note __, 1
	note C#, 2
;Bar 27
	dutycycle $0
	vibrato $00, $21
	notetype 12, $f7
	octave 4
	note G_, 4
	note G#, 2
	note A_, 12
	notetype 6, $e7
	dutycycle $1
	vibrato $00, $00
;Bar 28
	octave 3
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 7
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 7
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
;Bar 29
	dutycycle $0
	vibrato $00, $31
	notetype 12, $f7
	octave 4
	note G#, 4
	note A_, 2
	note A#, 12
	notetype 6, $d8
	dutycycle $1
	vibrato $00, $00
;Bar 30
	octave 3
	callchannel Music_FRLGChampion_Ch2_Type1
	callchannel Music_FRLGChampion_Ch2_Type1
	note D#, 7
;Bar 31
	note __, 1
	callchannel Music_FRLGChampion_Ch2_Type1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 8
	octave 4
	note F#, 2
	note G_, 2
;Bar 32
	notetype 12, $d8
	note G#, 16
;Bar 33
	octave 3
	intensity $8a
	note G#, 16
	intensity $d8
;Bar 34
	octave 4
	note D#, 4
	note E_, 16
	note E_, 12
;Bar 36
	intensity $8a
	note F#, 16
;Bar 37
	octave 3
	note B_, 16
	notetype 6, $8a
;Bar 38
	octave 4
	note G_, 16
	intensity $d8
	note G_, 7
	intensity $d7
	note G#, 1
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
;Bar 39
	notetype 12, $d8
	octave 5
	note D_, 8
	note C_, 8
;Bar 40
	octave 4
	note B_, 16
	note B_, 16
	notetype 6, $d8
;Bar 42
	note E_, 4
	note D#, 4
	note C#, 4
	note D#, 4
	note E_, 4
	note D#, 4
	note G#, 4
	note E_, 4
;Bar 43
	dutycycle $0
	note E_, 4
	note D#, 2
	note E_, 1
	note D#, 1
	note C#, 4
	note D#, 4
	note E_, 4
	note D#, 4
	note G#, 4
	note E_, 4
;Bar 44
	vibrato $00, $22
	intensity $e8
	octave 3
	note F#, 4
	octave 2
	note F#, 2
	note __, 2
	note F#, 2
	note __, 2
	note F#, 1
	note __, 3
	octave 3
	note F_, 4
	octave 2
	note F_, 2
	note __, 2
	note F_, 2
	note __, 2
	note F_, 1
	note __, 3
;Bar 45
	octave 3
	note E_, 4
	octave 2
	note E_, 2
	note __, 2
	note E_, 2
	note __, 2
	note E_, 1
	note __, 3
	octave 3
	note C#, 4
	octave 2
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 4
;Bar 46
	octave 4
	note C_, 4
	octave 3
	note C#, 4
	octave 4
	note C#, 16
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C_, 2
	note C#, 2
;Bar 47
	vibrato $00, $14
	notetype 12, $8c
	dutycycle $3
	note E_, 8
	note D_, 8
	vibrato $00, $22
	intensity $e8
;Bar 48
	dutycycle $0
	octave 3
	note F#, 8
	note F_, 8
;Bar 49
	note E_, 8
	note C#, 8
;Bar 50
	note C_, 4
	note C#, 12
;Bar 51
	note E_, 8
	note G_, 8
;Bar 52
	vibrato $00, $14
	dutycycle $3
	note F#, 16
;Bar 53
	octave 4
	note C_, 4
	intensity $8b
	note C#, 12
	loopchannel 0, Music_FRLGChampion_Ch2_loop

Music_FRLGChampion_Ch2_Type1:
	note D#, 1;
	note __, 1
	note D#, 1
	note __, 1
	note D#, 7
	note __, 1
	endchannel

; ============================================================================================================

Music_FRLGChampion_Ch3:
	notetype 6, $14
;Bar 1
	octave 3
	note F#, 8
	octave 4
	note F#, 8
	octave 3
	note G_, 8
	octave 4
	note F_, 8
;Bar 2
	octave 3
	note A_, 8
	octave 4
	note E_, 8
	octave 3
	note A#, 8
	octave 4
	note C#, 8
;Bar 3
	octave 2
	note F#, 1
	note __, 1
	note F#, 12
	note __, 2
	note F#, 1
	note __, 1
	note F#, 14
;Bar 4
	note F#, 1
	note __, 1
	note F#, 12
	note __, 2
	note F#, 1
	note __, 1
	note F#, 12
	note __, 2
;Bar 5
	note F#, 2
	note __, 4
	note F#, 2
	octave 3
	note F_, 2
	note F#, 2
	note C_, 2
	note C#, 2
	octave 2
	note G#, 2
	note A_, 2
	note __, 2
	note F#, 1
	note __, 1
	note D#, 4
	note E_, 4
;Bar 6
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 3
	note D#, 2
	note E_, 2
	octave 2
	note A_, 4
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	note A_, 2
	note G#, 2
	note F#, 2
	note C#, 2
;Bar 7
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 4
	note C_, 2
	note C#, 2
	octave 3
	note F_, 2
	note F#, 2
	note C_, 2
	note C#, 2
	octave 2
	note D_, 2
	note __, 2
	note D#, 4
	note E_, 4
;Bar 8
	note E_, 2
	octave 3
	note E_, 2
	note __, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 4
	note D#, 2
	note E_, 2
	note F_, 2
	note F#, 2
	note C_, 2
	note C#, 2
	octave 2
	note G#, 2
	note A_, 2
	note F_, 2
	note F#, 2
;Bar 9
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 3
	note F#, 4
	note C#, 2
	octave 2
	note A_, 2
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 3
	note G_, 4
	note D_, 2
	octave 2
	note B_, 2
;Bar 10
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 3
	note A_, 4
	note F#, 2
	note C#, 2
	octave 2
	note F#, 1
	note __, 1
	note F#, 2
	note __, 2
	note F#, 2
	octave 3
	note A#, 4
	note F#, 2
	note C#, 2
;Bar 11
Music_FRLGChampion_Ch3_loop:
	note F#, 2
	octave 2
	note F#, 6
	note __, 8
	octave 3
	note F_, 2
	octave 2
	note F_, 6
	note __, 8
;Bar 12
	octave 3
	note E_, 2
	octave 2
	note E_, 6
	note __, 8
	octave 3
	note G#, 2
	octave 2
	note G#, 2
	octave 3
	note C#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	note G#, 2
	note B_, 2
;Bar 13
	note G#, 4
	note C_, 4
	note __, 4
	octave 2
	note G#, 4
	note __, 4
	note G#, 4
	note __, 4
	note G#, 4
;Bar 14
	note C#, 3
	note __, 1
	note C#, 2
	note __, 2
	note C#, 3
	note __, 1
	note C#, 2
	note __, 2
	note C#, 3
	note __, 1
	note C#, 2
	note G#, 2
	octave 3
	note C#, 3
	note __, 1
	note E_, 4
;Bar 15
	note F#, 2
	octave 2
	note F#, 2
	note __, 4
	octave 3
	note C#, 4
	octave 2
	note G#, 4
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	note __, 4
	octave 3
	note C_, 4
	note C#, 4
;Bar 16
	note E_, 2
	octave 2
	note E_, 2
	note __, 4
	note B_, 4
	note F#, 4
	octave 3
	note G#, 2
	octave 2
	note G#, 2
	note __, 2
	note G#, 2
	octave 3
	note C_, 2
	note C#, 2
	octave 2
	note G_, 2
	note G#, 2
;Bar 17
	note C#, 3
	note __, 3
	note C#, 1
	note __, 1
	note C#, 3
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 2
	note __, 2
	note G#, 4
	note C#, 4
	octave 3
	note C_, 2
	note C#, 2
;Bar 18
	octave 2
	note F_, 4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
;Bar 19
	note F#, 4
	note __, 2
	octave 3
	note F#, 1
	note __, 1
	note C#, 4
	note __, 2
	octave 2
	note A_, 1
	note __, 1
	note F#, 4
	note __, 2
	octave 3
	note C#, 1
	note __, 1
	note F#, 4
	note G_, 4
;Bar 20
	octave 2
	note F#, 4
	note __, 2
	octave 3
	note C_, 1
	note __, 1
	note C#, 4
	note D_, 2
	octave 2
	note B_, 2
	note A_, 4
	note __, 2
	note G_, 1
	note __, 1
	note F#, 2
	note E_, 2
	note F#, 2
	note G#, 2
;Bar 21
	octave 3
	note C#, 1
	note __, 1
	note C#, 6
	octave 2
	note E_, 8
	octave 3
	note C#, 1
	note __, 1
	note C#, 6
	octave 2
	note G_, 8
;Bar 22
	octave 3
	note C#, 1
	note __, 1
	note C#, 6
	octave 2
	note E_, 8
	octave 3
	note F#, 1
	note __, 1
	note F#, 2
	octave 2
	note C#, 12
;Bar 23
	note F#, 1
	note __, 1
	note F#, 5
	note __, 1
	note G_, 1
	note __, 1
	note G_, 5
	note __, 1
	note A_, 1
	note __, 1
	note A_, 5
	note __, 1
	note G_, 1
	note __, 1
	note A_, 2
	note E_, 2
	note F_, 2
;Bar 24
	note F#, 1
	note __, 1
	note F#, 5
	note __, 1
	note E_, 1
	note __, 1
	note E_, 2
	note C#, 4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note C#, 8
	note E_, 4
;Bar 25
	note F#, 2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F_, 2
	note F#, 1
	note __, 1
;Bar 26
	note F#, 2
	note F#, 1
	note __, 1
	note A_, 2
	note A#, 1
	note __, 1
	octave 3
	note C#, 2
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note F_, 2
	note F#, 2
	octave 2
	note F#, 2
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	note C_, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
;Bar 27
	octave 2
	note G_, 2
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note D_, 2
	note D_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 2
	note G_, 1
	note __, 1
;Bar 28
	note G_, 2
	note G_, 1
	note __, 1
	note G_, 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 2
	octave 2
	note A#, 1
	note __, 1
	octave 3
	note F#, 2
	note G_, 2
	note D_, 4
	octave 2
	note B_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note B_, 2
	octave 3
	note D_, 2
;Bar 29
	octave 2
	note G#, 2
	note G#, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note D#, 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	octave 2
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 2
	note G#, 1
	note __, 1
;Bar 30
	note G#, 2
	note G#, 1
	note __, 1
	note G#, 2
	octave 3
	note C_, 1
	note __, 1
	note D#, 2
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note G_, 2
	note G#, 2
	note D#, 1
	note __, 1
	note D#, 1
	note __, 1
	note G_, 2
	note G#, 2
	note D_, 2
	note D#, 2
	octave 2
	note B_, 2
	octave 3
	note C_, 2
;Bar 31
	octave 2
	note G_, 2
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G#, 1
	note __, 1
	note G_, 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 2
	note G_, 2
	note G#, 2
	note D_, 2
	note D#, 2
	octave 2
	note G_, 2
	note G#, 2
	note D_, 2
	note G_, 2
;Bar 32
	note G#, 5
	note __, 1
	note G#, 1
	note __, 1
	note G#, 4
	note G_, 2
	note G#, 2
	octave 3
	note C_, 5
	note __, 1
	note C_, 1
	note __, 1
	note C_, 4
	octave 2
	note B_, 2
	octave 3
	note C_, 2
;Bar 33
	note D#, 4
	note G#, 8
	note G_, 2
	note G#, 2
	note C_, 5
	note __, 1
	note C_, 1
	note __, 1
	note C_, 4
	octave 2
	note B_, 2
	note A#, 2
;Bar 34
	note A_, 5
	note __, 1
	note A_, 1
	note __, 1
	note A_, 3
	note __, 1
	note G#, 2
	note A_, 7
	note __, 1
	note A_, 1
	note __, 1
	note A_, 4
	note G#, 4
;Bar 35
	note F#, 5
	note __, 1
	note F#, 1
	note __, 1
	note F#, 4
	note E_, 2
	note F#, 2
	octave 3
	note C#, 4
	note E_, 8
	note D#, 2
	note C#, 2
;Bar 36
	octave 2
	note B_, 5
	note __, 1
	note B_, 1
	note __, 1
	note B_, 4
	note A_, 4
	note G#, 2
	note G_, 2
	note F#, 8
	note E_, 4
;Bar 37
	note D#, 5
	note __, 1
	note D_, 1
	note __, 1
	note C#, 8
	note D#, 4
	note C#, 8
	note D#, 4
;Bar 38
	note E_, 12
	note G_, 1
	note A#, 1
	octave 3
	note C_, 1
	note D_, 1
	note E_, 4
	note G_, 8
	note C_, 4
;Bar 39
	octave 2
	note B_, 4
	octave 3
	note C_, 8
	octave 2
	note G_, 4
	note F#, 4
	note G_, 8
	note C_, 4
;Bar 40
	note D#, 5
	note __, 1
	note D#, 1
	note __, 1
	note D#, 4
	note D_, 4
	note D#, 5
	note __, 1
	octave 3
	note D#, 2
	note C#, 4
	octave 2
	note B_, 2
	note G#, 2
;Bar 41
	note F#, 5
	note __, 1
	note F_, 1
	note __, 1
	note F#, 6
	note F_, 2
	note D#, 5
	note __, 1
	note D#, 1
	note __, 1
	note A_, 4
	note G#, 2
	note F#, 2
;Bar 42
	note C#, 2
	note __, 2
	note C#, 3
	note __, 1
	note E_, 2
	note __, 2
	note E_, 4
	note A_, 2
	note __, 2
	note A_, 4
	octave 3
	note C#, 2
	note __, 2
	note C#, 4
;Bar 43
	note E_, 2
	note __, 2
	note E_, 4
	note D#, 2
	note __, 2
	note D#, 4
	note D_, 2
	note __, 2
	note D_, 4
	note C#, 2
	note __, 2
	note C#, 4
;Bar 44
	octave 2
	note A_, 16
	note G#, 16
;Bar 45
	note G_, 16
	note F#, 2
	note G_, 2
	note F#, 12
;Bar 46
	note F_, 8
	note G#, 16
	note G#, 4
	note G_, 2
	note G#, 2
;Bar 47
	octave 3
	note C#, 8
	octave 2
	note B_, 8
	note A_, 8
	note G#, 8
;Bar 48
	note F#, 4
	note __, 2
	note F#, 1
	note __, 1
	note F#, 2
	note E_, 2
	octave 3
	note C#, 2
	note D_, 2
	note C#, 4
	octave 4
	note C#, 4
	octave 3
	note C#, 4
	note B_, 4
;Bar 49
	note C#, 2
	octave 2
	note F#, 1
	note __, 3
	note F#, 1
	note __, 1
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note E_, 2
	octave 2
	note F#, 4
	octave 3
	note C#, 4
	octave 2
	note F#, 4
	note B_, 4
;Bar 50
	octave 3
	note C_, 2
	note __, 2
	note C_, 4
	octave 2
	note B_, 2
	note __, 2
	note B_, 4
	note A#, 2
	note __, 2
	note A#, 4
	note A_, 2
	note __, 2
	note A_, 4
;Bar 51
	note G#, 2
	note __, 2
	note G#, 4
	note G_, 2
	note __, 2
	note G_, 4
	note F#, 2
	note __, 2
	note E_, 4
	note F#, 2
	note __, 2
	note G_, 4
;Bar 52
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note E_, 6
	note F#, 2
	octave 2
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note E_, 6
	note D#, 2
;Bar 53
	octave 2
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note F#, 6
	note A_, 2
	octave 2
	note F#, 1
	note __, 1
	note F#, 6
	octave 3
	note A_, 6
	note G#, 2
	loopchannel 0, Music_FRLGChampion_Ch3_loop

; ============================================================================================================

Music_FRLGChampion_Ch4:
	togglenoise 3
	notetype 6
;Bar 1
	note B_, 16
	note B_, 16
	note B_, 16
;Bar 2
	noisesampleset 2
	note E_, 16
	noisesampleset 3
;Bar 3
Music_FRLGChampion_Ch4_Bar3_4:
	note B_, 16
	loopchannel 4, Music_FRLGChampion_Ch4_Bar3_4
;Bar 4
;Bar 5
	noisesampleset 3
	note A#, 1
	note B_, 1
	note A#, 2
	note F#, 2
	note A#, 2
	note C_, 4
	note F#, 2
	note A#, 2
	callchannel Music_FRLGChampion_Ch4_Type1
	note C_, 4
	note F#, 2
	note A#, 2
;Bar 6
	note B_, 2
	note A#, 2
	note F#, 2
	note A#, 2
	note C_, 4
	note C_, 4
	callchannel Music_FRLGChampion_Ch4_Type1
	note C_, 4
	note F#, 4
;Bar 7
	callchannel Music_FRLGChampion_Ch4_Type1
	callchannel Music_FRLGChampion_Ch4_Type2
	note A#, 4
	note F#, 2
	note A#, 2
	callchannel Music_FRLGChampion_Ch4_Type2
;Bar 8
	callchannel Music_FRLGChampion_Ch4_Type1
	callchannel Music_FRLGChampion_Ch4_Type2
	callchannel Music_FRLGChampion_Ch4_Type2
	note C_, 2
	note A#, 2
	note C_, 2
	note A#, 2
;Bar 9
	callchannel Music_FRLGChampion_Ch4_Type1
	callchannel Music_FRLGChampion_Ch4_Type2
	callchannel Music_FRLGChampion_Ch4_Type1
	callchannel Music_FRLGChampion_Ch4_Type2
;Bar 10
	callchannel Music_FRLGChampion_Ch4_Type1
	callchannel Music_FRLGChampion_Ch4_Type2
	noisesampleset 2
	note E_, 8
	noisesampleset 3
	callchannel Music_FRLGChampion_Ch4_Type10
;Bar 11
Music_FRLGChampion_Ch4_loop:
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 6
	note B_, 8
;Bar 12
	note D_, 1
	note A#, 3
	note D_, 2
	note D_, 2
	note B_, 4
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 6
	note B_, 8
;Bar 13
	note B_, 8
	note A#, 8
	note B_, 8
	note A#, 8
;Bar 14
	note B_, 8
	note A#, 8
	note B_, 4
	note A#, 8
	note C_, 2
	note A#, 2
;Bar 15
	note B_, 4
	callchannel Music_FRLGChampion_Ch4_Type5
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 4
	note D_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 4
;Bar 16
	note D_, 2
	note C_, 2
	callchannel Music_FRLGChampion_Ch4_Type5
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note F#, 4
;Bar 17
	note D_, 4
	note D_, 2
	note A#, 2
	note C_, 4
	note F#, 2
	note A#, 2
	note D_, 4
	note D_, 4
	note C_, 4
	note D_, 2
	note D_, 2
;Bar 18
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 2
	note A#, 2
	note B_, 2
	note A#, 2
	note D_, 2
	note D_, 2
	note B_, 4
	note F#, 2
	note A#, 2
;Bar 19
	note B_, 4
	note D_, 2
	note A#, 2
	note D_, 4
	note C_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note C_, 2
	note D_, 2
	note A#, 2
	note D_, 4
	note C_, 2
	note A#, 2
;Bar 20
	note D_, 4
	note C_, 2
	note A#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note C_, 1
	note D_, 1
	note D_, 4
	note D_, 2
	note A#, 2
	note D_, 4
	note F#, 2
	note A#, 2
;Bar 21
	callchannel Music_FRLGChampion_Ch4_Type3
	callchannel Music_FRLGChampion_Ch4_Type3
	note C_, 2
	note D_, 2
	note F#, 4
	callchannel Music_FRLGChampion_Ch4_Type3
;Bar 22
	callchannel Music_FRLGChampion_Ch4_Type3
	callchannel Music_FRLGChampion_Ch4_Type3
	note D_, 2
	note D_, 2
	note B_, 4
	note C_, 2
	note D_, 2
	note F#, 4
;Bar 23
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 4
	note D_, 2
	callchannel Music_FRLGChampion_Ch4_Type4
;Bar 24
	callchannel Music_FRLGChampion_Ch4_Type4
	note C_, 2
	note D_, 2
	note D_, 2
	note D_, 4
	note B_, 4
	note D_, 2
	note D_, 2
	note B_, 4
;Bar 25
	note B_, 1
	note B_, 3
	note C_, 4
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type6
	callchannel Music_FRLGChampion_Ch4_Type5
;Bar 26
	note C_, 2
	note D_, 2
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type7
;Bar 27
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type6
	callchannel Music_FRLGChampion_Ch4_Type5
;Bar 28
	note C_, 2
	note D_, 2
	note F#, 4
	note C_, 4
	callchannel Music_FRLGChampion_Ch4_Type7
;Bar 29
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type5
	callchannel Music_FRLGChampion_Ch4_Type6
	callchannel Music_FRLGChampion_Ch4_Type5
;Bar 30
	callchannel Music_FRLGChampion_Ch4_Type5
	note C_, 2
	note A#, 2
	callchannel Music_FRLGChampion_Ch4_Type7
;Bar 31
	note F#, 2
	note A#, 2
	note C_, 2
	note A#, 2
	note C_, 2
	note D_, 2
	note F#, 2
	note A#, 2
	callchannel Music_FRLGChampion_Ch4_Type6
	note C_, 2
	note A#, 2
	note C_, 2
	note C_, 2
;Bar 32
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 4
	callchannel Music_FRLGChampion_Ch4_Type5
	note D_, 2
	note D_, 2
	note D_, 4
	note C_, 2
	note D_, 2
;Bar 33
	note D_, 4
	note C_, 2
	note D_, 2
	note D_, 4
	callchannel Music_FRLGChampion_Ch4_Type5
	note D_, 2
	note D_, 2
	callchannel Music_FRLGChampion_Ch4_Type6
;Bar 34
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 35
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note C_, 2
	note D_, 2
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 36
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 37
	callchannel Music_FRLGChampion_Ch4_Type8
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note C_, 2
	note D_, 2
;Bar 38
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 39
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 40
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 41
	callchannel Music_FRLGChampion_Ch4_Type8
	callchannel Music_FRLGChampion_Ch4_Type8
;Bar 42
	note B_, 8
	note B_, 8
	note B_, 8
	note B_, 8
;Bar 43
	note A#, 4
	note C_, 2
	note A#, 8
	note A#, 2
	note A#, 4
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
;Bar 44
	note C_, 4
	note A#, 4
	note D_, 4
	note A#, 4
	callchannel Music_FRLGChampion_Ch4_Type10
	note C_, 2
	note C_, 2
	note A#, 2
	note D_, 2
;Bar 45
	note D_, 8
	note D_, 8
	callchannel Music_FRLGChampion_Ch4_Type10
	note F#, 4
	note A#, 4
;Bar 46
	note D_, 8
	note D_, 4
	note A#, 4
	callchannel Music_FRLGChampion_Ch4_Type10
	note D_, 4
	note A#, 2
	note D_, 2
;Bar 47
	note D_, 6
	note A#, 2
	note D_, 4
	note D_, 2
	note D_, 2
	callchannel Music_FRLGChampion_Ch4_Type10
	note C_, 2
	note C_, 2
	note A#, 2
	note A#, 2
;Bar 48
	note D_, 4
	note D_, 2
	note A#, 2
	note C_, 4
	note F#, 2
	note A#, 2
	note D_, 8
	note C_, 4
	note A#, 1
	note D_, 1
	note D_, 1
	note D_, 1
;Bar 49
	note C_, 2
	note A#, 2
	note D_, 2
	note A#, 2
	note C_, 2
	note C_, 2
	note F#, 2
	note C_, 2
	note D_, 4
	note A#, 4
	note C_, 4
	note C_, 1
	note D_, 1
	note D_, 1
	note D_, 1
;Bar 50
	note C_, 4
	callchannel Music_FRLGChampion_Ch4_Type5
Music_FRLGChampion_Ch4_Bar50:
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 2
	note D_, 2
	note D_, 4
	loopchannel 2, Music_FRLGChampion_Ch4_Bar50
	note D_, 2
	note D_, 2
	note D_, 2
	note A#, 2
	callchannel Music_FRLGChampion_Ch4_Type4
	note D_, 2
;Bar 52
	callchannel Music_FRLGChampion_Ch4_Type9
	note D_, 6
	note D_, 2
;Bar 53
	callchannel Music_FRLGChampion_Ch4_Type9
	note F#, 6
	note A#, 2
	loopchannel 0, Music_FRLGChampion_Ch4_loop

Music_FRLGChampion_Ch4_Type1:
	note A#, 2;
	note A#, 2
	note F#, 2
	note A#, 2
	endchannel

Music_FRLGChampion_Ch4_Type2:
	note C_, 2;
	note A#, 2
	note F#, 2
	note A#, 2
	endchannel

Music_FRLGChampion_Ch4_Type3:
	note D_, 2;
	note D_, 2
	note F#, 4
	endchannel

Music_FRLGChampion_Ch4_Type4:
	note D_, 2;
	note D_, 2
	note C_, 2
	note D_, 2
	note D_, 2
	endchannel

Music_FRLGChampion_Ch4_Type5:
	note D_, 2;
	note D_, 2
	note C_, 4
	endchannel

Music_FRLGChampion_Ch4_Type6:
	note D_, 2;
	note D_, 2
	note C_, 2
	note A#, 2
	endchannel

Music_FRLGChampion_Ch4_Type7:
	note D_, 2;
	note D_, 2
	note C_, 1
	note D_, 1
	note D_, 2
	note C_, 2
	note D_, 2
	note F#, 2
	note A#, 2
	note C_, 2
	note C_, 2
	endchannel

Music_FRLGChampion_Ch4_Type8:
	note D_, 4;
	note D_, 2
	note D_, 2
	note D_, 4
	note C_, 2
	note D_, 2
	endchannel

Music_FRLGChampion_Ch4_Type9:
	note D_, 2;
	note B_, 6
	note D_, 6
	note A#, 2
	note D_, 2
	note B_, 6
	endchannel

Music_FRLGChampion_Ch4_Type10:
	note C_, 2;
	note C_, 2
	note C_, 2
	note C_, 2
	endchannel