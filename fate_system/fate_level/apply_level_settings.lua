function apply_level_settings()
        blocks_destroyed = 0    

        blocks_to_next_level = level * 8

        player_timer_max = base_player_timer - ((level - 1) * 0.10)
        
        bad_timer_max = base_bad_timer_max - ((level - 1) * 0.15)
        
        player_timer_max = math.max(0.5, player_timer_max)
        bad_timer_max = math.max(0.5, bad_timer_max)
        
        player_timer = player_timer_max
        bad_timer = bad_timer_max
end 