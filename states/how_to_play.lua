local close = 50
local far   = 370

page_number = 1

function fate_and_pivot_header()
    
    love.graphics.setFont(big_font)                                            
    love.graphics.setColor(1, 1, 1, 1)
    
    love.graphics.print("Fate & Pivot", close,  100 )

    love.graphics.setFont(font)
    love.graphics.setColor(1,1,1,1)
    love.graphics.print("< D-Pad   Previous " .. page_number .. "/3 Next   D-Pad >", far,  120 )    
end 

function fate_and_pivot_help(instructions)   

    love.graphics.setFont(font)
    love.graphics.setColor(1, 1, 1, 1)
    
    love.graphics.printf(instructions, close, 165, 1500, "left")
end 


function how_to_play()
    fate_and_pivot_header()

    if page_number == 1 then fate_and_pivot_help(how_to_play_text_1)
        elseif page_number == 2 then fate_and_pivot_help(how_to_play_text_2)
        elseif page_number == 3 then fate_and_pivot_help(how_to_play_text_3)
    end
end 
