function activate_options()
    if options_selection == 1 then
        toggle_fullscreen()

    elseif options_selection == 2 then
        -- resolution changes with left and right 

    elseif options_selection == 3 then
        -- change music_volume with left and right 

    elseif options_selection == 4 then
        -- change_sound_volume() with left and right

    elseif options_selection == 5 then
        game_state = "mode_select"
    end
end 

function toggle_fullscreen()
    local is_full_screen = love.window.getFullscreen()
    love.window.setFullscreen(not is_full_screen, "desktop")
end 

resolution_index = 1

resolutions = {
    {w = 1920, h = 1080},
    {w = 2560, h = 1440},
}

function change_resolution(direction)
   resolution_index = resolution_index + direction

    if resolution_index > #resolutions then
        resolution_index = 1
    
        elseif resolution_index < 1 then
            resolution_index = #resolutions
    end

    local resolution = resolutions[resolution_index]

    love.window.setMode(resolution.w, resolution.h,
        {
            fullscreen = false,
            vsync = 1,
            resizable = false
        }
    )
end

function change_music_volume(direction)
    music_volume = music_volume + (direction * 0.1)


    if music_volume > 1 then 
        music_volume = 1
    
        elseif music_volume < 0 then 
            music_volume = 0
    end 

        background_music:setVolume(music_volume)
        
end 

function change_sound_volume(direction)
    sound_volume = sound_volume + (direction * 0.1)

    if sound_volume > 1 then
        sound_volume = 1

        elseif sound_volume < 0 then 
            sound_volume = 0
    end

    button_click()
end 