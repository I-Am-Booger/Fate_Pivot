function handle_option_selection(input)
    if game_state == "options" then

        if input == "dpdown" or input == "s" then
            options_selection = options_selection + 1

            if options_selection > 5 then 
                options_selection = 1 end
        end

        if input == "dpup" or input == "w" then
            options_selection = options_selection - 1

            if options_selection < 1 then 
                options_selection = 5 end
        end
    end
end