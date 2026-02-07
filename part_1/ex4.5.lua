--- Remove a slice from a string
--- @param s string
--- @param i integer
--- @param count integer
local function remove(s, i, count)
	i = utf8.offset(s, i)
	j = utf8.offset(s, i + count)
	return string.sub(s, 0, i - 1) .. string.sub(s, j)
end

print(remove("hello world", 7, 4)) --> hello d
print(remove("ação", 2, 2)) --> ao
