-- Make such a thing
minetest.register_tool("durapick:bronze_pick", {
    description = "Durable Bronze Pickaxe",
    inventory_image = "durapick_bronze.png",
    tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=(durapick.durabilities.bronze * durapick.factor), maxlevel=2},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick.use_previous_in_recipe then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:bronze_pick 1",
        recipe = {
            {durapick.resource.bronze, "durapick:stone_pick", durapick.resource.bronze},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:bronze_pick 1",
        recipe = {
            {durapick.resource.bronze, durapick.resource.bronze, durapick.resource.bronze},
            {"", durapick.resource.stick, ""},
            {"", durapick.resource.stick, ""}
        },
    })
end
