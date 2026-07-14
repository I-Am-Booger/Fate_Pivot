function handle_title_selection(input)
   if game_state == "mode_select" then   

        -- Down
        if input == "dpdown" or input == "s" then
            title_selection = title_selection + 1
            
            if title_selection > 4 then title_selection = 1 end
        end

        -- Up
        if input == "dpup" or input =="w" then
            title_selection = title_selection - 1
            
            if title_selection < 1 then title_selection = 4 end
        end
    end
end 