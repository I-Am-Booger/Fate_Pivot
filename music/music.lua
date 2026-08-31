function songs()
    background_music = love.audio.newSource("music/crystal_cave.mp3", "stream")
    background_music:setLooping(true)
    background_music:setVolume(music_volume)
    background_music:play()
end 

