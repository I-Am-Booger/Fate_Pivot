function death()
    death_fate_spawn_count = 0
    death_number = 12 - death_fate_spawn_count

    death_fate_cell = current_fate_cell

    death_fate_cell.owner = "death"
    death_fate_cell.color = "death"
    death_fate_cell.button = nil
    death_fate_cell.occupied = true

    death_fate_active = true
    death_fate_timer = 12
    death_fate_tick = 1
end



function update_death_fate(dt)
    if death_fate_active == false then return end 

    death_fate_timer = death_fate_timer - dt
    death_fate_tick  = death_fate_tick  - dt

    if death_fate_tick <= 0 then 
        print("DEATH TICK")
        spawn_bad_block()

        death_fate_spawn_count = death_fate_spawn_count + 1
        death_number = 12 - death_fate_spawn_count
        death_fate_tick = 1
    end 

    if death_fate_spawn_count >= 12 then 
        death_fate_timer = 0

        death_fate_cell.occupied = false
        death_fate_cell.owner = nil
        death_fate_cell.color = nil
        death_fate_cell.button = nil

        death_fate_cell = nil
        death_fate_active = false

    end 
end 