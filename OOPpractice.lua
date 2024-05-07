local function Pet(name)
    --everything in here is a public property
    return {
        name = name or "Charlie",
        status = "hungry",
        points = 10,

        speak = function (self)
            print("Meow")
        end,
        feed = function (self)
            print("Eating", self.name)
        end
    }
end

local function Dog(name, breed)
    local dog = Pet(name)

    dog.breed = breed or "husky"
    dog.loyalty = 20

    dog.speak = function (self)
        print("Woof")
    end

    return dog
end

local function Cat(name, size)
    local cat = Pet(name)

    cat.size = size or "average"
    cat.cute = true

    return cat
end

local lab = Dog("James", "labrador")
print(lab.name, lab.breed)
lab:speak()