local stars = {}

function create_stars()
    
    local screen_width = love.graphics.getWidth()
    local screen_height = love.graphics.getHeight()
    
    local floor_height = screen_height * 0.15
    local sky_height = screen_height - floor_height
    
    local random_amount_of_stars = love.math.random(25, 200) 
    
    
    for i = 1, random_amount_of_stars do 
        table.insert(stars, {

            x = love.math.random(0, screen_width),
            y = love.math.random(0, math.floor(sky_height)),
            size = love.math.random(1, 3)
        })
    end 
end

function draw_stars()
    for i, star in ipairs(stars) do
        love.graphics.circle("fill", star.x, star.y, star.size)
    end
end 
