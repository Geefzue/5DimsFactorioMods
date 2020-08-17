--Var
local item, recipe, entity, name, icon, icon_size

--Copies
item = table.deepcopy(data.raw["item"]["roboport"])
recipe = table.deepcopy(data.raw["recipe"]["roboport"])
entity = table.deepcopy(data.raw["roboport"]["roboport"])
icon = "__5dim_logistic__/graphics/icon/roboport/roboport_2.png"
icon_size = 32
name = "5d-roboport-2"

--Changes
--Item
item.name = name
item.icon = icon
item.icon_size = icon_size
item.subgroup = "logistic-roboport"
item.order = "b"
item.place_result = name

--Recipe
recipe.name = name
recipe.icon = icon
recipe.icon_size = icon_size
recipe.result = name
recipe.enabled = "false"
recipe.icon_size = 32
recipe.ingredients = {
    {"roboport", 1},
    {"steel-plate", 20},
    {"iron-gear-wheel", 20},
    {"advanced-circuit", 20}
}

--Entity
entity.name = name
entity.icon = icon
entity.icon_size = icon_size
entity.minable.result = name
entity.fast_replaceable_group = "roboport"
entity.energy_source.input_flow_limit = "10MW"
entity.energy_source.buffer_capacity = "200MJ"
entity.energy_usage = "200kW"
entity.charging_energy = "2000kW"
entity.logistics_radius = entity.logistics_radius * 1.5
entity.construction_radius = entity.construction_radius * 1.5
entity.robot_slots_count = 10
entity.material_slots_count = 10
entity.base = {
    layers = {
        {
            filename = "__5dim_logistic__/graphics/icon/roboport/roboport-base-2.png",
            width = 143,
            height = 135,
            shift = {0.5, 0.25},
            hr_version = {
                filename = "__5dim_logistic__/graphics/icon/roboport/hr-roboport-base-2.png",
                width = 228,
                height = 277,
                shift = util.by_pixel(2, 7.75),
                scale = 0.5
            }
        },
        {
            filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
            width = 147,
            height = 101,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            hr_version = {
                filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
                width = 294,
                height = 201,
                draw_as_shadow = true,
                force_hr_shadow = true,
                shift = util.by_pixel(28.5, 19.25),
                scale = 0.5
            }
        }
    }
}

data:extend({item, recipe, entity})
