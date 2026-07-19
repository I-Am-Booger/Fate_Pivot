function level_up()
    if blocks_destroyed >= blocks_to_next_level then
        level = level + 1
        apply_level_settings()
    end
end