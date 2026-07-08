-- these are global variables 
-- Fonts for the game 
font = love.graphics.newFont(24)
mid_font = love.graphics.newFont(36)
big_font = love.graphics.newFont(48)


borderX = 460
borderY = 100
cell    = 100

current_player_cell = nil
selected_cell = nil

input_device = "keyboard"





--[[
        game state possible values
        1. "title"
        2. "options"
        3. "one_player"
        4. "two_player"
        5. "play"
        6. "pause"
        7. "game_over"
]] 


combo_state = "nonActive"
game_state = "splash_screen" --title was original
title_selection = 1

score = 0
game_over_score = -50
combo_made = 0

-- Timers 
splash_timer = 3
splash_duration = 3

blink_timer = 0 -- for the title screen starting button
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

show_enter = true

current_fate_cell = nil


-- Working on this 
player_pulse = 0 

game_version = "0.1.1"
