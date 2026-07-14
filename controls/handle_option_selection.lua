function handle_option_selection(input)
    if game_state == "options_select" then
    
        if input == "dpdown" or input == "s" then
            option_selection = option_selection + 1

            if option_selection > 5 then title_selection = 1 end 
        
        end
    end 

    if input == "dpup" or input == "w" then 
        option_selection = option_selection - 1

        if option_selection < 1 then option_selection = 5
        end
    end
end 