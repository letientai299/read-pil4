# Chapter 24. Coroutines

- [ ] Coroutine Basics
- [ ] Who Is the Boss?
- [ ] Coroutines as Iterators
- [ ] Event-Driven Programming

## Exercises (page 204)

### Exercise 24.1

> Rewrite the producer--consumer example in the section called "Who Is the
> Boss?" using a producer-driven design, where the consumer is the coroutine and
> the producer is the main thread.

### Exercise 24.2

> [Exercise 6.5](../part_1/ch06_functions.md#exercise-65) asked you to write a
> function that prints all combinations of the elements in a given array. Use
> coroutines to transform this function into a generator for combinations, to be
> used like here:
>
> ```lua
> for c in combinations({"a", "b", "c"}, 2) do
>   printResult(c)
> end
> ```

### Exercise 24.3

> In Figure 24.5, "Running synchronous code on top of the asynchronous library",
> both the functions `getline` and `putline` create a new closure each time they
> are called. Use memorization to avoid this waste.

### Exercise 24.4

> Write a line iterator for the coroutine-based library (Figure 24.5, "Running
> synchronous code on top of the asynchronous library"), so that you can read
> the file with a for loop.

### Exercise 24.5

> Can you use the coroutine-based library (Figure 24.5, "Running synchronous
> code on top of the asynchronous library") to run multiple threads
> concurrently? What would you have to change?

### Exercise 24.6

> Implement a transfer function in Lua. If you think about resume--yield as
> similar to call--return, a transfer would be like a goto: it suspends the
> running coroutine and resumes any other coroutine, given as an argument.
> (Hint: use a kind of dispatch to control your coroutines. Then, a transfer
> would yield to the dispatch signaling the next coroutine to run, and the
> dispatch would resume that next coroutine.)
