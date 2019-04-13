require ("prototypes.turret-function")
local color = {r=0, g=1, b=1, a=1}
data:extend({
--Laser
{
  type = "projectile",
  name = "laser-cyan",
  flags = {"not-on-map"},
  acceleration = 0.005,
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-entity",
          entity_name = "laser-bubble"
        },
        {
          type = "damage",
          damage = { amount = 5, type = "laser"}
        }
      }
    }
  },
  light = {intensity = 0.5, size = 10},
  animation =
  {
    filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
    tint = {r=0, g=1.0, b=1.0},
    frame_count = 1,
    width = 12,
    height = 33,
    priority = "high",
    blend_mode = "additive"
  },
  speed = 0.15
},
--Item
{
  type = "item",
  name = "5d-tesla-turret",
  icon = "__5dim_battlefield__/graphics/icon/tesla_turret.png",
  -- flags = {"goes-to-quickbar"},
  icon_size = 32,
  subgroup = "defense-laser",
  order = "d",
  place_result = "5d-tesla-turret",
  stack_size = 50
},
--Recipe
{
  type = "recipe",
  name = "5d-tesla-turret",
  enabled = false,
  energy_required = 20,
  ingredients =
  {
    {"processing-unit", 2},
    {"steel-plate", 25},
    {"electronic-circuit", 25},
    {"battery", 18}
  },
  result = "5d-tesla-turret"
},

--Entity
{
  type = "electric-turret",
  name = "5d-tesla-turret",
  icon = "__5dim_battlefield__/graphics/icon/tesla_turret.png",
  flags = { "placeable-player", "placeable-enemy", "player-creation"},
  minable = { mining_time = 0.5, result = "5d-tesla-turret" },
  icon_size = 32,
  max_health = 750,
  corpse = "medium-remnants",
  fast_replaceable_group = "turret",
  collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
  selection_box = {{ -1, -1}, {1, 1}},
  rotation_speed = 0.01,
  preparing_speed = 0.05,
  dying_explosion = "medium-explosion",
  folding_speed = 0.05,
  call_for_help_radius = 40,
  energy_source =
  {
    type = "electric",
    buffer_capacity = "6200kJ",
    input_flow_limit = "19200kW",
    drain = "64kW",
    usage_priority = "primary-input"
  },
  folded_animation =
  {
    layers =
    {
      laser_turret_extension{frame_count=1, line_length = 1},
      laser_turret_extension_shadow{frame_count=1, line_length=1},
      laser_turret_extension_mask{frame_count=1, line_length=1, tint = color}
    }
  },
  preparing_animation =
  {
    layers =
    {
      laser_turret_extension{},
      laser_turret_extension_shadow{},
      laser_turret_extension_mask{tint = color}
    }
  },
  prepared_animation =
  {
    layers =
    {
      laser_turret_shooting(),
      laser_turret_shooting_shadow(),
      laser_turret_shooting_mask{tint = color}
    }
  },
  folding_animation = 
  {
    layers =
    {
      laser_turret_extension{run_mode = "backward"},
      laser_turret_extension_shadow{run_mode = "backward"},
      laser_turret_extension_mask{run_mode = "backward", tint = color}
    }
  },
  base_picture = laser_turret_base{tint = color},
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  attack_parameters =
  {
    type = "projectile",
    ammo_category = "laser-turret",
    cooldown = 300,
    projectile_center = {0, -0.2},
    projectile_creation_distance = 1.4,
    range = 75,
    damage_modifier = 1101,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "3200kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-cyan",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    sound = make_laser_sounds()
  }
},
})
