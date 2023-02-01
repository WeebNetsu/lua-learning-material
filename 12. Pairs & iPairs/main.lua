--[[ 
    Pairs are used to loop through tables
    Pairs: for unordered tables (or multi dimentional)
    iPairs: for ordered tables
 ]]

local tbl = {"Hello", "World", 3.14159, "Never Give Up"}

for index, value in pairs(tbl) do
    print("index: " .. index, "value: " .. value)
end

local my_tbl = {"Name", "Age", "Grade"} -- list of keys
my_tbl.Name = "Jack" -- assign the key to a value
my_tbl.Age = 16
my_tbl.Grade = 10

print(my_tbl.Name) -- returns Jack

for key, value in pairs(my_tbl) do
    print(key .. ": ", value) -- this is also a type of multi dimentional array
end
