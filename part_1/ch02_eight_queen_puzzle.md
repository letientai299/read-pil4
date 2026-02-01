# Chapter 2. Interlude: The Eight-Queen Puzzle

## Exercises

### Exercise 2.1

> Modify the eight-queen program so that it stops after printing the first
> solution.

See [./02_eight_queens.lua](./02_eight_queens.lua).

### Exercise 2.2

> An alternative implementation for the eight-queen problem would be to generate
> all possible permutations of 1 to 8 and, for each permutation, to check
> whether it is valid. Change the program to use this approach. How does the
> performance of the new program compare with the old one? (Hint: compare the
> program calls the function `isplaceok`.)

I won't write code for this since obviously the permutation approach is much
worse. Assuming we're finding all the solution. The permutation solution calls
`isPlaceOk` $8^8$ times. The backtracking solution call to `isPlaceOk` less
because it won't continue with an invalid board.
