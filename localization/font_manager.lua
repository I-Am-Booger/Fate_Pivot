function set_language_font(size)

    if current_language == "ja" then
        if size == "big" then
            love.graphics.setFont(jp_big_font)
        elseif size == "mid" then
            love.graphics.setFont(jp_mid_font)
        else
            love.graphics.setFont(jp_font)
        end

    elseif current_language == "ko" then
        if size == "big" then
            love.graphics.setFont(kr_big_font)
        elseif size == "mid" then
            love.graphics.setFont(kr_mid_font)
        else
            love.graphics.setFont(kr_font)
        end

    elseif current_language == "zh" then
        if size == "big" then
            love.graphics.setFont(zh_big_font)
        elseif size == "mid" then
            love.graphics.setFont(zh_mid_font)
        else
            love.graphics.setFont(zh_font)
        end

    else
        if size == "big" then
            love.graphics.setFont(big_font)
        elseif size == "mid" then
            love.graphics.setFont(mid_font)
        else
            love.graphics.setFont(font)
        end
    end
end