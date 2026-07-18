function button_click()
    click = love.audio.newSource("music/affects/gore - large metal blade wet stab slash and remove from flesh - medium - 14.wav", "static") -- the sound worked really well... LOL
    click:setVolume(sound_volume) 
    love.audio.play(click)
end 