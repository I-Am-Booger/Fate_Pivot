function load_audio()
    -- The sound of moving your piece
    respawn_click = love.audio.newSource("music/effects/gore - large metal blade wet stab slash and remove from flesh - medium - 14.wav", "static") -- the sound worked really well... LOL Timothy McHugh -Glorification[HD] sonnis 2015
    
    -- The sound of hitting the right button
    -- right_button_click = love.audio.NewSource("music/effects")

    -- The sound of hitting the wrong button
    bad_block_hit_sound = love.audio.newSource("music/effects/negative_voice_5.wav", "static") --puzle audio bundle TaoAndSound 
    
    -- The sound of hitting a fate block
    fate_block_hit_sound = love.audio.newSource("music/effects/slide_button_8.wav", "static") -- TaoAndSound buttons sfx library
    
    -- The sound of leveling up 
    level_up_sound = love.audio.newSource("music/effects/button_2.wav", "static") -- Puzzle Audio Bundle Humble Bundle TaoAndSound
    
end 

