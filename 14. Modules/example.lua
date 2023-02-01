-- This is an example module

sample = {} -- sample to be returned (try not to declare it locally)

function sample.sum(num1, num2) -- has to be a global function
    return num1 + num2
end

function sample.say_hi(name) -- say_hi will be added to the sample table
    name = name or "\b" -- same as say_hi(name="") in other languages (lua don't have default parameters)
    -- \b = backspace

    return "Hi " .. name .. "!"
end

return sample -- returns the table and all it's functions