--Donut for the players eat.

minetest.register_craftitem("willnodes:donut", {
	description = "Donut",
	inventory_image = "rosquinha.png",
	on_use = minetest.item_eat(1),
	stack_max = 20,
})
minetest.register_craft({
	type = "cooking",
	cooktime = 8,
	output = "willnodes:rosquinha",
	recipe = "willnodes:punhado_farinha"
})

--Wheat Flour for the players make the Donut.

minetest.register_craftitem("willnodes:wheat_maybe", {
	description = "Handful of Wheat Flour",
	inventory_image = "farinha.png",
})

minetest.register_craft({
	type = "shapeless",
	output = "willnodes:wheat_maybe",
	recipe = {"farming:wheat", "farming:wheat"}
})

minetest.register_node("willnodes:light", {
	description = "Simple Lamp",
	tiles = {"luminaria.png"},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 15,
	is_ground_content = false,
	groups = {choppy=2,dig_immediate=1,flammable=1,oddly_breakable_by_hand=2},
	sounds = default.node_sound_stone_defaults(),
})