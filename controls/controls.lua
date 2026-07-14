require("controls/controller_type")
require("controls/handle_destroy")
require("controls/button_click")

require("controls/handle_title_selection")
require("controls/handle_option_selection")

require("controls/controller")
require("controls/keyboard")

function move_selector(move)
    if game_state ~= "play" then return end 
    if current_player_cell == nil then return end 

    local targetX = current_player_cell.x
    local targetY = current_player_cell.y

    if move == "up" then targetY = current_player_cell.y - cell end 
    if move == "down" then targetY = current_player_cell.y + cell end 
    if move == "left" then targetX = current_player_cell.x - cell end 
    if move == "right" then targetX = current_player_cell.x + cell end 

    for i, cell_data in ipairs(grid_table) do
        if cell_data.x == targetX and cell_data.y == targetY then
            selected_cell = cell_data
            return             
        end 
    end     
end 



