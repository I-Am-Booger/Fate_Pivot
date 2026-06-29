-- this is the selector for destroying a block

function draw_selector()
    if selectedCell == nil then 
        return 
    end 

    love.graphics.setColor(1,0,1)
    love.graphics.setLineWidth(8)

    love.graphics.rectangle("line", selectedCell.x, selectedCell.y, selectedCell.w, selectedCell.h)
end 
