require("scalecolor")
data:extend({
  {
    type = "turret",
    name = "experimental-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 15000,
    order="b-b-f",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30,
      },
      {
        type = "fire",
        decrease = 3,
        percent = 70,
      }

    },
    healing_per_tick = 0.02,
    collision_box = {{-3, -2.8}, {3, 2.8}},
    selection_box = {{-3, -2.8}, {3, 2.8}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "experimental-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    inventory_size = 2,
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(experimental_worm_scale, experimental_worm_tint),
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(experimental_worm_scale, experimental_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(experimental_worm_scale, experimental_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(experimental_worm_scale, experimental_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(experimental_worm_scale, experimental_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(experimental_worm_scale, experimental_worm_tint, "backward"),
    prepare_range = 45,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 60,
      range = 40,
      projectile_creation_distance = 2.1,
      damage_modifier = 10,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "acid-projectile-purple",
            starting_speed = 0.5,
            max_range = 50
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(10),
    call_for_help_radius = 40
  },
  {
    type = "corpse",
    name = "experimental-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = worm_die_animation(experimental_worm_scale, experimental_worm_tint)
  },
})