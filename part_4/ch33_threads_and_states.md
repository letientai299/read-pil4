# Chapter 33. Threads and States

- [ ] Multiple Threads
- [ ] Lua States

## Exercises (page 292)

### Exercise 33.1

> As we saw, if a function calls `lua_yield` (the version with no continuation),
> control returns to the function that called it when the thread resumes. What
> values does the calling function receive as results from that call?

### Exercise 33.2

> Modify the `lproc` library so that it can send and receive other primitive
> types such as Booleans and numbers without converting them to strings. (Hint:
> you only have to modify the function `movevalues`.)

### Exercise 33.3

> Modify the `lproc` library so that it can send and receive tables. (Hint: you
> can traverse the original table building a copy in the receiving state.)

### Exercise 33.4

> Implement in the `lproc` library a non-blocking send operation.
