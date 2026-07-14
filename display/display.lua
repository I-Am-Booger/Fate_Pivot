function calculate_display_scale()
    screen_width, screen_height = love.graphics.getDimensions() 

    local scale_x = screen_width / design_width
    local scale_y = screen_height / design_height 

    -- Use the smaller scale so nothing gets cut off
    game_scale = math.min(scale_x, scale_y)

    local scaled_game_width = design_width * game_scale
    local scaled_game_height = design_height * game_scale

    -- center the 16:9 game area
    game_offset_x = math.floor((screen_width - scaled_game_width) / 2)
    game_offset_y = math.floor((screen_height - scaled_game_height) / 2)
    
end 