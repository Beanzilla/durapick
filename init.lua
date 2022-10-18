-- Check if moreblocks is installed
local moreblocks = minetest.get_modpath("moreblocks") or nil

-- Settings
durapick = {
    durabilities = {
        wood = 30,
        stone = 60,
        steel = 180,
        -- Because MTG doesn't have gold, we won't either
        bronze = 360,
        mese = 540,
        diamond = 610,
        dev = 610 -- This plus factor = real dev pick durability
    },
    dev_pick_speed = 0.5, -- DO NOT CHANGE
    dev_durability = true, -- settings.lua
    dev_pick = false, -- settings.lua
    factor = 12, -- settings.lua
    use_previous_in_recipe = true, -- settings.lua
    resource = {
        stick = "default:stick",
        steel = "default:steelblock",
        bronze = "default:bronzeblock",
        mese = "default:mese",
        diamond = "default:diamondblock",
    },
}

local modpath = minetest.get_modpath("durapick")

-- Resources
if moreblocks then -- If moreblocks exists, use compressed cobble
    durapick.resource.stone = "moreblocks:cobble_compressed"
else -- If not, then use something default
    durapick.resource.stone = "default:stonebrick"
end

-- Custom Resource
if moreblocks then
    durapick.resource.wood = {
        post = "moreblocks:wood_tile",
        pre = ""
    }
else
    durapick.resource.wood = {
        post = "durapick:dura_wood",
        pre = "group:wood"
    }
end

dofile(modpath .. DIR_DELIM .. "settings.lua")
durapick.durabilities.dev = durapick.durabilities.diamond + durapick.factor

-- Merge all files, from worst to best, top to bottom
dofile(modpath .. DIR_DELIM .. "wood.lua")
dofile(modpath .. DIR_DELIM .. "stone.lua")
dofile(modpath .. DIR_DELIM .. "bronze.lua")
dofile(modpath .. DIR_DELIM .. "steel.lua")
dofile(modpath .. DIR_DELIM .. "mese.lua")
dofile(modpath .. DIR_DELIM .. "diamond.lua")
dofile(modpath .. DIR_DELIM .. "dev.lua")
