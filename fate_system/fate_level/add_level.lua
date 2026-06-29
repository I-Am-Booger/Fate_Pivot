require("fate_system/fate_level/clear_blocks_for_fate_level")
require("fate_system/fate_level/apply_level_settings")

function add_level()
    clear_blocks_for_fate_level()
    level = level + 1
    apply_level_settings()

end




