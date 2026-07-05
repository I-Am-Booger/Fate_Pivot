function set_display()
    love.window.setMode(1920, 1080)
    love.window.setTitle("Fate & Pivot")
end

function enter_blink(dt)    
    if game_state == "title" then
        blink_timer = blink_timer + dt    
        
        if show_enter == true and blink_timer >= 3.96 then
            show_enter = false
            blink_timer = 0
        end 
    
        if show_enter == false and blink_timer >= 0.04 then 
            show_enter = true
            blink_timer = 0
        end 
        -- end of working on blinking timer 
    end 
end 