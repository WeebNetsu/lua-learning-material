--[[ 
    Tables represents:
    Arrays, records, sets, lists, queues
 ]]


local arr = {"This", 2, 9.9, true, "array"} -- this array is known as a table in lua
print(arr[1]) -- NOTE: arrays starts at index 1
print(#arr) -- returns length of array
-- NOTE: doing print(arr) will return the memory address of the array

local my_arr = {10, 9, 5, 2, 7, 1}
table.sort(my_arr) -- sorts the table

for i = 1, #my_arr do
    print(my_arr[i])
end

print()

table.insert(my_arr, 2, 19) -- insert(array, where, what)
print(my_arr[2])

table.remove(my_arr, 2) -- remove(array, where)
print(my_arr[2])

print()

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