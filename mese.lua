-- Make such a thing
minetest.register_tool("durapick:mese_pick", {
    description = "Durable Mese Pickaxe",
    inventory_image = "durapick_mese.png",
    tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=durapick_durability_mese, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    type = "shaped",
    output = "durapick:mese_pick 1",
    recipe = {
        {durapick_resource_mese, durapick_resource_mese, durapick_resource_mese},
        {"", durapick_stick, ""},
        {"", durapick_stick, ""}
    },
})
