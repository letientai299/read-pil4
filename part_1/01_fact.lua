print("program args")
for k, v in pairs(arg) do
	print("", k, v)
end

function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

print("fact(10)=", fact(10))

print(fact(-1))

-- NOTE (tai): can use std lib without importing --
--[[
print("enter a numnber")
local a = io.read("*n")
print(fact(a))
--]]
