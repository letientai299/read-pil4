--------------------------------------------------------------------------------
-- reiplemented based on the book code
--------------------------------------------------------------------------------
N = 8 -- board size

-- solution is an array contains N numbers, index is row, value is column.
function show(board)
	local L = #board
	-- revserse the array because when showing chess board,
	-- a1 square is always the bottom left.
	for i = 1, L / 2 do
		x = board[i]
		y = board[L - i + 1]
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
end

-- check if it's ok to place a new queen at (r, c).
function isPlaceOk(board, r, c)
	for x = 1, r - 1 do
		y = board[x]
		if
			(y == c) -- same column
			or (r - x == c - y)
			or (r - x == y - c)
		then
			return false
		end
	end
	-- show(board)
	return true
end

function addQueen(board, r)
	if r > N then
		show(board)
		-- NOTE (tai): change this line to return false to print all solutions
		return true
	else
		for c = 1, N do
			if isPlaceOk(board, r, c) then
				board[r] = c
				if addQueen(board, r + 1) then
					return true
				end
			end
		end
	end
	return false
end

addQueen({}, 1)
