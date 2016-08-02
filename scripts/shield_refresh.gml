if instance_number(shield_aura) = 1 {
    with (shield_aura) {
    image_speed = 0
        if burnicadeHeat != 0 {
            sprite_index = spr_shield_aura_fire
            image_index = 4 - burnicadeHeat //Orangish shield
        } else if lightningShock != 0 {
            sprite_index = spr_shield_aura_lightning
            image_speed = 0.03//Cyanish shield
        } else if spikesLance != 0 {
            sprite_index = spr_shield_aura_spikes//Darker blue shield + spikes
        } else {
            sprite_index = spr_shield_aura //Normal shield
        }
        if spikesLance != 0 and !(instance_exists(shield_spike)) {
                instance_create(x,y,shield_spike)} 
    }
}
