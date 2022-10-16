-- Make such a thing
minetest.register_tool("durapick:mese_pick", {
    description = "Durable Mese Pickaxe",
    inventory_image = "durapick_mese.png",
    tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=(durapick.durabilities.mese * durapick.factor), maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick.use_previous_in_recipe then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:mese_pick 1",
        recipe = {
            {durapick.resource.mese, "durapick:steel_pick", durapick.resource.mese},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:mese_pick 1",
        recipe = {
            {durapick.resource.mese, durapick.resource.mese, durapick.resource.mese},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
end
