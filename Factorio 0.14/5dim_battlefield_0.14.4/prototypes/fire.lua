require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")

data:extend(
{
  {
    type = "unit-spawner",
    name = "fire-spitter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 500,
    order="b-b-h",
    subgroup="enemies",
    working_sound = {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    corpse = "spitter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    max_count_of_owned_units = 7,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, firespittertint),
      spawner_idle_animation(1, firespittertint),
      spawner_idle_animation(2, firespittertint),
      spawner_idle_animation(3, firespittertint)
    },

    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.35, 0}}}
                     res[2] = {"5d-small-spiter-fire", {{0.3, 0.0}, {0.7, 0.3}, {0.9, 0.1}}}
                     res[3] = {"5d-medium-spiter-fire", {{0.5, 0.0}, {1.0, 0.4}}}
                     res[4] = {"5d-big-spiter-fire", {{0.7, 0.0}, {1.0, 0.3}}}
                     res[5] = {"5d-behemoth-spiter-fire", {{0.9, 0.0}, {1.0, 0.3}}}
                     return res
                   end)(),
    -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 2.5 seconds
    spawning_cooldown = {360, 150},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_spawner_autoplace(0),
    call_for_help_radius = 50
  },
--Small
  {
    type = "unit",
    name = "5d-small-spiter-fire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthsmallspitter,
    order = "b-b-a",
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
    attack_parameters = flamersmall(
	{
		type = "projectile",
		range=firerange,
        cooldown=1,
        damage_modifier=firesmalldmg,
        scale=smallspitterscale,
        tint=firespittertint,
		roarvolume=0.7
	}),
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    corpse = "5d-small-spiter-fire-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(smallspitterscale, firespittertint)
  },
  {
    type = "corpse",
    name = "5d-small-spiter-fire-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[small]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(smallspitterscale, firespittertint)
  },
--Medium
  {
    type = "unit",
    name = "5d-medium-spiter-fire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthmediumspitter,
    order = "b-b-a",
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    attack_parameters = flamermedium(
	{
		type = "projectile",
		range=firerange,
        cooldown=1,
        damage_modifier=firemediumdmg,
        scale=mediumspitterscale,
        tint=firespittertint,
		roarvolume=0.7
	}),
    vision_distance = 30,
    movement_speed = 0.185,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1000,
    corpse = "5d-medium-spiter-fire-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(mediumspitterscale, firespittertint)
  },
  {
    type = "corpse",
    name = "5d-medium-spiter-fire-corpse",
    icon = "__base__/graphics/icons/medium-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[medium]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(mediumspitterscale, firespittertint)
  },
--Big
  {
    type = "unit",
    name = "5d-big-spiter-fire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthbigspitter,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        percent = 10
      }
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.02,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters = flamerbig(
	{
		type = "projectile",
		range=firerange,
        cooldown=1,
        damage_modifier=firebigdmg,
        scale=bigspitterscale,
        tint=firespittertint,
		roarvolume=0.7
	}),
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-big-spiter-fire-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(bigspitterscale, firespittertint)
  },
  {
    type = "corpse",
    name = "5d-big-spiter-fire-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bigspitterscale, firespittertint)
  },
--Behemoth
  {
    type = "unit",
    name = "5d-behemoth-spiter-fire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthbehemothspitter,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        percent = 10
      }
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.02,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters = flamerbehemoth(
  {
    type = "projectile",
        range=firerange,
        cooldown=1,
        damage_modifier=firebehemothdmg,
        scale=behemothspitterscale,
        tint=firespittertint,
        roarvolume=0.7
  }),
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-behemoth-spiter-fire-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(behemothspitterscale, firespittertint)
  },
  {
    type = "corpse",
    name = "5d-behemoth-spiter-fire-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(behemothspitterscale, firespittertint)
  },
})
