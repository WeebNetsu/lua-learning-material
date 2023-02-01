--[[ 
    A co-routine is a lot like a threading, but they cannot run in parrallel
    a co-routine can wait before finishing so another can complete it's processing first
 ]]

_G.routine1 = coroutine.create( -- create a coroutine
    function()
        for i = 1, 10, 1 do
            print(i)
            print(coroutine.status(routine1)) -- prints out the current status of routine
    
            if i == 4 then
                coroutine.yield() -- when i is 4 wait before continueing execution
            end
        end
    end
)

_G.routine2 = coroutine.create(
    function()
        for i = 11, 20, 1 do
            print("Routine 2:",i)
        end
    end
)

print(coroutine.status(routine1))
coroutine.resume(routine1) -- start/resume a routine
coroutine.resume(routine2) -- when the above routine yields, start with this one

-- the below if statement is optional
if coroutine.status(routine1) == "suspended" then 
    coroutine.resume(routine1) -- continue with routine
end

print(coroutine.status(routine1))