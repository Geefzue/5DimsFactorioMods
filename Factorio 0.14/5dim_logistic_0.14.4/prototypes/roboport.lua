data:extend({
-- Item
  {
    type = "item",
    name = "5d-roboport-2",
    icon = "__5dim_logistic__/graphics/icon/icon-5d-roboport_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-roboport",
    order = "b",
    place_result = "5d-roboport-2",
    stack_size = 10
  },

--Recipe
  {
    type = "recipe",
    name = "5d-roboport-2",
    enabled = "false",
    ingredients =
    {
      {"roboport", 1},
      {"processing-unit", 20},
    },
    result = "5d-roboport-2",
    energy_required = 15
  },

--Entity
  {
    type = "roboport",
    name = "5d-roboport-2",
    icon = "__5dim_logistic__/graphics/icon/icon-5d-roboport_.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-roboport-2"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "roboport",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "8MW",
      buffer_capacity = "96MJ"
    },
    recharge_minimum = "40MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "4000kW",
    logistics_radius = 50,
    construction_radius = 100,
    charge_approach_distance = 5,
    robot_slots_count = 14,
    material_slots_count = 14,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
    base =
    {
      filename = "__5dim_logistic__/graphics/icon/icon_5d_roboport-base_2.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25}
    },
    base_patch =
    {
      filename = "__5dim_logistic__/graphics/icon/icon_5d_roboport-base-patch_2.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125}
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375}
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625}
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375}
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
    },
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {1.17188, 1.98438},
        green = {1.04688, 2.04688}
      },
      wire =
      {
        red = {0.78125, 1.375},
        green = {0.78125, 1.53125}
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
    circuit_wire_max_distance = 7.5,
    default_available_logistic_output_signal = "signal-X",
    default_total_logistic_output_signal = "signal-Y",
    default_available_construction_output_signal = "signal-Z",
    default_total_construction_output_signal = "signal-T",
  },
})