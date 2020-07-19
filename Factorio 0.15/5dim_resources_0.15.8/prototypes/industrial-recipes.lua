data:extend({
--Recipe
	{
		type = "recipe",
		name = "5d-iron-plate-industrial-dust",
		icon = "__base__/graphics/icons/iron-plate.png",
		subgroup = "plates-industrial-dust",
		order = "aa",
		category = "industrial-furnace",
		energy_required = 65,
		ingredients =
		{
			{ "5d-iron-dust", 85},
		},
		result = "iron-plate",
		result_count = 100,
	},
	{
		type = "recipe",
		name = "5d-iron-plate-industrial",
		icon = "__base__/graphics/icons/iron-plate.png",
		subgroup = "plates-industrial-ore",
		order = "aa",
		category = "industrial-furnace",
		energy_required = 65,
		ingredients =
		{
			{ "iron-ore", 85},
		},
		result = "iron-plate",
		result_count = 100,
	},
	{
		type = "recipe",
		name = "5d-copper-plate-industrial-dust",
		icon = "__base__/graphics/icons/copper-plate.png",
		subgroup = "plates-industrial-ore",
		order = "ab",
		category = "industrial-furnace",
		energy_required = 65,
		ingredients =
		{
			{ "copper-ore", 85},
		},
		result = "copper-plate",
		result_count = 100,
	},
	{
		type = "recipe",
		name = "5d-copper-plate-industrial",
		icon = "__base__/graphics/icons/copper-plate.png",
		subgroup = "plates-industrial-dust",
		order = "ab",
		category = "industrial-furnace",
		energy_required = 65,
		ingredients =
		{
			{ "5d-copper-dust", 85},
		},
		result = "copper-plate",
		result_count = 100,
	},
	{
		type = "recipe",
		name = "5d-steel-plate-industrial",
		icon = "__base__/graphics/icons/steel-plate.png",
		subgroup = "plates-industrial-ore",
		order = "zz",
		category = "industrial-furnace",
		energy_required = 250,
		ingredients =
		{
			{ "iron-plate", 80},
		},
		result = "steel-plate",
		result_count = 20,
	},
})