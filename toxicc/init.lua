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

minetest.register_node("toxicc:waste", {
	description = "Toxic waste",
	tiles = {"waste.png"},
	groups = {oddly_breakable_by_hand = 1},
})

minetest.register_craft({
	output = "toxicc:waste 64",
	recipe = {
		{"", "", ""},
		{"toxicc:rancid", "toxicc:rancid", ""},
		{"", "toxicc:diamond", "toxicc:diamond"},
	}
})

minetest.register_craft({
	output = "default:diamond 99",
	recipe = {
		{"toxicc:diamond"},
		{"toxicc:diamond"},
		{"default:dirt"},
	}
})

minetest.register_node("toxicc:wool", {
	description = "Easy wool",
	tiles = {"woolmaker.png"},
	groups = {oddly_breakable_by_hand = 2},
})

minetest.register_craft({
	output = "toxicc:wool",
	recipe = {{"toxicc:rancid", "toxicc:dirt", "toxicc:rancid"}},
})

