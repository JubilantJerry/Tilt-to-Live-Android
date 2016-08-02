if instance_number(spikes_aura) = 1 {
if player.burnicadeStage = 0 {
   if spikes_aura.stage = -1 {
      spikes_aura.sprite_index = spr_spikes_transition_aura
   } else if spikes_aura.stage = 0 or spikes_aura.stage = 3 {
      spikes_aura.sprite_index = spr_spikes_center_blue
   } else if spikes_aura.stage = 1 {
      spikes_aura.sprite_index = spr_spikes_center_red
   } else if spikes_aura.stage = 2 {
      spikes_aura.sprite_index = spr_spikes_transition_aura
   }
} else {
   if spikes_aura.stage = -1 {
      spikes_aura.sprite_index = spr_spikes_transition_aura_fire
   } else if spikes_aura.stage = 0 or spikes_aura.stage = 3 {
      spikes_aura.sprite_index = spr_spikes_center_blue_fire
   } else if spikes_aura.stage = 1 {
      spikes_aura.sprite_index = spr_spikes_center_red_fire
   } else if spikes_aura.stage = 2 {
      spikes_aura.sprite_index = spr_spikes_transition_aura_fire
   }
}
}
