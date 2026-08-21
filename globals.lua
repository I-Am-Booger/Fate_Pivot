-- globals.lua


-----------------------------------------
-- SCREEN AND GRID AND Hud
------------------------------------------
close = 50
borderX = 525 -- old 460 
borderY = 115 -- old 100
cell = 100
full_screen = "No"
hud_x_position =  1070          --old 1350

---------------------------------------------
-- Display And Resolution
---------------------------------------------

design_width = 1920
design_height = 1080

screen_width = design_width
screen_height = design_height

game_scale = 1

game_offset_x = 0
game_offset_y = 0

----------------------------------------
-- FONTS
---------------------------------------

font = love.graphics.newFont(24)
mid_font = love.graphics.newFont(36)
big_font = love.graphics.newFont(48)

--------------------------------------------
-- GAME STATE
--------------------------------------------

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


---------------------------------------------
-- PLAYER AND SELECTOR
---------------------------------------------

current_player_cell = nil
selected_cell = nil


player_pulse = 0

destroy_pulse_active = false
destroy_pulse_left = 0
destroy_pulse_right = 0
destroy_pulse_top = 0
destroy_pulse_bottom = 0
destroy_pulse_distance = 0
destroy_pulse_speed = 950 -- old 900

destroy_pulse_length = 65 -- old 35

destroy_pulse_top_left_distance = 0
destroy_pulse_top_right_distance = 0

destroy_pulse_bottom_left_distance = 0
destroy_pulse_bottom_right_distance = 0

destroy_pulse_left_up_distance = 0
destroy_pulse_left_down_distance = 0

destroy_pulse_right_up_distance = 0
destroy_pulse_right_down_distance = 0

destroy_pulse_color = {1, 1, 1}

-----------------------------------------------
-- SCORE AND PROGRESSION
------------------------------------------------

high_score = 0
score = 0
highest_multiplier = 1

game_over_score = -50

level = 1
highest_level = 0
blocks_destroyed = 0
blocks_to_next_level = 7

penalty = 0
------------------------------------------------
-- COMBOS
-----------------------------------------------

combo_state = "nonActive"
combo_made = 0

last_destroyed_color = nil
combo_count = 0


------------------------------------------
-- FATE SYSTEM
------------------------------------------

current_fate_cell = nil
fate_timer = 5


---------------------------------------
-- SPLASH AND TITLE SCREEN
---------------------------------------

splash_timer = 3
splash_duration = 3

blink_timer = 0
show_enter = true


-------------------------------------------------
-- BAD BLOCK TIMER
-------------------------------------------------

base_bad_timer_max = 3
bad_timer_max = base_bad_timer_max
bad_timer = bad_timer_max


---------------------------------------------------
-- PLAYER TIMER
---------------------------------------------------

base_player_timer = 4
player_timer_max = base_player_timer
player_timer = player_timer_max


player_shatter_active = false
player_shards = {}

-------------------------------------------------
--L1 TIMER
-------------------------------------------------

l1_bonus_timer = 0
l1_bonus_multiplier = 1


--------------------------------------------------
-- BAD BUTTON PRESSED TIMER STUFF
--------------------------------------------------

wrong_button_pressed = false
wrong_button_timer = 0

------------------------------------------------
-- TIME PLAYED 
------------------------------------------------

run_timer = 0 
time_p = 0 -- for time Played but I used the name for a function 








------------------------------------------------
-- FATES 

-----------------------------------------------
-- DEATH
-----------------------------------------------
death_fate_active = false
death_fate_timer = 0
death_fate_tick = 0
death_fate_cell = nil

-----------------------------------------------
--- JUSTICE
-----------------------------------------------
justice_fate_active = false
justice_fate_timer  = 0
justice_resolving = false
justice_resolve_timer = 0






------------------------------------------------
-- FREEZE TIME
-----------------------------------------------

freeze_time_active = false
freeze_time_timer = 0

------------------------------------------------
-- Audio
------------------------------------------------

music_volume = 1.0 
sound_volume = 1.0

------------------------------------------------
-- GAME INFORMATION
-----------------------------------------------
game_version = "0.5.2"