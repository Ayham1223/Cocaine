Config = {}
--- Sellable Items

Config.SellableItems = {
    ['suspicious_pack'] = 400,
    -- ['cryptostick'] = math.random(250,300),
    -- ['iphone'] = 500,
    -- ['samsungphone'] = 400,
    -- ['laptop'] = math.random(900, 1200),
    -- ['tablet'] = math.random(250, 350),
    -- ['goldchain'] = math.random(700, 1000),
    -- ['10kgoldchain'] = math.random(1000, 1200),
    -- ['diamond_ring'] = math.random(700, 1000),
    -- ['goldbar'] = math.random(1000, 1000),
    -- ['rolex'] = math.random(700, 750),
    -- ['ruby'] = math.random(200, 250),
    -- ['emerald'] = math.random(200, 250),
    -- ['sapphire'] = math.random(200, 250),
    -- ['gallary_egg'] = math.random(200, 250),
    -- ['gallary_skull'] = math.random(200, 250),
    -- ['gallary_dragon'] = math.random(200, 250),
    -- ['guitar'] = math.random(200, 250),
    -- ['ruby_ring'] = math.random(200, 250),
    -- ['diamond'] = math.random(200, 250),
    -- ['gold_ring'] = math.random(200, 250),
    -- ['sapphire_ring'] = math.random(200, 250),
    -- ['emerald_ring'] = math.random(200, 250),
    -- ['ruby_necklace'] = math.random(200, 250),
    -- ['emerald_necklace'] = math.random(200, 250),
    -- ['sapphire_necklace'] = math.random(200, 250),
    -- ['diamond_necklace'] = math.random(200, 250),
    -- ['carbon'] = math.random(200, 250),
    -- ['goldore'] = math.random(200, 250),
    -- ['trophy'] = math.random(200, 250),
    -- ['aquamarine_ring'] = math.random(200, 250),
    -- ['citrine_ring'] = math.random(200, 250),
    -- ['diamond_ring'] = math.random(200, 250),
    -- ['jade_ring'] = math.random(200, 250),
    -- ['onyx_ring'] = math.random(200, 250),
    -- ['ruby_ring'] = math.random(200, 250),
    -- ['tanzanite_ring'] = math.random(200, 250),
    -- ['sapphire_ring'] = math.random(200, 250),
}

--- Location Picker

-- local setLocPick = math.random(1, 3) -- un-comment me out for location change
local setLocPick = 1 -- comment me out for location change

Config.LocationSets = {
    [1] = {
        ["x"] = -1556.901,
        ["y"] = -417.1016,
        ["z"] = 37.096248,
        ["h"] = 83.798507,
    },
    -- [2] = {
    --     ["x"] = 1601.25,
    --     ["y"] = 3589.39,
    --     ["z"] = 38.77,
    --     ["h"] = 131.8,
    -- },
    -- [3] = {
    --     ["x"] = 1983.89,
    --     ["y"] = 5175.6,
    --     ["z"] = 47.64,
    --     ["h"] = 122.74,
    -- },
} 

Config.Locations = {
    ["market"] = {
        ["label"] = "market",
        ["type"] = "mark",
        ["coords"] = {
            [1] = {
                ["x"] = tonumber(Config.LocationSets[setLocPick]["x"]),
                ["y"] = tonumber(Config.LocationSets[setLocPick]["y"]),
                ["z"] = tonumber(Config.LocationSets[setLocPick]["z"]),
                ["h"] = tonumber(Config.LocationSets[setLocPick]["h"]),
            },
        },
        ["products"] = Config.Products,
    },
}