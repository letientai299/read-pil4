# Chapter 5. Tables

- [ ] Table Indices
- [ ] Table Constructors
- [ ] Arrays, Lists, and Sequences
- [ ] Table Traversal
- [ ] Safe Navigation
- [ ] The Table Library

## Exercises (page 52 - 53)

### Exercise 5.1

> What will the following script print? Explain.
>
> ```lua
> sunday = "monday"; monday = "sunday"
> t = {sunday = "monday", [sunday] = monday}
> print(t.sunday, t[sunday], t[t.sunday])
> ```

### Exercise 5.2

> Assume the following code:
>
> ```lua
> a = {};  a.a = a
> ```
>
> What would be the value of `a.a.a.a`? Is any `a` in that sequence somehow
> different from the others?
>
> Now, add the next line to the previous code:
>
> ```lua
> a.a.a.a = 3
> ```
>
> What would be the value of `a.a.a.a` now?

### Exercise 5.3

> Suppose that you want to create a table that maps each escape sequence for
> strings (the section called "Literal strings") to its meaning. How could you
> write a constructor for that table?

### Exercise 5.4

> We can represent a polynomial $a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$
> in Lua as a list of its coefficients, such as `{a0, a1, ..., an}`.
>
> Write a function that takes a polynomial (represented as a table) and a value
> for $x$ and returns the polynomial value.

### Exercise 5.5

> Can you write the function from the previous item so that it uses at most $n$
> additions and $n$ multiplications (and no exponentiations)?

### Exercise 5.6

> Write a function to test whether a given table is a valid sequence.

### Exercise 5.7

> Write a function that inserts all elements of a given list into a given
> position of another given list.

### Exercise 5.8

> The table library offers a function `table.concat`, which receives a list of
> strings and returns their concatenation:
>
> ```lua
> print(table.concat({"hello", " ", "world"}))  --> hello world
> ```
>
> Write your own version for this function.
>
> Compare the performance of your implementation against the built-in version
> for large lists, with hundreds of thousands of entries.
