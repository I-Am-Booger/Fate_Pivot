require("fate_system/fate_blocks/add_minus_blocks")
require("fate_system/fate_blocks/destroy_all_bad_blocks")
require("fate_system/fate_level/remove_level")
require("fate_system/fate_level/add_level")

function activate_fate()
    local roll = love.math.random(3, 4)
    
    if roll == 1 then add_minus_blocks() end 
    if roll == 2 then destroy_all_bad_blocks() end 
    if roll == 3 then remove_level() end 
    if roll == 4 then add_level() end 
    print(roll)
    destroy_fate_block()
end 