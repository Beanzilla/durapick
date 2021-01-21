-- This is from:
-- devtest game, mod basetools

-- Mese Pickaxe: special tool that digs "everything" instantly
minetest.register_tool("durapick:dev_pick", {
	description = "Dev Pickaxe",
	inventory_image = "durapick_dev.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			crumbly={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			snappy={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			choppy={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			dig_immediate={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
		},
		damage_groups = {fleshy=100},
	},
})

minetest.register_craft({
    type = "shapeless",
    output = "durapick:dev_pick 1",
    recipe = {
		"durapick:wood_pick",
		"durapick:stone_pick",
		"durapick:bronze_pick",
		"durapick:steel_pick",
		"durapick:mese_pick",
		"durapick:diamond_pick",
    },
})
