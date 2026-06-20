--[[
      1.controls 
        A. The r buton on the keyboards calles the destroy_player() 
           from spawning_player.lua
]]
           
function love.keypressed(key)
    if key == "r" then 
        destroy_player()
    end
    
end 