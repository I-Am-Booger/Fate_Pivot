function songs()
    backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
    backgroundMusic:setLooping(true)
    love.audio.play(backgroundMusic)
end 