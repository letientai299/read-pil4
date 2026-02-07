local function insert(s, index, part)
	local pos = utf8.offset(s, index)
	return string.sub(s, 0, pos) .. part .. string.sub(s, pos + 1)
end

-- test for 4.3
local s = "hello world"
local x = "the wonderful new "
s = insert(s, #"hello ", x)
print(s)

-- test for 4.4
print(insert("ação", 5, "!")) --> ação!
