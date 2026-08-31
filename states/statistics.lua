statistics_names_table = {
    {
        title = "career",
        group = "career",

        items = {
            {name = "games_played", key = "games_played"},
            {name = "highest_score", key = "highest_score"},
            {name = "highest_level", key = "highest_level"},
            {name = "total_time_played", key = "total_time_played", time = true}
        }
    },

    {
        title = "gameplay",
        group = "gameplay",

        items = {
            {name = "highest_multiplier", key = "highest_multiplier"},
            {name = "bad_blocks_destroyed", key = "bad_blocks_destroyed"},
            {name = "wrong_buttons_pressed", key = "wrong_buttons_pressed"},
            {name = "fate_blocks_triggered", key = "fate_blocks_triggered"},
            {name = "longest_survival", key = "longest_survival", time = true}
        }
    }
}

function format_time(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local remaining_seconds = math.floor(seconds % 60)

    return string.format(
        "%02d:%02d:%02d",
        hours,
        minutes,
        remaining_seconds
    )
end

function display_statistics()
    love.graphics.setColor(1, 1, 1, 1)

    love.graphics.setFont(big_font)
    love.graphics.print("Fate & Pivot", close, 100)
    love.graphics.print(text[current_language].statistics_title, close, 165)

    love.graphics.setFont(font)

    local y = 250
    local value_x = close + 400

    for _, section in ipairs(statistics_names_table) do
        love.graphics.print(text[current_language][section.title], close, y)
        y = y + 65

        for _, item in ipairs(section.items) do

            local value = save_data.statistics[section.group][item.key]

            if item.time == true then value = format_time(value) end    

            love.graphics.print(text[current_language][item.name], close, y)
            love.graphics.print(tostring(value), value_x, y)

            y = y + 65
        end

        y = y + 30
    end
end
