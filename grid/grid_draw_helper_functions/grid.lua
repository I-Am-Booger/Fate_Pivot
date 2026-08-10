-- original grid

function grid() 
    local x = borderX
    local y = borderY
    local c = cell

    ------Working on this------------------------------------
    if wrong_button_pressed == true then 
        love.graphics.setColor(1, 0, 0)

        else 
            love.graphics.setColor(1, 1, 1)
    end 
    ---------------------------------------------------------

    -- love.graphics.setColor(1,1,1)
    love.graphics.setLineWidth(4) 
        cells(4, x, y)
        x = x - c
        y = y + c
        cells(6, x, y) 
        y = y + c
        cells(6, x, y)
        y = y + c
        cells(6, x, y)
        y = y + c
        cells(6, x, y) 
        x = x + c
        y = y + c
        cells(4, x, y) 
end 





