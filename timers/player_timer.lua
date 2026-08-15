function update_player_timer(dt)
    player_timer = player_timer - dt
        
    if player_timer <= 0 then
        remove_score(-10)

        player_shatter_active = true

        local center_x = current_player_cell.x + cell / 2
        local center_y = current_player_cell.y + cell / 2

        local directions = {
            {vx = 0,    vy = -300, angle = 0},                  -- up
            {vx = 300,  vy = -300, angle = math.pi / 4},        -- up-right
            {vx = 300,  vy = 0,    angle = math.pi / 2},        -- right
            {vx = 300,  vy = 300,  angle = math.pi * 3 / 4},    -- down-right
            {vx = 0,    vy = 300,  angle = math.pi},            -- down
            {vx = -300, vy = 300,  angle = math.pi * 5 / 4},    -- down-left
            {vx = -300, vy = 0,    angle = math.pi * 3 / 2},    -- left
            {vx = -300, vy = -300, angle = math.pi * 7 / 4}     -- up-left
        }

        local shard_colors = {
            {1, 0, 0},       -- red
            {1, 0, 0},

            {0, 0.6, 1},     -- blue
            {0, 0.6, 1},

            {0, 1, 0},       -- green
            {0, 1, 0},

            {1, 1, 0},       -- yellow
            {1, 1, 0}
        }
        
        for i = #shard_colors, 2, -1 do
            local j = math.random(i)
            shard_colors[i], shard_colors[j] = shard_colors[j], shard_colors[i]
        end

        for i = 1, 8 do
            player_shards[i] = {
                x = center_x,
                y = center_y,
                vx = directions[i].vx,
                vy = directions[i].vy,
                life = 0.5,
                angle = directions[i].angle,
                color = shard_colors[i]
            }
        end

        destroy_player()
    end
end 

function update_player_shard(dt)
    if player_shatter_active == false then
        return
    end

   for i = 1, 8 do
        player_shards[i].x = player_shards[i].x + player_shards[i].vx * dt
        player_shards[i].y = player_shards[i].y + player_shards[i].vy * dt
        player_shards[i].life = player_shards[i].life - dt

    if player_shards[i].life <= 0 then
        player_shards[i] = nil
    end

    if player_shards[1] == nil then
        player_shatter_active = false
    end

end 
end