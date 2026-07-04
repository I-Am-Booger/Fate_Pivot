function combo_counter(destroyed_color)
    
    if destroyed_color == last_destroyed_color then 
        combo_count = combo_count + 1
    else
        combo_count = 1
        last_destroyed_color = destroyed_color
    end


    if combo_count == 3 then
        activate_combo(destroyed_color)
        combo_made = combo_made + 1

        combo_count = 0
        last_destroyed_color = nil

    end
end