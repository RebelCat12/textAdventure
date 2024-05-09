local healthPotion = require("healthPotion")

local function Player(name)
    return {
        name = name or "Daniel",
        health = 100,
        damage = 10,
        gold = 0,
        level = 0,
        inventory = {}
    }
end

local function Enemy(type)
    return {
        type = type or "goblin",
        health = 70,
        damage = 12,
        --Find a way to make the enemy level reference the instance of a player, not the base object.

        --[[The specific enemy instance will inherit this function and the amount of gold will depend on the
            type and level of the enemy.]]
        inventory = {}
    }
end

local function NPC()
    return {
        dialogue = {"Hello", "Hi", "How are you"},

        --This is a bit messy, but it works!
        --[[Namely, the messy part is that we are creating an instance of the parent function inside
            of this function. I'm sure there must be a way to refactor this so that it's cleaner, but
            I haven't found it yet.]]
        sayHello = function (self)
            local sentance = NPC()
            local random = math.random(1, #sentance.dialogue)
            print(sentance.dialogue[random])
        end
    }
end