local moon1

function load_moon()
    moon1 = love.graphics.newImage("art/backgrounds/moon/moon1_1024x1024.png")
end 

function draw_moon()
    local screen_width = love.graphics.getWidth()
    local screen_height = love.graphics.getHeight()

    local desired_size = screen_height * 0.35
    local scale = desired_size / moon1:getHeight()

    local time = love.timer.getTime()

    local pulse = math.sin(time * 0.5) * 0.005

    local moon_scale = scale * (0.70 + pulse)

    love.graphics.draw(moon1, screen_width * 0.81, screen_height * 0.02, 0, moon_scale, moon_scale)
end