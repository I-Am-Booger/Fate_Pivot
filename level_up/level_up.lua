function level_up()
    if block_destroyed >= block_to_next_level then
        level = level + 1
        block_destroyed = 0    

        block_to_next_level = level * 10
    end 
end 