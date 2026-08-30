require("level_up/apply_level_settings")

function level_up()
    if blocks_destroyed >= blocks_to_next_level then
        level = level + 1
        apply_level_settings()
        play_level_up_sound()

        if level > save_data.statistics.career.highest_level then
            save_data.statistics.career.highest_level = level
        end

        save_game_data()
    end
end