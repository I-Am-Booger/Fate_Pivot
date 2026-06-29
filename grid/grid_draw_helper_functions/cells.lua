-- This makes a row of blocks 
function cells(num, x, y)
    local c = cell
        for i = 1, num do
            love.graphics.rectangle("line", x, y, c, c)
            x = x + c
        end 
end
