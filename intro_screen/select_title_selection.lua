function select_title_selection()

local title_selection_menu = {"Start Game", "Options", "How to play", "Exit"}

local diamond_position_close = 32 -- diamond position close
local close = 50 -- selector close
local far = 90 


    for i, item in ipairs(title_selection_menu) do
        local item_y = 175 + ((i - 1) * 65)
        local diamond_y = 170.5 + ((i - 1) * 65)

        if title_selection == i then

            love.graphics.setColor(1, 1, 1, 1)
            love.graphics.draw(diamond_selector, diamond_position_close, diamond_y, 0, 0.05, 0.05)

            love.graphics.print(item, far, item_y)

        else 
            love.graphics.setColor(1,1,1, 0.35)
            love.graphics.print(item, close, item_y)
        end
    end

end
