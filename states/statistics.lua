statistics_names_table = {
    {
        title = "= Career ===============",
        group = "career",

        items = {
            {name = "Games Played", key = "games_played"},
            {name = "Highest Score", key = "highest_score"},
            {name = "Highest Level", key = "highest_level"},
            {name = "Total Time Played", key = "total_time_played", time = true}
        }
    },

    {
        title = "= Gameplay =============",
        group = "gameplay",

        items = {
            {name = "Bad Blocks Destroyed", key = "bad_blocks_destroyed"},
            {name = "Wrong Buttons Pressed", key = "wrong_buttons_pressed"},
            {name = "Fate Blocks Triggered", key = "fate_blocks_triggered"},
            {name = "Longest Survival", key = "longest_survival", time = true}
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
    love.graphics.print("Statistics", close, 165)

    love.graphics.setFont(font)

    local y = 250
    local value_x = close + 400

    for _, section in ipairs(statistics_names_table) do
        love.graphics.print(section.title, close, y)
        y = y + 65

        for _, item in ipairs(section.items) do

            local value =
                save_data.statistics[section.group][item.key]

            if item.time == true then value = format_time(value) end    

            love.graphics.print(item.name, close, y)
            love.graphics.print(tostring(value), value_x, y)

            y = y + 65
        end

        y = y + 30
    end
end
