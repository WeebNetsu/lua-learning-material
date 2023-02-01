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
file:write("I am here") -- writes to the file (overwrite)
file:close()

local file2 = io.open("test.txt", "a")
file2:write("This is appended")
file2:close()

local file3 = io.open("test.txt", "r")
local data = file3:read("*line") -- reads file (has all the same parameters as io.read())
file3:close()

print(data)