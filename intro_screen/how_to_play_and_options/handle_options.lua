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
        -- language changes with left and right

    elseif options_selection == 6 then
        game_state = "mode_select"
    end
    end 
    

function toggle_fullscreen()
    local is_fullscreen = love.window.getFullscreen()

    love.window.setFullscreen(not is_fullscreen, "desktop")

    save_data.settings.fullscreen = love.window.getFullscreen()
    save_game_data()

    calculate_display_scale()
    create_stars()
    update_fullscreen_text()
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

    local is_fullscreen = love.window.getFullscreen()

    love.window.setMode(
        resolution.w,
        resolution.h,
        {
            fullscreen = is_fullscreen,
            fullscreentype = "desktop",
            vsync = 1,
            resizable = false
        }
    )

    save_data.settings.resolution_index = resolution_index
    save_data.settings.fullscreen = is_fullscreen
    save_game_data()

    calculate_display_scale()
    create_stars()
    update_fullscreen_text()
end

function change_music_volume(direction)
    music_volume = music_volume + (direction * 0.1)

    if music_volume > 1 then
        music_volume = 1
    elseif music_volume < 0 then
        music_volume = 0
    end

    background_music:setVolume(music_volume)

    save_data.settings.music_volume = music_volume
    save_game_data()
end


function change_sound_volume(direction)
    sound_volume = sound_volume + (direction * 0.1)

    if sound_volume > 1 then
        sound_volume = 1
    elseif sound_volume < 0 then
        sound_volume = 0
    end

    save_data.settings.sound_volume = sound_volume
    save_game_data()

    play_respawn_click()
end

function update_fullscreen_text()
    local is_fullscreen = love.window.getFullscreen()

    if is_fullscreen then
        full_screen = text[current_language].yes
    else
        full_screen = text[current_language].no
    end
end