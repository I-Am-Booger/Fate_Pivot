
function time_played(dt)
    run_timer = run_timer + dt
    
    save_data.statistics.career.total_time_played =       
        save_data.statistics.career.total_time_played + dt
end 

function longest_survival()
    
    if run_timer > save_data.statistics.gameplay.longest_survival then
        save_data.statistics.gameplay.longest_survival = run_timer
    end 
    
end 

function time(dt)
    time_played(dt)
    longest_survival()
end 