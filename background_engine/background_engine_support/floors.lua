local floor1

function load_floor()
    floor1 = love.graphics.newImage("art/backgrounds/floor/floor_3838x2160.png")
end 

function draw_floor()
    local screen_width = love.graphics.getWidth()
    local screen_height = love.graphics.getHeight()

    local floor_height = screen_height * 0.20
    local floor_y = screen_height - floor_height

    local scale_x = screen_width / floor1:getWidth()
    local scale_y = floor_height / floor1:getHeight()

    love.graphics.draw(floor1, 0, floor_y, 0, scale_x, scale_y)
end