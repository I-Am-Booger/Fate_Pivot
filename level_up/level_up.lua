function level_up()
    if block_destroyed >= block_to_next_level then
        level = level + 1
        block_destroyed = 0    

        block_to_next_level = level * 10

        player_timer_max = base_player_timer - ((level - 1) * 0.10)
        
        bad_timer_max = base_bad_timer_max - ((level - 1) * 0.10)
        
        player_timer_max = math.max(0.5, player_timer_max)
        bad_timer_max = math.max(0.5, bad_timer_max)
        
        player_timer = player_timer_max
        bad_timer = bad_timer_max
    
        print("LEVEL:", level)
        print("PLAYER TIMER:", player_timer_max)
        print("BAD TIMER:", bad_timer_max)
    end 
end 

-- bad_timer = 3
-- bad_timer_max = 3 
