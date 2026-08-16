function justice()
    justice_fate_active = true
    justice_fate_timer = 3
end

function issue_justice()
    local justice_fate_teardown = {}
        
    for i, cell in ipairs(grid_table) do
        if cell.occupied == true and cell.owner == "bad" then 
            table.insert(justice_fate_teardown, cell)     
        end     
    end                                                                       

    for i = 1, #justice_fate_teardown do
        if #justice_fate_teardown == 0 then break end
        
        local cell = justice_fate_teardown[i]

        cell.occupied = false
        cell.owner = nil
        cell.color = nil
        cell.button = nil

        add_score(10)
    end
 
    local justice_fate_rebuild = {}

    for i, cell in ipairs(grid_table) do
        if cell.occupied == false and cell.owner == nil then
            table.insert(justice_fate_rebuild, cell)
        end
    end 

    local justice_rebuild_amount = math.floor(#grid_table / 2)
   
    for i = 1, justice_rebuild_amount do 
        if #justice_fate_rebuild == 0 then break end
        
        local random_index = love.math.random(1, #justice_fate_rebuild)
        local cell = justice_fate_rebuild[random_index]

        local randomColor = bad_blockColors[love.math.random(1, #bad_blockColors)]
        local randomSymbol = button_symbol[love.math.random(1, #button_symbol)]

        cell.occupied = true
        cell.owner = "bad"
        cell.color = randomColor
        cell.button = randomSymbol

        table.remove(justice_fate_rebuild, random_index)
    end 
end

function update_justice_fate(dt)
    if justice_fate_active == false then
        return
    end

    justice_fate_timer = justice_fate_timer - dt

    if justice_fate_timer <= 0 then
        justice_fate_timer = 0

        issue_justice()

        justice_fate_active = false
    end
end