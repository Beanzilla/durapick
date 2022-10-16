-- Make such a thing
minetest.register_tool("durapick:diamond_pick", {
    description = "Durable Diamond Pickaxe",
    inventory_image = "durapick_diamond.png",
    tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=(durapick.durabilities.diamond * durapick.factor), maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick.use_previous_in_recipe then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:diamond_pick 1",
        recipe = {
            {durapick.resource.diamond, "durapick:mese_pick", durapick.resource.diamond},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:diamond_pick 1",
        recipe = {
            {durapick.resource.diamond, durapick.resource.diamond, durapick.resource.diamond},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
end
