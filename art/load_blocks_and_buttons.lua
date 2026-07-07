
function load_blocks()
    -- blocks 
    player_image = love.graphics.newImage("art/blocks/white_block_t.png")
    blue_block   = love.graphics.newImage("art/blocks/blue_block_t.png")
    green_block  = love.graphics.newImage("art/blocks/green_block_t.png")
    purple_block = love.graphics.newImage("art/blocks/purple_block_t.png")
    red_block  = love.graphics.newImage("art/blocks/red_block_t.png")
    yellow_block  = love.graphics.newImage("art/blocks/yellow_block_t.png")
    
    block_x = cell / player_image:getWidth()
    block_y = cell / player_image:getHeight()
end 




function load_buttons(joystick)
    local joysticks = love.joystick.getJoysticks()
    local joystick = joysticks[1]

    if joystick == nil then controller = "keyboard"
        else controller = joystick:getName() end  

    if controller == "Controller (Xbox One For Windows)" then 
        a_button = love.graphics.newImage("art/buttons/switch_xbox/a_button.png")
        b_button = love.graphics.newImage("art/buttons/switch_xbox/b_button.png")
        x_button = love.graphics.newImage("art/buttons/switch_xbox/x_button.png")
        y_button = love.graphics.newImage("art/buttons/switch_xbox/y_button.png")
        
    elseif controller == "DualSense Wireless Controller" then 
        a_button = love.graphics.newImage("art/buttons/playstation/x_button.png")
        b_button = love.graphics.newImage("art/buttons/playstation/circle_button.png")
        x_button = love.graphics.newImage("art/buttons/playstation/square_button.png")
        y_button = love.graphics.newImage("art/buttons/playstation/triangle_button.png")
    -- where the change was made 
    else 
        a_button = love.graphics.newImage("art/buttons/keyboard/p_button.png")
        b_button = love.graphics.newImage("art/buttons/keyboard/p_button.png")
        x_button = love.graphics.newImage("art/buttons/keyboard/p_button.png")
        y_button = love.graphics.newImage("art/buttons/keyboard/p_button.png")
    -- where the change ended 
    end         
        
    fate_button = love.graphics.newImage("art/buttons/fate/fate_button.png")
    player_diamond = love.graphics.newImage("art/buttons/player/diamond.png")
    player_diamond_r = love.graphics.newImage("art/buttons/player/diamond_r.png")
    
    button_x = 65 / a_button:getWidth()
    button_y = 65 / a_button:getHeight()
end 