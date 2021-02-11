-- Make such a thing
minetest.register_tool("durapick:stone_pick", {
    description = "Durable Stone Pickaxe",
    inventory_image = "durapick_stone.png",
    tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
            -- Added ability for stone pick to mine like steel pick, just slower
			cracky = {times={[1]=5.00, [2]=1.60, [3]=0.90}, uses=durapick_durability_stone, maxlevel=1},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    type = "shaped",
    output = "durapick:stone_pick 1",
    recipe = { -- Use globals to allow customized recipes
        {durapick_resource_stone, durapick_resource_stone, durapick_resource_stone},
        {"", durapick_stick, ""},
        {"", durapick_stick, ""}
    },
})
