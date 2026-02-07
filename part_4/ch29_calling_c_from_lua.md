# Chapter 29. Calling C from Lua

- [ ] C Functions
- [ ] Continuations
- [ ] C Modules

## Exercises (page 253)

### Exercise 29.1

> Write a variadic summation function, in C, that computes the sum of its
> variable number of numeric arguments:
>
> ```lua
> print(summation())              --> 0
> print(summation(2.3, 5.4))      --> 7.7
> print(summation(2.3, 5.4, -34)) --> -26.3
> print(summation(2.3, 5.4, {}))
>     --> stdin:1: bad argument #3 to 'summation'
>             (number expected, got table)
> ```

### Exercise 29.2

> Implement a function equivalent to `table.pack`, from the standard library.

### Exercise 29.3

> Write a function that takes any number of parameters and returns them in
> reverse order.
>
> ```lua
> print(reverse(1, "hello", 20)) --> 20   hello   1
> ```

### Exercise 29.4

> Write a function `foreach` that takes a table and a function and calls that
> function for each key--value pair in the table.
>
> ```lua
> foreach({x = 10, y = 20}, print)
>     --> x   10
>     --> y   20
> ```
>
> (Hint: check the function `lua_next` in the Lua manual.)

### Exercise 29.5

> Rewrite the function `foreach`, from the previous exercise, so that the
> function being called can yield.

### Exercise 29.6

> Create a C module with all functions from the previous exercises.
