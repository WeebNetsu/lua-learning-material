local str = "19"
local num = tonumber(str) -- converts string to number
print(type(str), type(num))

-- math operations
print(5 ^ 2)
print(5 + 5)
print(5 - 10)
print(5 * 2)
print(10 / 2)
print(10 % 3)

-- remember the order of execution for math!
print(5 + 2 * 10)
print((5 + 2) * 10)

-- we can use the math library by saying math.<whatever we need>
print(math.pi)
math.randomseed(os.time()) -- make sure the numbers we get from random does not get repeated (we seed it with the current time)
print(math.random()) -- random float between 0 and 1
print(math.random(10)) -- random integer between 1 and 10
print(math.random(10, 50)) -- random integer between 10 and 50
print(math.min(12, 50, 90, 70, 8, 7, 55)) -- get minimum value in list
print(math.max(9, 20, 6, 77, 99, 55, 43, 35, 89)) -- get maximum value in list
print(math.floor(20.9))
print(math.ceil(20.1))
print(math.sin(20))
