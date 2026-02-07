# Chapter 27. An Overview of the C API

- [ ] A First Example
- [ ] The Stack
  - [ ] Pushing elements
  - [ ] Querying elements
  - [ ] Other stack operations
- [ ] Error Handling with the C API
  - [ ] Error handling in application code
  - [ ] Error handling in library code
- [ ] Memory Allocation

## Exercises (page 234)

### Exercise 27.1

> Compile and run the simple stand-alone interpreter (Figure 27.1, "A bare-bones
> stand-alone Lua interpreter").

### Exercise 27.2

> Assume the stack is empty. What will be its contents after the following
> sequence of calls?
>
> ```c
> lua_pushnumber(L, 3.5);
> lua_pushstring(L, "hello");
> lua_pushnil(L);
> lua_rotate(L, 1, -1);
> lua_pushvalue(L, -2);
> lua_remove(L, 1);
> lua_insert(L, -2);
> ```

### Exercise 27.3

> Use the function `stackDump` (Figure 27.2, "Dumping the stack") to check your
> answer to the previous exercise.
