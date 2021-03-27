-- Make such a thing
minetest.register_tool("durapick:bronze_pick", {
    description = "Durable Bronze Pickaxe",
    inventory_image = "durapick_bronze.png",
    tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=(durapick_durability_bronze * durapick_durability_factor), maxlevel=2},
		},
		damage_groups = {fleshy=4},
    },
    sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

if durapick_previous_pick then
    minetest.register_craft({
        type = "shaped",
        output = "durapick:bronze_pick 1",
        recipe = {
            {durapick_resource_bronze, "durapick:stone_pick", durapick_resource_bronze},
            {"", durapick_stick, ""},
            {"", durapick_stick, ""}
        },
    })
else
    minetest.register_craft({
        type = "shaped",
        output = "durapick:bronze_pick 1",
        recipe = {
            {durapick_resource_bronze, durapick_resource_bronze, durapick_resource_bronze},
            {"", durapick_stick, ""},
            {"", durapick_stick, ""}
        },
    })
end