-- these are global variables 
borderX = 460
borderY = 100
cell    = 100
currentPlayerCell = nil
selectedCell = nil
inputDevice = "keyboard"


--[[
        game state possible values
        1. "title"
        2. "options"
        3. "onePlayer"
        4. "twoPlayer"
        5. "play"
        6. "pause"
        7. "gameOver"
]] 



comboState = "nonActive"
gameState = "title"


score = 0
game_over_score = -50


-- Timers 
bad_timer = 3
base_bad_timer_max = 3
bad_timer_max = 3 

player_timer = 4
base_player_timer = 4
player_timer_max = 4

fate_timer = 5 

freeze_time_active = false
freeze_time_timer = 0

----
level = 1 
block_destroyed = 0
block_to_next_level = 10   

last_destroyed_color = nil
combo_count = 0

showEnter = true

currentFateCell = nil