-- Metamethods are methods used to overwrite the normal operation of things (such as + and -)

-- NOTE: for tutorial show what happens if you try to tbl1+tbl2 without adding the metamethod
-- READ THIS!!!!!: Also make example with vectors to give real world example

local function addTableValue(x, y) -- our function defining how we add 2 tables
    return x.value + y.value -- tbl1.value + tbl2.value
end

local tbl1 = {value = 30}
local tbl2 = {value = 20}

local metatable = { -- overwrite the + and - operators
    __add = addTableValue, -- method 1
    __sub = function (x, y) -- method 2
        return x.value - y.value
    end
} 
setmetatable(tbl1, metatable) -- say where this new + function should take place
local totalValue = tbl1 + tbl2 -- use the new plus function to add the values of the tables
print(totalValue)
local subtracted = tbl1 - tbl2 -- use the new plus function to add the values of the tables
print(subtracted)

--[[ 
    METAMETHODS FOR OPERATORS:
    __add(a, b) = +
    __sub(a, b) = -
    __mul(a, b) = *
    __div(a, b) = /
    __mod(a, b) = %
    __pow(a, b) = ^
    __concat(a, b) = ..
    __len(a) = #
    __eq(a, b) = ==
    __lt(a, b) = <
    __le(a, b) = <=
 ]]