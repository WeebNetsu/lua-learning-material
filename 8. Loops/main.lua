for i = 1, 10, 1 do -- for i = start, end, step do
    print(i)
end

print()

for i = 10, 1, -2 do
    print(i)
end

print()

local count = 10
for i = 1, count do -- can use variables for dynamic looping, also step is optional
    print(i)
end

print()

local arr = {2, 3, 8, 12, 19, 28, 57}
for i = 1, #arr do
    print(arr[i])
end

local people = 10
while people > 0 do
    print("People Left: " .. people)
    people = people - 1
end

local run = true
local c = 0
while run do -- while something is TRUE, run
    print("running")

    if c == 10 then
        run = false
    end

    c = c + 1
end

repeat
    print("This will run at least once")
    c = c - 1
until c == 0

repeat
    print("RUN ONCE")
until true -- while something is FALSE, run