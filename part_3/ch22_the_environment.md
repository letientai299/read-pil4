# Chapter 22. The Environment

- [ ] Global Variables with Dynamic Names
- [ ] Global-Variable Declarations
- [ ] Non-Global Environments
- [ ] Using \_ENV
- [ ] Environments and Modules
- [ ] \_ENV and load

## Exercises (page 182)

### Exercise 22.1

> The function `getfield` that we defined in the beginning of this chapter is
> too forgiving, as it accepts "fields" like `math?sin` or `string!!!gsub`.
> Rewrite it so that it accepts only single dots as name separators.

### Exercise 22.2

> Explain in detail what happens in the following program and what it will
> print.
>
> ```lua
> local foo
> do
>   local _ENV = _ENV
>   function foo () print(X) end
> end
> X = 13
> _ENV = nil
> foo()
> X = 0
> ```

### Exercise 22.3

> Explain in detail what happens in the following program and what it will
> print.
>
> ```lua
> local print = print
> function foo (_ENV, a)
>   print(a + b)
> end
>
> foo({b = 14}, 12)
> foo({b = 10}, 1)
> ```
