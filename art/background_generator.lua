
-- layer 1 -- Black
love.graphics.clear(0,0,0)

-- layer 2 -- Stars
local stars = love.math.random(25, 60)

for i = 1, stars do
    local star_x = love.math.random(0, 1920)
    local star_y = love.math.random(0, 864) -- 20%
    
    local pulse_speed = 1.4
    local pulse_amount = 0.004
    
    local star = "•"


    
    love.graphics.printf("star", star_x, star_y, love.graphics.getWidth(), "center")
end 

-- layer 3 -- Moon

-- layer 4 -- Clouds

-- layer 5 -- ground 

-- layer 6 -- particles 

-- layer 7 -- Board 
