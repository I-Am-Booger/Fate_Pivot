    function songs()
        if game_state == "title" then
            backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
            backgroundMusic:setLooping(true)
            love.audio.play(backgroundMusic)
        end 

        if game_state == "play" then
            backgroundMusic = love.audio.newSource("music/IntroSong.mp3", "stream")
            backgroundMusic:setLooping(true)
            love.audio.play(backgroundMusic)
        end  
    end 