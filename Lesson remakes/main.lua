-- ----- LESSON 1 -> Printing & comments ------

-- this is a single line comment!

--[[ 
    Thuis is a multi
    line
    comment
 ]]

print("Hello World") -- You can output with both "" and ''
print('Hello Jeff')

print("I am", 10 + 8, "years old!") -- a ',' adds a tab (NOT A SPACE)
print("Hello " .. "World") -- .. concats a string

-- ----- LESSON 2 -> Variables & data types ------

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
print(MyVar)

local floats = 10.2
print(floats)

local string = "Hello"
local string2 = 'Hello HERE'
print(string .. " " .. string2)

local bool = false -- note: nil is also false (NOTE: nil & false are the ONLY false values on lua!!!)
local bool2 = 0 -- this is TRUE (since it's not null or false)
local bool3 = true

print(bool)
print(bool2) -- it may say 0 but it is true
print(bool3)

local one, two, three = "one", 2, 3.0 -- assign multiple variables at once
print(one, two, three)

-- ----- LESSON 3 -> Strings ------
-- the below are all ways to create a string
local str1 = "String"
local str2 = 'Another String'
local str3 = [[Hello
I am
happy]]

local myStr = "Hello"
print(#myStr) -- the '#' is like len() in python, it returns the string length
print(myStr .. " world") -- .. is used to concatenate strings

local num = 20
local str = tostring(num) -- tostring converts a number to a string
print(type(str), type(num))

--[[ 
    Escape characters: (there are more, but these are most common)
    \n - newline
    \t - horizontal tab
    \v - verticle tab
    \\ - backslash
    \" - double quotes
    \' - single quotes
 ]]

print("Hello\nWorld\tI am\valmost 19\\20 \"years\" old!")

local a = "Hello World!"
print(string.lower(a)) -- converts string to lowercase
print(string.upper(a)) -- converts string to uppercase
print(string.len(a)) -- same as #a (returns string length)

-- ----- LESSON 4 -> Math ------
local str = "19"
local num = tonumber(str) -- converts string to number
print(type(str), type(num)) -- type() -> get variable type

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

-- ----- LESSON 5 -> If statements ------

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

-- ----- LESSON 6 -> Loops ------
for i = 1, 10, 1 do -- for i = start, end, step do
    print(i)
end

for i = 10, 1, -2 do
    print(i)
end

local count = 10
for i = 1, count do -- can use variables for dynamic looping, also step is optional
    print(i)
end

local people = 10
while people > 0 do
    print("People Left: " .. people)
    people = people - 1
end

local run = true
local c = 0

repeat
    print("This will run at least once")
    c = c + 1
until c == 1

-- ----- LESSON 7 -> User Input ------
io.write("Enter your age: ") -- puts text on screen (You can do the same with print())
local answer = io.read() -- gets input from user

if tonumber(answer) > 60 then
    print("You're too old to enter")
elseif tonumber(answer) >= 18 then
    print("You may enter")
else
    print("You're too young to enter")
end

-- ----- LESSON 8 -> Tables ------
--[[ 
    Tables represents:
    Arrays, records, sets, lists, queues
 ]]

local arr = {"This", 2, 9.9, true, "array"} -- this array is known as a table in lua
print(arr[1]) -- NOTE: arrays starts at index 1
print(#arr) -- returns length of array
-- NOTE: doing print(arr) will return the memory address of the array
print(arr)

-- alternative to displaying array
for i = 1, #arr do
    print(arr[i])
end

local my_arr = {10, 9, 5, 2, 7, 1}

table.insert(my_arr, 2, 19) -- insert(array, where, what)
print(my_arr[2])

table.remove(my_arr, 2) -- remove(array, where)
print(my_arr[2])

local multi = {
    {1, 8, 3},
    {4, 2, 6},
    {7, 5, 9}
}
print(#multi) -- only returns the outer amount of items in the array, not the inner
print(multi[1][2]) -- access item in multi list

for i = 1, #multi do
    for j = 1, #multi[i] do
        print(multi[i][j]) -- print all items in multi dimentional array
    end
end

local tbl = {1, 2, 3, 4}
print(table.concat(tbl, " ")) -- convert table to string as and seperate the values with spaces

-- ----- LESSON 9 -> Functions ------
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

-- ----- LESSON 10 -> Working with Files ------
io.output("temp_file.txt") -- creates a file (empties the file if it already exists)

io.write("Hello WOrld!") -- puts text in the file

io.close() -- closes the file

io.input("temp_file.txt") -- opens file for reading

local file_data = io.read("*all") -- read data from file
--[[ 
    Read parameters:
        *all - read the whole file
        *line - read the next line
        *number - read a number
        io.read(5) - reads 5 characters
 ]]

print(file_data)

--[[ 
    io.open options:
        r - read
        w - write
        a - append
        rb - read binary
        wb - write binary
 ]]

local file = io.open("test.txt", "w") -- opens a file in read mode (creates if it doesn't exist)
-- good practise would be to
if file ~= nil then
    file:write("I am here") -- writes to the file (overwrite)
    file:close()
else
    print("Could not open file")
end

local file2 = io.open("test.txt", "a")
file2:write("This is appended")
file2:close()

local file3 = io.open("test.txt", "r")
local data = file3:read("*line") -- reads file (has all the same parameters as io.read())
file3:close()

print(data)

-- ----- LESSON 11 -> Custom Modules ------
Custom Modules

-- ----- LESSON 12 -> OOP ------
OOP
