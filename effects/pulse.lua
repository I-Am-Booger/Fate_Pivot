function update_destroy_pulse(dt)
    if destroy_pulse_active == false then
        return
    end

    destroy_pulse_distance =
        destroy_pulse_distance + destroy_pulse_speed * dt

    local longest_distance = math.max(
        destroy_pulse_top_left_distance,
        destroy_pulse_top_right_distance,
        destroy_pulse_bottom_left_distance,
        destroy_pulse_bottom_right_distance,
        destroy_pulse_left_up_distance,
        destroy_pulse_left_down_distance,
        destroy_pulse_right_up_distance,
        destroy_pulse_right_down_distance
    )

    if destroy_pulse_distance > longest_distance + destroy_pulse_length then
        destroy_pulse_active = false
        destroy_pulse_distance = 0
    end
end

local function pulse_front_and_back(max_distance)
    local front = math.min(destroy_pulse_distance, max_distance)
    local back = math.max(destroy_pulse_distance - destroy_pulse_length, 0)
    back = math.min(back, max_distance)

    return front, back
end

function draw_destroy_pulse()
    if destroy_pulse_active == false then
        return end

    local longest_distance = math.max(
    destroy_pulse_top_left_distance,
    destroy_pulse_top_right_distance,
    destroy_pulse_bottom_left_distance,
    destroy_pulse_bottom_right_distance,
    destroy_pulse_left_up_distance,
    destroy_pulse_left_down_distance,
    destroy_pulse_right_up_distance,
    destroy_pulse_right_down_distance
)

    local fade_start = 0.60
    local pulse_progress =
        destroy_pulse_distance / (longest_distance + destroy_pulse_length)

    local fade = 1

    if pulse_progress > fade_start then
     fade = 1 - ((pulse_progress - fade_start) / (1 - fade_start))
    end

    fade = math.max(fade, 0)

    local top_left_front, top_left_back =
        pulse_front_and_back(destroy_pulse_top_left_distance)

    local top_right_front, top_right_back =
        pulse_front_and_back(destroy_pulse_top_right_distance)

    local bottom_left_front, bottom_left_back =
        pulse_front_and_back(destroy_pulse_bottom_left_distance)

    local bottom_right_front, bottom_right_back =
        pulse_front_and_back(destroy_pulse_bottom_right_distance)

    local left_up_front, left_up_back =
        pulse_front_and_back(destroy_pulse_left_up_distance)

    local left_down_front, left_down_back =
        pulse_front_and_back(destroy_pulse_left_down_distance)

    local right_up_front, right_up_back =
        pulse_front_and_back(destroy_pulse_right_up_distance)

    local right_down_front, right_down_back =
        pulse_front_and_back(destroy_pulse_right_down_distance)

love.graphics.setColor(
    (destroy_pulse_color[1] + 1) / 2,
    (destroy_pulse_color[2] + 1) / 2,
    (destroy_pulse_color[3] + 1) / 2,
    0.55 * fade
)

    love.graphics.setLineWidth(16)

    -- Top edge moving left and right.
    love.graphics.line(
        destroy_pulse_left - top_left_back,
        destroy_pulse_top,
        destroy_pulse_left - top_left_front,
        destroy_pulse_top
    )

    love.graphics.line(
        destroy_pulse_right + top_right_back,
        destroy_pulse_top,
        destroy_pulse_right + top_right_front,
        destroy_pulse_top
    )

    -- Bottom edge moving left and right.
    love.graphics.line(
        destroy_pulse_left - bottom_left_back,
        destroy_pulse_bottom,
        destroy_pulse_left - bottom_left_front,
        destroy_pulse_bottom
    )

    love.graphics.line(
        destroy_pulse_right + bottom_right_back,
        destroy_pulse_bottom,
        destroy_pulse_right + bottom_right_front,
        destroy_pulse_bottom
    )

    -- Left edge moving up and down.
    love.graphics.line(
        destroy_pulse_left,
        destroy_pulse_top - left_up_back,
        destroy_pulse_left,
        destroy_pulse_top - left_up_front
    )

    love.graphics.line(
        destroy_pulse_left,
        destroy_pulse_bottom + left_down_back,
        destroy_pulse_left,
        destroy_pulse_bottom + left_down_front
    )

    -- Right edge moving up and down.
    love.graphics.line(
        destroy_pulse_right,
        destroy_pulse_top - right_up_back,
        destroy_pulse_right,
        destroy_pulse_top - right_up_front
    )

    love.graphics.line(
        destroy_pulse_right,
        destroy_pulse_bottom + right_down_back,
        destroy_pulse_right,
        destroy_pulse_bottom + right_down_front
    )

    love.graphics.setColor(1, 1, 1, 0.95 * fade)
    love.graphics.setLineWidth(6)


-- Top edge moving left and right.
love.graphics.line(
    destroy_pulse_left - top_left_back,
    destroy_pulse_top,
    destroy_pulse_left - top_left_front,
    destroy_pulse_top
)

love.graphics.line(
    destroy_pulse_right + top_right_back,
    destroy_pulse_top,
    destroy_pulse_right + top_right_front,
    destroy_pulse_top
)

-- Bottom edge moving left and right.
love.graphics.line(
    destroy_pulse_left - bottom_left_back,
    destroy_pulse_bottom,
    destroy_pulse_left - bottom_left_front,
    destroy_pulse_bottom
)

love.graphics.line(
    destroy_pulse_right + bottom_right_back,
    destroy_pulse_bottom,
    destroy_pulse_right + bottom_right_front,
    destroy_pulse_bottom
)

-- Left edge moving up and down.
love.graphics.line(
    destroy_pulse_left,
    destroy_pulse_top - left_up_back,
    destroy_pulse_left,
    destroy_pulse_top - left_up_front
)

love.graphics.line(
    destroy_pulse_left,
    destroy_pulse_bottom + left_down_back,
    destroy_pulse_left,
    destroy_pulse_bottom + left_down_front
)

-- Right edge moving up and down.
love.graphics.line(
    destroy_pulse_right,
    destroy_pulse_top - right_up_back,
    destroy_pulse_right,
    destroy_pulse_top - right_up_front
)

love.graphics.line(
    destroy_pulse_right,
    destroy_pulse_bottom + right_down_back,
    destroy_pulse_right,
    destroy_pulse_bottom + right_down_front
)

love.graphics.setColor(1, 1, 1)
love.graphics.setLineWidth(1)


end
