minetest.register_node("toxicc:rancid", {
	description = "A nasty node",
	tiles = {"rancid.png"},
	groups = {oddly_breakable_by_hand = 2},
})

minetest.register_craft({
	output = "toxicc:rancid",
	recipe = {{"default:dirt", "default:dirt"}},
})

minetest.register_node("toxicc:diamond", {
	description = "Hard cheating",
	tiles = {"canceraids.png"},
	groups = {oddly_breakable_by_hand = 3},
})

minetest.register_craft({
	output = "toxicc:diamond",
	recipe = {{"toxicc:rancid", "toxicc:rancid"}},
})

minetest.register_craft({
	output = "default:diamond 99",
	recipe = {
		{"toxicc:rancid"},
		{"toxicc:rancid"},
		{"default:dirt"},
	}
})
