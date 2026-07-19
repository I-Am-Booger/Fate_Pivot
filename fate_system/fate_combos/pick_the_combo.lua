require("fate_system/fate_combos/red")
require("fate_system/fate_combos/blue")
require("fate_system/fate_combos/green")
require("fate_system/fate_combos/yellow")

function pick_the_combo()
    local combo_table = {"red", "blue", "green", "yellow"}

    local random_combo = love.math.random(1, #combo_table)
    
    if combo_table[random_combo] == "red" then red_combo() end 
    if combo_table[random_combo] == "blue" then blue_combo() end 
    if combo_table[random_combo] == "green" then green_combo() end 
    if combo_table[random_combo] == "yellow" then yellow_combo() end 
    -- if combo_table[random_combo] == "the_cross" then end 
end

function how_many_combos()
    local random_amount = love.math.random(1, 60)

    if random_amount >= 32 and random_amount <= 60 then 
        pick_the_combo()
    elseif random_amount >= 16 and random_amount < 32 then  
        pick_the_combo()
        pick_the_combo()
    elseif random_amount >= 8 and random_amount < 16 then
        pick_the_combo()
        pick_the_combo()
        pick_the_combo()
    elseif random_amount >= 4 and random_amount < 8 then 
        pick_the_combo()
        pick_the_combo()
        pick_the_combo()
        pick_the_combo()
    else 
        print("There was a glitch in the matrix")

        -- it will display a few things 
        return nil
    end 
end 

-- 32 for 1
-- 16 for 2
-- 8  for 3
-- 4  for 4   









