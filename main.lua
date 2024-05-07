local function Player(name)
    return {
        name = name or "Daniel",
        health = 10,
        damage = 3,
        inventory = {}
    }
end

local function Enemy(type)
    return {
        type = type or "goblin",
        health = 11,
        damage = 2,
        inventory = {}
    }
end

