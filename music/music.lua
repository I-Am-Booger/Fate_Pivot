    function songs()
        if gameState == "title" then
            backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
            backgroundMusic:setLooping(true)
            love.audio.play(backgroundMusic)
        end 

        if gameState == "play" then
            backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
            backgroundMusic:setLooping(true)
            love.audio.play(backgroundMusic)
        end  
    end 