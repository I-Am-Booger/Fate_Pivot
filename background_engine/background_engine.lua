local stars = {}
local floor1

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
            size = love.math.random(1, 3),
            alpha = love.math.random(35, 100) / 100
        })
    end 
end

function draw_stars()
    for i, star in ipairs(stars) do
        love.graphics.setColor(1, 1, 1, star.alpha )
        love.graphics.circle("fill", star.x, star.y, star.size)
    end

    love.graphics.setColor(1, 1, 1, 1)
end 


function load_floor()
    floor1 = love.graphics.newImage("art/backgrounds/floor/floor_3838x2160.png")
end 

function draw_floor()
    local screen_height = love.graphics.getHeight()
    local floor_height = screen_height * 0.15

    local floor_y = screen_height - floor_height

    love.graphics.draw(floor1, 0, floor_y)

end


function update_stars()

end 

function background_engine_load()
    create_stars()
    load_floor()
end 

function background_engine()
    draw_stars()
    draw_floor()

end 