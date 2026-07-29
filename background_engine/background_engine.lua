require("background_engine/background_engine_support/floors")
require("background_engine/background_engine_support/moons")
require("background_engine/background_engine_support/stars")

function background_engine_load()
    create_stars()
    load_moon()
    load_floor()
end 

function background_engine()
    draw_stars()
    draw_moon()
    draw_floor()

end 