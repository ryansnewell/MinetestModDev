minetest.register_node("testmod:copper", {
	description = "Copper Ore",
	tiles = {"default_stone.png^ores_copper.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = "testmod:coppernugget",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "testmod:copperore",
	wherein = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 9,
	clust_size = 7,
	height_min = -1024,
	height_max = 0,
})

minetest.register_craftitem("testmod:coppernugget", {
	description = "Copper Ore",
	inventory_image = "ores_coppernugget.png"
})




minetest.register_node("testmod:silicone", {
	description = "Silicon Ore",
	tiles = {"ores_silicone.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = "testmod:silicone",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "testmod:siliconeore",
	wherein = "default:desert_stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 9,
	clust_size = 7,
	height_min = -1024,
	height_max = 0,
})

minetest.register_craftitem("testmod:silicone", {
	description = "Silicone",
	inventory_image = "ores_siliconedust.png",
})