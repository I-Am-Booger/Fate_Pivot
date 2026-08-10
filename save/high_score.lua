function record_high_score()
    if score > high_score then
        high_score = score    
    end
    save_data.statistics.career.highest_score = high_score
    save_game_data()
end 