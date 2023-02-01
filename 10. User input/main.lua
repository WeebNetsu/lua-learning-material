io.write("Enter your age: ") -- puts text on screen (You can do the same with print())
local answer = io.read() -- gets input from user

if tonumber(answer) > 60 then
    print("You're too old to enter")
elseif tonumber(answer) >= 18 then
    print("You may enter")
else
    print("You're too young to enter")
end
