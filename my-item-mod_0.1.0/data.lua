--data:extend({
--{
--   type = "item",
--   name = "my-first-item",
--   icon = "__my-item-mod__/graphics/icons/my-first-item.png",
--   subgroup = "raw-material",
--   order = "a[my-first-item]",
--   stack_size = 50
--}
--})

data:extend({ 
{ 
    type = "furnace", 
    name = "my-custom-furnace", 
    icon = "__MyFirstMod__/graphics/icons/my-custom-furnace.png", 
    flags = {"placeable-neutral", "player-creation"}, 
    minable = {hardness = 0.2, mining_time = 0.5, result = "my-custom-furnace"}, 
    max_health = 150, 
    corpse = "small-remnants", 
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}}, 
    selection_box = {{-0.7, -0.7}, {0.7, 0.7}}, 
    crafting_categories = {"smelting"}, 
    result_inventory_size = 1, 
    energy_usage = "180kW", 
    crafting_speed = 2, 
    source_inventory_size = 1, 
    energy_source = 
    { 
    type = "electric", 
    usage_priority = "secondary-input", 
    emissions = 0.01 / 3.5 
    }, 
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65}, 
    working_sound = 
    { 
    sound = {filename = "__base__/sound/furnace.ogg"}, 
    idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6}, 
    apparent_volume = 1.5 
    }, 
    animation = 
    { 
    filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png", 
    priority = "high", 
    width = 81, 
    height = 74, 
    frame_count = 1, 
    shift = {0.4375, -0.046875}, 
    hr_version = { 
    filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png", 
    priority = "high", 
    width = 159, 
    height = 144, 
    frame_count = 1, 
    shift = {0.421875, -0.0390625}, 
    scale = 0.5 
    } 
    } 
} 
}) 