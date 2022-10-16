
durapick.dev_pick = minetest.settings:get_bool("durapick.dev_pick")
if durapick.dev_pick == nil then
    durapick.dev_pick = false
    minetest.settings:set_bool("durapick.dev_pick", false)
end

durapick.dev_durability = minetest.settings:get_bool("durapick.dev_durability")
if durapick.dev_durability == nil then
    durapick.dev_durability = true
    minetest.settings:set_bool("durapick.dev_durability", true)
end

durapick.factor = minetest.settings:get("durapick.factor")
if durapick.factor == nil then
    durapick.factor = 12
    minetest.settings:set("durapick.factor", "12")
else
    durapick.factor = tonumber(durapick.factor)
end

durapick.use_previous_in_recipe = minetest.settings:get_bool("durapick.use_previous_in_recipe")
if durapick.use_previous_in_recipe == nil then
    durapick.use_previous_in_recipe = true
    minetest.settings:set_bool("durapick.use_previous_in_recipe", true)
end
