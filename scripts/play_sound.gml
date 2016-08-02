if control_sound.sound_enabled = false then exit;
var sound, hi;
sound = audio_play_sound(argument[0], 5, false)
return sound
