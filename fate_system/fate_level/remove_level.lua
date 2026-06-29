require("fate_system/fate_level/clear_blocks_for_fate_level")
require("fate_system/fate_level/apply_level_settings")

function remove_level()
    clear_blocks_for_fate_level()
    level = math.max(1, level - 1)
    apply_level_settings()

end