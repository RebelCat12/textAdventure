local healthPotion = require("healthPotion")

local function Player(name)
    return {
        name = name or "Daniel",
        health = 100,
        damage = 10,
        inventory = {"smallHealthPotion", "sword", "gold"}
    }
end

local function Enemy(type)
    return {
        type = type or "goblin",
        health = 70,
        damage = 12,
        inventory = {}
    }
end

local function NPC()
    return {
        dialogue = {"Hello", "Hi", "How are you"},

        --This is a bit messy, but it works!
        sayHello = function (self)
            local sentance = NPC()
            local random = math.random(1, #sentance.dialogue)
            print(sentance.dialogue[random])
        end
    }
end

local player = Player()

for item = 1, #player.inventory do
    if player.inventory[item] == "smallHealthPotion" then
        if player.health >= 100 then
            print("You are already at full health.")
        else
            print(healthPotion.smallHeal(player.health))
        end
    else
    end
end
