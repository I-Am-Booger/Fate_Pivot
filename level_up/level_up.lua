function level_up()
    if blocks_destroyed >= blocks_to_next_level then
        level = level + 1
        apply_level_settings()
        play_level_up_sound()

        if level > highest_level then 
            highest_level = level
        end 

        save_data.statistics.career.highest_level = highest_level

        save_game_data()
    end
end