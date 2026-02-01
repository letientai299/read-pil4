--------------------------------------------------------------------------------
-- reiplemented based on the book code to have nicer output and also solve
-- chapter 2 exercises.
--------------------------------------------------------------------------------
N = 8 -- board size

-- solution is an array contains N numbers, index is row, value is column.
local function show(board)
	local L = #board
	-- revserse the array because when showing chess board,
	-- a1 square is always the bottom left.
	for i = 1, L / 2 do
		local x = board[i]
		local y = board[L - i + 1]
		board[i] = y
		board[L - i + 1] = x
	end

	-- print chess board column name
	io.write("  ")
	for c = 1, L do -- for each row
		local char = string.byte("a") + c - 1
		local s = string.char(char)
		io.write(" ", s, " ")
	end
	io.write("\n")

	-- print the board with the queens
	for r = 1, L do -- for each row
		io.write(L - r + 1, " ")
		for c = 1, N do -- for each col
			if board[r] == c then
				io.write("[Q]")
			else
				io.write("[ ]")
			end
		end
		io.write("\n")
	end
	io.write("\n")
end

-- check if it's ok to place a new queen at (r, c).
local function isPlaceOk(board, r, c)
	for x = 1, r - 1 do
		local y = board[x]
		if
			(y == c) -- same column
			or (r - x == c - y) -- same diag forward
			or (r - x == y - c) -- same diag backward
		then
			return false
		end
	end
	-- show(board)
	return true
end

-- quickStop, if true, cause the program to stop at the first solution
local function addQueen(board, r, quickStop)
	if r > N then
		show(board)
		return quickStop
	else
		for c = 1, N do
			if isPlaceOk(board, r, c) then
				board[r] = c
				if addQueen(board, r + 1, quickStop) then
					return quickStop
				end
			end
		end
	end
	return false
end

addQueen({}, 1, true)
