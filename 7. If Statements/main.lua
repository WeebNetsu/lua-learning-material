if true then
    print("If statement!!")
end

local x = 2
if x > 5 then
    print("x is bigger than 2")
end

if x < 5 and x >= 2 then
    print("x is less than 5 and more or equal to 2")
end
--[[ 
    Comparison operators
    and
    or
    not
    >
    <
    >=
    <=
    ~= (not equal)
    ==
 ]]

if (x ~= nil) or (x > 5 )then
    print("If statements are cool!")
end

if not(x == 5) then -- use () with not!
    print("x is not 5")
end

if x > 5 then
    print("x is more than 5")
else
    print("x is not more than 5")
end

local age = 15
if age >= 18 then
    print("You may enter")
elseif age > 10 then
    print("Just a few more years to go")
else
    print("You're too young")
end

if age > 10 then
    if x > 0 then
        print("You're old enough to enter")
    end

    print("This will still run since it's not in the else")
end

-- Usual Ternairy operator: student = age < 19 ? true : false
-- Ternairy operator in Lua:
local student = age < 19 and true or false
print(student)