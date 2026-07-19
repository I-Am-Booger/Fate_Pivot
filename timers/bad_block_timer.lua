function update_bad_block_timer(dt)
    bad_timer = bad_timer - dt

    if bad_timer  <= 0 then 
        spawn_bad_block()

        bad_timer = bad_timer_max
    end 
end 