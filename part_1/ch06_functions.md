# Chapter 6. Functions

- [ ] Multiple Results
- [ ] Variadic Functions
- [ ] The function table.unpack
- [ ] Proper Tail Calls

## Exercises (page 61)

### Exercise 6.1

> Write a function that takes an array and prints all its elements.

### Exercise 6.2

> Write a function that takes an arbitrary number of values and returns all of
> them, except the first one.

### Exercise 6.3

> Write a function that takes an arbitrary number of values and returns all of
> them, except the last one.

### Exercise 6.4

> Write a function to shuffle a given list. Make sure that all permutations are
> equally probable.

### Exercise 6.5

> Write a function that takes an array and prints all combinations of the
> elements in the array. (Hint: you can use the recursive formula for
> combination: $C(n,m) = C(n-1, m-1) + C(n-1, m)$. To generate all $C(n,m)$
> combinations of $n$ elements in groups of size $m$, you first add the first
> element to the result and then generate all $C(n-1, m-1)$ combinations of the
> remaining elements in the remaining slots; then you remove the first element
> from the result and then generate all $C(n-1, m)$ combinations of the
> remaining elements in the free slots. When $n$ is smaller than $m$, there are
> no combinations. When $m$ is zero, there is only one combination, which uses
> no elements.)

### Exercise 6.6

> Sometimes, a language with proper-tail calls is called _properly tail
> recursive_, with the argument that this property is relevant only when we have
> recursive calls. (Without recursive calls, the maximum call depth of a program
> would be statically fixed.)
>
> Show that this argument does not hold in a dynamic language like Lua: write a
> program that performs an unbounded call chain without recursion. (Hint: see
> the section called "Compilation".)
