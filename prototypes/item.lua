data:extend({
    {
        type = "container",
        name = "small-wooden-chest",
        icon = "__small-wooden-chest__/graphics/icon.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "small-wooden-chest"},
        max_health = 50,
        corpse = "small-remnants",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        fast_replaceable_group = "container",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        inventory_size = 6,
        open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
        close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        picture =
        {
          filename = "__small-wooden-chest__/graphics/entity.png",
          priority = "extra-high",
          width = 46,
          height = 33,
          shift = {0.25, 0.015625}
        },
    },
    {
        type = "item",
        name = "small-wooden-chest",
        icon = "__small-wooden-chest__/graphics/icon.png",
        icon_size = 32,
        flags = {},
        fuel_category = "chemical",
        fuel_value = "2MJ",
        subgroup = "storage",
        order = "a[items]-a[small-wooden-chest]",
        place_result = "small-wooden-chest",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "small-wooden-chest",
        ingredients = {{"wood", 2}},
        result = "small-wooden-chest",
        energy_required = 0.25
    }
})