local diamond_position_close = 32
local close = 50
local far = 90         


local options_menu = {"Fullscreen", "Resolution", "Music Volume", 
                  "Sound Volume", "Back"}


function select_options_selection()

    for i, item in ipairs(options_menu) do
        local item_y = 175 + ((i - 1) * 65)
        local diamond_y = 170.5 + ((i - 1) * 65) 
        
        if options_selection == i then 
            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(diamond_selector, diamond_position_close, diamond_y, 0, 0.05, 0.05)
            
            love.graphics.print(item, far, item_y)
    
            else 
                love.graphics.setColor(1, 1, 1, 0.35)
                love.graphics.print(item, close, item_y)
        end
    end 
end 