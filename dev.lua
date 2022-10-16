-- This is from:
-- devtest game, mod basetools

-- Mese Pickaxe: special tool that digs "everything" instantly

local pick_times = {[1]=durapick.dev_pick_speed, [2]=durapick.dev_pick_speed, [3]=durapick.dev_pick_speed}

if durapick.dev_durability then
	minetest.register_tool("durapick:dev_pick", {
		description = "Dev Pickaxe",
		inventory_image = "durapick_dev.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=3,
			groupcaps={
				-- This will mine everything in 0.5 seconds
				cracky={times=pick_times, uses=(durapick.durabilities.dev * durapick.factor), maxlevel=255},
				crumbly={times=pick_times, uses=(durapick.durabilities.dev * durapick.factor), maxlevel=255},
				snappy={times=pick_times, uses=(durapick.durabilities.dev * durapick.factor), maxlevel=255},
				choppy={times=pick_times, uses=(durapick.durabilities.dev * durapick.factor), maxlevel=255},
				dig_immediate={times=pick_times, uses=(durapick.durabilities.dev * durapick.factor), maxlevel=255},
			},
			-- Modified damage due to the fact it is craftable
			damage_groups = {fleshy=8},
		},
	})
else
	minetest.register_tool("durapick:dev_pick", {
		description = "Dev Pickaxe",
		inventory_image = "durapick_dev.png",
		tool_capabilities = {
			full_punch_interval = 1.0,
			max_drop_level=3,
			groupcaps={
				-- This will mine everything in 0.5 seconds
				cracky={times=pick_times, maxlevel=255},
				crumbly={times=pick_times, maxlevel=255},
				snappy={times=pick_times, maxlevel=255},
				choppy={times=pick_times, maxlevel=255},
				dig_immediate=pick_times, maxlevel=255},
			},
			-- Modified damage due to the fact it is craftable
			damage_groups = {fleshy=8},
		},
	})
end

if durapick.dev_pick then
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
end
