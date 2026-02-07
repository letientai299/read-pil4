# Chapter 4. Strings

- String is immutable. Lua use `..` for concat string.

  ```lua
  > 3 + 5
  8
  > 3 .. 5
  35
  > type (3 .. 5)
  string
  ```

- [x] Literal strings
- [x] Long strings
  - Use `[[ ... ]]` for multiline strings.
  - Use `[==[ ... ]==]` if need to have `[[` or `]]` in the string.
- [x] Coercions
  - Auto convert between number and string.
- [x] The String Library
  - `string` library **assume one byte character**!.
  - `string.grub` also returns 2 result: number of replacements.
- [x] Unicode

## Exercises (page 43 - 44)

### Exercise 4.1

> How can you embed the following fragment of XML as a string in a Lua program?
> Show at least two different ways.
>
> ```xml
> <![CDATA[
>   Hello world
> ]]>
> ```

```lua
s = [==[
<![CDATA[
  Hello world
]r>
]==]
print(s)
```

### Exercise 4.2

> Suppose you need to write a long sequence of arbitrary bytes as a literal
> string in Lua. What format would you use? Consider issues like readability,
> maximum line length, and size.

Multiline literal strings enclosed in `[===[` and `]===]`.

### Exercise 4.3

> Write a function to insert a string into a given position of another one:
>
> ```lua
> > insert("hello world", 1, "start: ")    --> start: hello world
> > insert("hello world", 7, "small ")     --> hello small world
> ```

See `./ex4.3.lua`

### Exercise 4.4

> Redo the previous exercise for UTF-8 strings:
>
> ```lua
> > insert("ação", 5, "!")    --> ação!
> ```
>
> (Note that the position now is counted in codepoints.)

See also `./ex4.3.lua`

### Exercise 4.5

> Write a function to remove a slice from a string; the slice should be given by
> its initial position and its length:
>
> ```lua
> > remove("hello world", 7, 4)    --> hello d
> ```

See `./ex4.5.lua`

### Exercise 4.6

> Redo the previous exercise for UTF-8 strings:
>
> ```lua
> > remove("ação", 2, 2)    --> ao
> ```
>
> (Here, both the initial position and the length should be counted in
> codepoints.)

See also `./ex4.5.lua`

### Exercise 4.7

> Write a function to check whether a given string is a palindrome:
>
> ```lua
> > ispali("step on no pets")    --> true
> > ispali("banana")             --> false
> ```

See `./ex4.7.lua`

### Exercise 4.8

> Redo the previous exercise so that it ignores differences in spaces and
> punctuation.

See also `./ex4.7.lua`

### Exercise 4.9

> Redo the previous exercise for UTF-8 strings.

See also `./ex4.7.lua`
