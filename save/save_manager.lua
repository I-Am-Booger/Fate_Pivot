local save_file_name = "save_data.lua"


local function serialize(value, indent)
    indent = indent or 0

    local value_type = type(value)

    if value_type == "number" then
        return tostring(value)

    elseif value_type == "boolean" then
        return tostring(value)

    elseif value_type == "string" then
        return string.format("%q", value)

    elseif value_type == "table" then
        local text = "{\n"
        local next_indent = indent + 4

        for key, table_value in pairs(value) do
            local formatted_key

            if type(key) == "string" then
                formatted_key = "[" .. string.format("%q", key) .. "]"
            else
                formatted_key = "[" .. tostring(key) .. "]"
            end

            text =
                text
                .. string.rep(" ", next_indent)
                .. formatted_key
                .. " = "
                .. serialize(table_value, next_indent)
                .. ",\n"
        end

        text = text .. string.rep(" ", indent) .. "}"

        return text
    end

    return "nil"
end


local function apply_saved_values(default_table, loaded_table)
    for key, loaded_value in pairs(loaded_table) do
        if type(loaded_value) == "table"
        and type(default_table[key]) == "table" then

            apply_saved_values(default_table[key], loaded_value)

        else
            default_table[key] = loaded_value
        end
    end
end


function save_game_data()
    local file_contents =
        "return " .. serialize(save_data)

    local success, error_message =
        love.filesystem.write(save_file_name, file_contents)

    if not success then
        print("Could not save game data: " .. tostring(error_message))
    end
end


function load_game_data()
    if not love.filesystem.getInfo(save_file_name) then
        save_game_data()
        return
    end

    local loaded_chunk, error_message =
        love.filesystem.load(save_file_name)

    if not loaded_chunk then
        print("Could not load save file: " .. tostring(error_message))
        return
    end

    local success, loaded_data =
        pcall(loaded_chunk)

    if not success or type(loaded_data) ~= "table" then
        print("Save file contains invalid data.")
        return
    end

    apply_saved_values(save_data, loaded_data)
end