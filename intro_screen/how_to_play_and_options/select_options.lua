local diamond_position_close = 32
local far = 90

local options_menu = {
    "fullscreen",
    "resolution",
    "music_volume",
    "sound_volume",
    "language",
    "back"
}

function select_options_selection()
    local current_resolution = resolutions[resolution_index]

    for i, item in ipairs(options_menu) do
        local item_y = 175 + ((i - 1) * 65)
        local diamond_y = 170.5 + ((i - 1) * 65)

        if options_selection == i then
            love.graphics.setColor(1, 1, 1, 1)

            love.graphics.draw(diamond_selector, diamond_position_close, diamond_y, 0, 0.05, 0.05)

            love.graphics.print(text[current_language][item], far, item_y)
        else
            love.graphics.setColor(1, 1, 1, 0.35)
            love.graphics.print(text[current_language][item], close, item_y)
        end
    end


    -- the drawing of the options 
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print(full_screen, 450, 175)
    love.graphics.print(current_resolution.w .. " x " .. current_resolution.h, 450, 240)
    love.graphics.print(math.floor(music_volume * 100 + 0.5) .. "%", 450, 305)
    love.graphics.print(math.floor(sound_volume * 100 + 0.5) .. "%", 450, 370)

    local language_name = "English"

    if current_language == "es" then
        language_name = "Español"
    end

    love.graphics.print(language_name, 450, 435)
end

function change_language()

    if current_language == "en" then
        current_language = "es"
        
        else
            current_language = "en"
    end

    save_data.settings.language = current_language
    load_how_to_play_text()
    save_game_data()
end