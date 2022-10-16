-- Make such a thing
minetest.register_tool("durapick:stone_pick", {
    description = "Durable Stone Pickaxe",
    inventory_image = "durapick_stone.png",
    tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
            -- Added ability for stone pick to mine like steel pick, just slower
			cracky = {times={[2]=2.0, [3]=1.00}, uses=(durapick.durabilities.stone * durapick.factor), maxlevel=1},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick.use_previous_in_recipe then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:stone_pick 1",
        recipe = { -- Use globals to allow customized recipes
            {durapick.resource.stone, "durapick:wood_pick", durapick.resource.stone},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:stone_pick 1",
        recipe = { -- Use globals to allow customized recipes
            {durapick.resource._stone, durapick.resource.stone, durapick.resource.stone},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
end
