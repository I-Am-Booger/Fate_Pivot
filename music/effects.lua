function play_respawn_click()
    respawn_click:setVolume(sound_volume)
    respawn_click:stop()
    love.audio.play(respawn_click)
end 

function play_level_up_sound()
    level_up_sound:setVolume(sound_volume * 1)
    level_up_sound:stop()
    love.audio.play(level_up_sound)
end

function play_bad_block_hit_sound()
    bad_block_hit_sound:setVolume(sound_volume * 1)
    bad_block_hit_sound:stop()
    love.audio.play(bad_block_hit_sound)
end     

function play_fate_block_hit_sound()
    fate_block_hit_sound:setVolume(sound_volume * 1)
    fate_block_hit_sound:stop()
    love.audio.play(fate_block_hit_sound)
end 