function load_how_to_play_text()

    if current_language == "es" then
        how_to_play_text_1 = love.filesystem.read("localization/how_to_play/spanish_1.txt")
        how_to_play_text_2 = love.filesystem.read("localization/how_to_play/spanish_2.txt")
        how_to_play_text_3 = love.filesystem.read("localization/how_to_play/spanish_3.txt")
    else
        how_to_play_text_1 = love.filesystem.read("localization/how_to_play/english_1.txt")
        how_to_play_text_2 = love.filesystem.read("localization/how_to_play/english_2.txt")
        how_to_play_text_3 = love.filesystem.read("localization/how_to_play/english_3.txt")
    end
end