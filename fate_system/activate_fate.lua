require("fate_system/fates/justice")
require("fate_system/fates/death")
-- require("fate_system/fate_blocks/destroy_all_bad_blocks")
-- require("fate_system/fate_level/remove_level")
-- require("fate_system/fate_level/add_level")
-- require("fate_system/fate_combos/pick_the_combo")

function activate_fate()
    local roll = 3 -- love.math.random(1, 9) Testing -- still have to work these out but working on other things
    
    --[[
            1. cups double your multiplier time 
            2. death has a countdown till you get 10 blocks added to your screen 
            3. Justice romoves all the pieces on the board then randomly adds 16 to the board 
               it also gives you have the points of the blocks destroyed.
            4. swords halves your multiplier time  
            5. The Devil reverses control but adds double the bonus points
            6. The Moon 
            7. The sun
            8. The Tower adds to the board one row around 
            9. Wheel of furtune rotates the board but randomly destoys one block each sec
    ]]

    if roll == 1 then cups() end 
    if roll == 2 then death() end 
    if roll == 3 then justice() end
    if roll == 4 then swords() end   
    if roll == 5 then the_devil() end 
    if roll == 6 then the_moon() end 
    if roll == 7 then the_sun() end 
    if roll == 8 then the_tower() end 
    if roll == 9 then wheel_of_fortune() end

    print(roll)

    if roll ~= 2 and roll ~= 3 then 
        destroy_fate_block()
    end 
end 