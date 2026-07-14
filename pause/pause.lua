function display_pause()
    local pause = "-PAUSED-"

    love.graphics.setFont(big_font)
    local font = love.graphics.getFont()

    local text_width = font:getWidth(pause)
    local text_height = font:getHeight()

    local screen_width = love.graphics.getWidth()
    local screen_height = love.graphics.getHeight()

    local x = (screen_width / 2) - (text_width / 2)
    local y = (screen_height / 2) - (text_height / 2)

    love.graphics.setColor(0, 0, 0, 0.65)
    love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())

    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print(pause, x, y)
end