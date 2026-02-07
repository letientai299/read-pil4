# Chapter 8. Filling some Gaps

- [ ] Local Variables and Blocks
- [ ] Control Structures
  - [ ] if then else
  - [ ] while
  - [ ] repeat
  - [ ] Numerical for
  - [ ] Generic for
  - [ ] break, return, and goto

## Exercises (page 75 - 76)

### Exercise 8.1

> Most languages with a C-like syntax do not offer an `elseif` construct. Why
> does Lua need this construct more than those languages?

### Exercise 8.2

> Describe four different ways to write an unconditional loop in Lua. Which one
> do you prefer?

### Exercise 8.3

> Many people argue that `repeat--until` is seldom used, and therefore it should
> not be present in a minimalistic language like Lua. What do you think?

### Exercise 8.4

> As we saw in the section called "Proper Tail Calls", a tail call is a `goto`
> in disguise. Using this idea, reimplement the simple maze game from the
> section called "break, return, and goto" using tail calls. Each block should
> become a new function, and each `goto` becomes a tail call.

### Exercise 8.5

> Can you explain why Lua has the restriction that a `goto` cannot jump out of a
> function? (Hint: how would you implement that feature?)

### Exercise 8.6

> Assuming that a `goto` could jump out of a function, explain what the program
> in Figure 8.3, "A strange (and invalid) use of a goto" would do.
>
> ```lua
> function getlabel ()
>   return function () goto L1 end
>   ::L1::
>   return 0
> end
>
> function f (n)
>   if n == 0 then return getlabel()
>   else
>     local res = f(n - 1)
>     print(n)
>     return res
>   end
> end
>
> x = f(10)
> x()
> ```
>
> (Try to reason about the label using the same scoping rules used for local
> variables.)
