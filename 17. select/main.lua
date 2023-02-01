--[[ 
    select("#", 1, 2, 3, 4, 5) - the # will return the amount of items in the select (5 in this case)
    select(2, 2, 4, 6, 8, 10) - the 2 represents the index, it will return 4
 ]]

local function sum(...) -- take in as many values as needed
    sum = 0
    for i = 1, select("#", ...) do -- for i = 1, number of items in select
        sum = sum + select(i, ...) -- add the item at index i in select to the sum
    end
    return sum
end

print(sum(2, 4, 6, 8, 10))