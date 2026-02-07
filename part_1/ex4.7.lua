local function is_space(c)
	return string.match(utf8.char(c), "%s") ~= nil
end

local function is_punctuations(c)
	return string.match(utf8.char(c), "%p") ~= nil
end

--- Check if a string is a palindrome
--- @param s string
--- @param lax boolean? ignore spaces, punctuations
local function ispali(s, lax)
	local n = utf8.len(s)
	assert(n, "invalid UTF-8 string")
	local i = 1
	local j = n
	while i < j do
		local a = utf8.codepoint(s, utf8.offset(s, i))
		if is_space(a) or is_punctuations(a) then
			i = i + 1
			goto next
		end

		local b = utf8.codepoint(s, utf8.offset(s, j))
		if is_space(b) or is_punctuations(b) then
			j = j - 1
			goto next
		end

		if a ~= b then
			return false
		end
		i = i + 1
		j = j - 1
		::next::
	end
	return true
end

local tests = {
	-- from the books
	{ "step on no pets", true },
	{ "banana", false },
	-- Unicode without ignoring spaces and punctuations
	{ "àbà", true },
	{ "αβα", true },
	{ "上下上", true },
	{ "上下下上", true },
	{ "àbç", false },
	-- Lax: ignore spaces and punctuations
	{ "à,? b à", true, true },
	{ "α, β, α", true, true },
	{ "上...下...上", true, true },
	{ "step. on! no!! pets...", true, true },
	{ "a,b,,a", true, true },
	{ "a b c", false, true },
}

for _, t in ipairs(tests) do
	local input, expected, lax = t[1], t[2], t[3]
	local got = ispali(input, lax)
	local mark = got == expected and "✓" or "✗"
	local args = string.format('"%s"', input)
	if lax then
		args = args .. ", true"
	end
	print(string.format("%s ispali(%s) => %s", mark, args, tostring(got)))
	assert(
		got == expected,
		string.format("expected %s, got %s", tostring(expected), tostring(got))
	)
end
