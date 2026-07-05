-- this is the selector for destroying a block

function draw_selector()
    if selected_cell == nil then 
        return 
    end 

    love.graphics.setColor(1,0,1)
    love.graphics.setLineWidth(8)

    love.graphics.rectangle("line", selected_cell.x, selected_cell.y, selected_cell.w, selected_cell.h)
end 
