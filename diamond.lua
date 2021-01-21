-- Make such a thing
minetest.register_tool("durapick:diamond_pick", {
    description = "Durable Diamond Pickaxe",
    inventory_image = "durapick_diamond.png",
    tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.9, [2]=0.9, [3]=0.40}, uses=durapick_durability_diamond, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    type = "shaped",
    output = "durapick:diamond_pick 1",
    recipe = {
        {durapick_resource_diamond, durapick_resource_diamond, durapick_resource_diamond},
        {"", durapick_stick, ""},
        {"", durapick_stick, ""}
    },
})
