function enter_blink(dt)    
    if gameState == "title" then
        blinkTimer = blinkTimer + dt    
        
        if showEnter == true and blinkTimer >= 3.96 then
            showEnter = false
            blinkTimer = 0
        end 
    
        if showEnter == false and blinkTimer >= 0.04 then 
            showEnter = true
            blinkTimer = 0
        end 
        -- end of working on blinking timer 
 
        if love.keyboard.isDown("return") then 
            gameState = "play" 
        end 
    end 
end 