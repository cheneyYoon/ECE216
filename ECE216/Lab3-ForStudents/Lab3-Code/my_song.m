song = { 'Em' , 2 ; 'C', 1.5 ; 'G', 1.5 ; 'D', 2; 'Em' , 2 ; 'C', 1.5 ; 'G', 1.5 ; 'D', 2};
beat_length = 1;
fs = 11025;
num_beats = 6;

Z = get_song_wave(song, beat_length, fs );

soundsc(Z);

y = ADSR_env( Z, beat_length, num_beats, fs );

spectrogram(Z, 2*pi*fs, 0)