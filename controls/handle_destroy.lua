function handle_destroy_button(buttonPressed, joystick)
    if selected_cell == nil then return end -- this checks to see if there is even a cell if not it says forget about it

    if selected_cell.owner == "bad" then -- if it is bad, destroy that bad block, handle it to the destroy_bad_block() system
        destroy_bad_block(buttonPressed)
        return
    elseif selected_cell.owner == "fate" then -- if it is fate, this is going to be interesting, same as before just to activate_fate() 
        activate_fate()
        return
    end 

end 