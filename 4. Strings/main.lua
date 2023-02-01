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
print(string.sub(a, 1, 5)) -- returns "Hello" (substring of a from index 1 to 5)
print(string.char(65)) -- Aschii to character ('A')
print(string.byte("a")) -- character to aschii
print(string.byte("abc", 1, 2)) -- the 1st and 2nd characters in the string to aschii
print(string.rep("a", 10, " ")) -- repeats the string ('a') 10 times, seperated by " " (spaces)
print(string.format("pi: %.2f\nMy age: %i", math.pi, 18)) -- formatting strings (f - float; i - integer)
local day, month, year = 4, 10, 2002
print(string.format("%s: %02d/%02d/%4d", "Date", day, month, year)) -- formatting strings (d - diget)
print(string.find(a, "orl")) -- finds 'orl' inside the string (returns beginning and end)
print(string.match(a, "World")) -- returns "World" if it finds it in the string
local today = "Today is 05/08/2002"
print(string.match(today, "%d+/%d+/%d+")) -- finds the pattern
print(string.gsub(a, "o", "O")) -- replaces all "o" with "O"

