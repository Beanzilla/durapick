-- Make such a thing
minetest.register_tool("durapick:steel_pick", {
    description = "Durable Steel Pickaxe",
    inventory_image = "durapick_steel.png",
    tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=(durapick.durabilities.steel * durapick.factor), maxlevel=2},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick.use_previous_in_recipe then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:steel_pick 1",
        recipe = { -- Use globals to allow customized recipes
            {durapick.resource.steel, "durapick:bronze_pick", durapick.resource.steel},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:steel_pick 1",
        recipe = { -- Use globals to allow customized recipes
            {durapick.resource.steel, durapick.resource.steel, durapick.resource.steel},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
end
