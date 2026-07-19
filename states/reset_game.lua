function reset_game()
     score = 0
     level = 1
     blocks_destroyed = 0

     player_timer = base_player_timer 
     bad_timer = base_bad_timer_max

     for i, cell in ipairs(grid_table) do 
          cell.occupied = false 
          cell.owner = nil
          cell.color = nil
          cell.button = nil
     end 

     current_player_cell = nil
     current_fate_cell = nil
     selected_cell = nil

     fate_spawn_timer = love.math.random(20, 50)

     combo_count = 0
     combo_made = 0
end 