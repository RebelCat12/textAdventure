--Text based RPG game

local function Player(name)
    return {
        name = name or "Daniel",
        health = 25,
        damage = 4,
        gold = 0,
        level = 0,
        inventory = {}
    }
end

local function Enemy(type)
    return {
        type = type or "goblin",
        health = 15,
        damage = 6,
        --Find a way to make the enemy level reference the instance of a player, not the base object.

        --[[
            The specific enemy instance will inherit this function and the amount of gold will depend on the
            type and level of the enemy.
            ]]
        inventory = {}
    }
end

local function NPC()
    return {
        --[[
            !!LEGACY COMMENT, IT'S ONLY HERE BECAUSE IT'S FUNNIE!!
            Namely, the messy part is that we are creating an instance of the parent function inside
            of this function. I'm sure there must be a way to refactor this so that it's cleaner, but
            I haven't found it yet.

            FIXED IT. I'm going to leave this comment here because it's funny, but I've moved stuff around
            so that the function isn't being called inside of itself anymore, which definitely seems like an inprovement.
            ]]
        sayHello = function (self)
            math.randomseed(os.time())
            local dialogue = {"Hello", "Hi", "How are you"}
            local random = math.random(1, #dialogue)
            print(dialogue[random])
        end
    }
end