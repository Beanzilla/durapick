-- Make such a thing
minetest.register_tool("durapick:wood_pick", {
    description = "Durable Wooden Pickaxe",
    inventory_image = "durapick_wood.png",
    tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
            -- Changed it so the wood pick has the ability to mine like a steel pick, just slower
			cracky = {times={[3]=1.60}, uses=durapick_durability_wood, maxlevel=1},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    type = "shaped",
    output = "durapick:wood_pick 1",
    recipe = { -- Use globals to allow customized recipes
        {durapick_resource_wood_post, durapick_resource_wood_post, durapick_resource_wood_post},
        {"", durapick_stick, ""},
        {"", durapick_stick, ""}
    },
})

default = rawget(_G, "default") or {}
minetest.register_node("durapick:dura_wood", {
    description = "Dura Wood",
    paramtype2 = "facedir",
    place_param2 = 0,
    tiles = {"durapick_resource_wood.png"},
    is_ground_content = false,
    groups = {choppy = 2, oddly_breakable_by_hand = 2},
    sounds = default.node_sound_wood_defaults(),
})

ItemStack("durapick:dura_wood", 99)

minetest.register_craft({
    type = "shaped",
    output = "durapick:dura_wood 1",
    recipe = { -- Use globals to allow customized recipes
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre},
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre},
        {durapick_resource_wood_pre, durapick_resource_wood_pre, durapick_resource_wood_pre}
    },
})
