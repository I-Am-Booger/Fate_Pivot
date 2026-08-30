function record_high_score()
    if score >
        save_data.statistics.career.highest_score then

        save_data.statistics.career.highest_score =
            score

        save_game_data()
    end
end