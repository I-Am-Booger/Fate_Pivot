local stars = {}
local floor1
local moon1

function create_stars()
    stars = {}

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

            alpha = love.math.random(35, 100) / 100,

            twinkles = love.math.random() < 0.30,
            twinkle_speed = love.math.random() * 2 + 0.5,
            offset = love.math.random() * math.pi * 2
        })
    end
end

function draw_stars()
    local time = love.timer.getTime()

    for i, star in ipairs(stars) do
        local alpha = star.alpha

        if star.twinkles then
            local pulse = math.sin(
                time * star.twinkle_speed + star.offset
            )

            alpha = star.alpha + pulse * 0.20

            alpha = math.max(0.20, math.min(1, alpha))
        end

        love.graphics.setColor(1, 1, 1, alpha)
        love.graphics.circle("fill", star.x, star.y, star.size)
    end

    love.graphics.setColor(1, 1, 1, 1)
end





















function load_floor()
    floor1 = love.graphics.newImage("art/backgrounds/floor/floor_3838x2160.png")
end 

function load_moon()
    moon1 = love.graphics.newImage("art/backgrounds/moon/moon1_1024x1024.png")
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


function draw_moon()
    local screen_width = love.graphics.getWidth()
    local screen_height = love.graphics.getHeight()

    local desired_size = screen_height * 0.35
    local scale = desired_size / moon1:getHeight()

    love.graphics.draw(moon1, screen_width * .81, screen_height * .02, 0, scale * 0.70, scale * 0.70)


end 

function background_engine_load()
    create_stars()
    load_moon()
    load_floor()
end 

function background_engine()
    draw_stars()
    draw_moon()
    draw_floor()

end 