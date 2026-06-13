--This is the code to build the grid 

function cells(num, x, y)
    local c = cell
    
    for i = 1, num do             
        love.graphics.rectangle("line", x, y, c, c)
        x = x + c
    end  
end 

--[[
    I set the vars to quick x, y, z to just make things a bit easier.
    Dislexia is a bitch!
]]
function grid() -- 
    local x = borderX
    local y = borderY
    local c = cell
    
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

