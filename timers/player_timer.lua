function update_player_timer(dt)
    player_timer = player_timer - dt
        
    if player_timer <= 0 then 
        remove_score(10)
        destroy_player()
    end 
end 