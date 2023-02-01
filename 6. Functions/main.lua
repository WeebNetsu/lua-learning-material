function SayHello() -- function
    print("Hello!")
end

SayHello()

function SayHello(name) -- function with parameter (and overloading)
    print("Hello " .. name)
    NotLocalVar = 20
end

SayHello("Jack")
print(NotLocalVar) -- we can access the variable outside the function if local is not stated

local function sum(num1, num2) -- these functions can call themselves (useful for recursive functions)
    local ans = num1 + num2
    return ans -- returns a value
end
print(sum(20, 5))
-- print(ans) -- we cannot access ans since it was made local

local add = function (num) -- these functions can call themselves (useful for recursive functions)
    local res = num + 1
    local var = num .. " + 1 = " .. res
    -- add(20) -- can call itself
    return res, var -- you can return multiple values
end

local num, var = add(20)
print(num .. "\n" .. var)


-- EXAMPLE OF RECURSIVE FUNCTION
local function recursive_counter(num, end_num)
    local counter = num + 1

    if counter < end_num then
        return recursive_counter(counter, end_num)
    end

    return counter
end
print("RECURSIVE COUNT: " .. recursive_counter(1, 10))

-- THE BELOW IS CALLED A CLOSURE
-- Closure is a anonimous function within another function

local function counter()
    local i = 0

    return function() -- anonimous function
        i = i + 1

        return i
    end
end

local number = counter()

print(number()) -- i gets incremented with every time we call this function
print(number())
print(number())
print(number())

print()
local function sort_tbl(tbl)
    table.sort(tbl) -- NOTE: THIS WILL MODIFY THE ORIGINAL TABLE

    --[[ -- this will NOT modify the original table
        local tbls = {} 
        for key, value in pairs(tbl) do
            tbls[key] = value
        end
        table.sort(tbls) 
        return tbls
    ]]

    return tbl
end

local t = {9, 7, 5, 3, 1, 2, 4, 6, 8}
for index, value in pairs(t) do -- original table has been sorted as well
    print(index, value)
end
print()
local sorted = sort_tbl(t)

for index, value in pairs(t) do -- original table has been sorted as well
    print(index, value)
end

print()

for index, value in pairs(sorted) do
    print(index, value)
end

local function sums(...) -- take in an infinite amount of arguments
    local sum = 0
    print(...) -- exactly what has been entered
    for index, value in ipairs({...}) do -- loop through arguments (put it inside a table{} first (the "()" are optional in THIS case))
        sum = sum + value
    end
    return sum
end
print(sums(5, 10, 15, 20))