data:extend({
  {
    type = "technology",
    name = "battery-mk2-equipment-2",
    icon = "__base__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-mk2-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-battery-mk3-equipment"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-i-b"
  },
  {
    type = "technology",
    name = "battery-mk2-equipment-3",
    icon = "__base__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-mk2-equipment-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-battery-mk4-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-i-b"
  },
  {
    type = "technology",
    name = "energy-shield-mk2-equipment-2",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-mk2-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-energy-shield-mk3-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-e-b"
  },
  {
    type = "technology",
    name = "energy-shield-mk2-equipment-3",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-mk2-equipment-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-energy-shield-mk4-equipment"
      }
    },
    unit =
    {
      count = 700,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 2}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-e-b"
  },
  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icon = "__base__/graphics/technology/solar-panel-equipment.png",
    prerequisites = {"solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-solar-panel-mk2-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "fusion-reactor-equipment-2",
    icon = "__base__/graphics/technology/fusion-reactor-equipment.png",
    prerequisites = {"fusion-reactor-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-fusion-reactor-mk2-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-l"
  },
  {
    type = "technology",
    name = "exoskeleton-equipment-2",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    prerequisites = {"exoskeleton-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-exoskeleton-mk2-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "exoskeleton-equipment-3",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    prerequisites = {"exoskeleton-equipment-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-exoskeleton-mk3-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-h"
  },
  {
    type = "technology",
    name = "personal-roboport-equipment-2",
    icon = "__base__/graphics/technology/personal-roboport-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-personal-roboport-mk2-equipment"
      },
    },
    prerequisites = { "personal-roboport-equipment"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-d-zz",
  },

})
if battlefield == true then
  data:extend({
  {
    type = "technology",
    name = "personal-laser-defense-equipment",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    prerequisites = {"armor-making-3", "laser-turrets"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-personal-yellow-laser-defense-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-m"
  },
  {
    type = "technology",
    name = "personal-laser-defense-equipment-2",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    prerequisites = {"personal-laser-defense-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment"
      }
    },
    unit =
    {
      count = 300,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "g-m"
  },
  {
    type = "technology",
    name = "personal-laser-defense-equipment-3",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    prerequisites = {"personal-laser-defense-equipment-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-personal-blue-laser-defense-equipment"
      }
    },
    unit =
    {
      count = 500,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}, {"alien-science-pack", 1}},
      time = 30
    },
    order = "g-m"
  },
})
end