local exec_time = os.clock() -- returns the amount of time to get to that point (times code)

print(os.time()) -- returns amount of seconds passed since 1970
print(os.time({ -- returns seconds passed from 1970 - 2000 (1st month, 1st day, hour 5, minute 30, second 15)
    year=2000,
    month=1,
    day=1,
    hour=5,
    min=30,
    sec=15
}))

local t2 = os.time({ -- returns seconds passed from 1970 - 2000 (1st month, 1st day, hour 5, minute 30, second 15)
    year=2021,
    month=1,
    day=1,
    hour=0,
    min=0,
    sec=0
})

-- os.difftime = t1 - t2 (time passed since t2 to t1)
print("It has been " .. math.floor(((os.difftime(os.time(), t2) / 60) / 60) / 24) .. " days since the first day of 2021")

print(os.date()) -- returns current date

local time_table = os.date("*t", os.time()) -- *t = returns the date table of the time entered
for key, value in pairs(time_table) do
    print(key .. ":", value)
end

print(os.date("%A", t2)) -- returns the day of week on that time/date

print(os.getenv("HOME")) -- get enviroment variable
print(os.getenv("USER"))

os.execute("touch old_file.txt") -- execute system commands, ls, date, whatever you can execute in the terminal (bad practise)

os.remove("new_file.txt") -- removes file or folder
os.rename("old_file.txt", "new_file.txt") -- renames a file


print("Execution time: " .. os.clock() - exec_time) -- time above code took to finish

os.exit() -- exits the application (stops it from running), anything after this line of code will not be executed