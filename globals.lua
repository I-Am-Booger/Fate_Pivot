-- globals.lua

-- FONTS

font = love.graphics.newFont(24)
mid_font = love.graphics.newFont(36)
big_font = love.graphics.newFont(48)


-- SCREEN AND GRID

borderX = 460
borderY = 100
cell = 100


-- GAME STATE

game_state = "splash_screen"

-- Possible states:
-- "splash_screen"
-- "title"
-- "mode_select"
-- "options"
-- "how_to_play"
-- "play"
-- "pause"
-- "game_over"

input_device = "keyboard"

title_selection = 1
options_selection = 1


-- PLAYER AND SELECTOR

current_player_cell = nil
selected_cell = nil

player_pulse = 0


-- SCORE AND PROGRESSION

score = 0
game_over_score = -50

level = 1
blocks_destroyed = 0
block_to_next_level = 10


-- COMBOS

combo_state = "nonActive"
combo_made = 0

last_destroyed_color = nil
combo_count = 0


-- FATE SYSTEM

current_fate_cell = nil
fate_timer = 5


-- SPLASH AND TITLE SCREEN

splash_timer = 3
splash_duration = 3

blink_timer = 0
show_enter = true


-- BAD BLOCK TIMER

base_bad_timer_max = 3
bad_timer_max = base_bad_timer_max
bad_timer = bad_timer_max


-- PLAYER TIMER

base_player_timer = 4
player_timer_max = base_player_timer
player_timer = player_timer_max

-- FREEZE TIME

freeze_time_active = false
freeze_time_timer = 0


-- GAME INFORMATION

game_version = "0.1.1"