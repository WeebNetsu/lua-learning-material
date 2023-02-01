--[[ 
    Types:
    nil (null/nothing)
    Number (this is both integers and floats)
    String
    Boolean
    Table (arrays)
 ]]

local example -- this will automatically be assigned to nil
local local_var = nil -- create a local scope variables (null value)
print(local_var)

GlobalVar = 10 -- global scope variable (also integer), global scope variables can be used anywhere
_G.MyVar = 20 -- also a global scope variable
print(type(GlobalVar)) -- print variable type
print(MyVar)

local floats = 10.2
print(floats)

local string = "Hello"
local string2 = 'Hello HERE'
print(string .. "\n" .. string2)

local multi_line_str = [[Hello
world
    oof]]
print(multi_line_str)

local bool = false -- note: nil is also false (NOTE: nil & false are the ONLY false values on lua!!!)
local bool2 = 0 -- this is TRUE (since it's not null or false)
local bool3 = true

print(bool)
print(bool2) -- it may say 0 but it is true
print(bool3)

local one, two, three = "one", 2, 3.0 -- assign multiple variables at once
print(one, two, three)