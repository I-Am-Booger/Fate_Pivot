require("fate_system/fates/death")
require("fate_system/fates/devil")
require("fate_system/fates/justice")
require("fate_system/fates/lovers")
require("fate_system/fates/sun")

-- require("fate_system/fate_blocks/destroy_all_bad_blocks")
-- require("fate_system/fate_level/remove_level")
-- require("fate_system/fate_level/add_level")
-- require("fate_system/fate_combos/pick_the_combo")

function activate_fate()
    local roll = love.math.random(1, 5) 

    if roll == 1 then death() end 
    if roll == 2 then devil() end
    if roll == 3 then lovers() end  
    if roll == 4 then justice() end
    if roll == 5 then sun() end

    play_fate_block_hit_sound()

    save_data.statistics.gameplay.fate_blocks_triggered =
        save_data.statistics.gameplay.fate_blocks_triggered + 1

    save_game_data()

end 