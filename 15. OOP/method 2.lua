-- THE OTHER is one way of doing OOP, but it has a lot of difficult flaws, the BELOW will show you another way
-- This method is better at encapsulation

local function Pet(name)
    return { -- returns a table
        name = name,
        status = "hungry",
        points = 0,

        feed = function (self)
            print(self.name .. " was fed")
            self.status = "Happy"
            self.points = self.points + 1
        end,

        showStatus = function (self)
            print(self.name .. " is " .. self.status)
        end
    }
end

local cat = Pet("Ginger")
cat:feed()
print(cat.points)
cat:showStatus()

local parrot = Pet("Jack")
print(parrot.points)

local function Dog(name, breed) -- dog object
    local dog = Pet(name) -- inheritance

    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function (self)
        return self.loyalty >= 10
    end

    dog.speak = function (self)
        print("Woof Woof!")
    end

    dog.feed = function (self)
        print(self.name .. " was fed")
        self.status = "Happy"
        self.loyalty = self.loyalty + 5
        self.points = self.points + 1
    end

    return dog
end

local poodle = Dog("Jesse", "poodle")
poodle:speak()
poodle:feed()
-- poodle:feed()
poodle:showStatus() -- function inherited from Pet class

if poodle:isLoyal() then
    print("Will protect you when in danger")
else
    print("Dog is not loyal")
end