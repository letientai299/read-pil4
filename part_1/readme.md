# The Basics

## Chapter 1. Getting Started

- Seems like std lib can be used without importing.

- [x] Chunks

  - `lua -i prog.lua`: start interpreter after executing a program.
  - `dofile` executes a file within an interpreter session.

- [x] Some Lexical Conventions

  Trick: block comment `--[[... ]]--`

  ```lua
  --[[
  print(1)
  --]]
  ```

  Reactivate the code by adding one more hyphen, cause `---[[` to become a line
  comment.

- [x] Global Variables Done
- [x] Types and Values

  `userdata` is the type for C API, library and other things.

  - [x] Nil
  - [x] Booleans

- [x] The Stand-Alone Interpreter
  - Program `arg` contains negative indices, `0` is the program file name,
    positive indices are its args, negative indice are for the lua executable.

### Exercises

#### Exercise 1.1

> Run the factorial example. What happens to your program if you enter a
> negative number?

Stack overflow

> Modify the example to avoid this problem.

Skipped.

#### Exercise 1.2

> Run the twice example, both by loading the file with the `-l` option and with
> `dofile`. Which way do you prefer?

I don't like both. I don't like using interpreter in general. I prefer
statically compiled binary or all-in-one fat-jar.

#### Exercise 1.3

> Can you name other languages that use `--` for comments?

I can only think of SQL.

#### Exercise 1.4

> Which of the following strings are valid identifiers?
>
> `___` `_end` `End` `end` `until?` `nil` `NULL` `one-step`

Valid identifiers are: `_end`, `___`, `End`, `NULL`, `one-step`.

#### Exercise 1.5

> What is the value of the expression `type(nil) == nil`? (You can use Lua to
> check your answer.) Can you explain this result?

`type(nil)` returns a non empty string (`nil`), which is not equal the _value_
`nil`. So, that expression is evaluated to `false`.

#### Exercise 1.6

> How can you check whether a value is a Boolean without using the function
> `type`?

Test with both built-in `true` and `false`:

```lua
function is_bool(x)
  return x == true or x == false
end
```

#### Exercise 1.7

> Consider the following expression: `(x and y and (not z)) or ((not y) and x)`
>
> Are the parentheses necessary? Would you recommend their use in that
> expression?

Parentheses are necessary to avoid confusions. `(not z)` doesn't need
parentheses, but `(not y)` need that, otherwise, it's not easy to not whether
`not y and x` mean `(not y) and x` or `not (y and x)`.

### Exercise 1.8

> Write a simple script that prints its own name without knowing it in advance.

```lua
print(arg[0])
```

## Chapter 2. Interlude: The Eight-Queen Puzzle

- [ ] Exercises

## Chapter 3. Numbers

- [ ] Numerals
- [ ] Arithmetic Operators
- [ ] Relational Operators
- [ ] The Mathematical Library
  - [ ] Random-number generator
  - [ ] Rounding functions
- [ ] Representation Limit
  - [ ] Conversions
- [ ] Precedence
- [ ] Lua Before Integers
- [ ] Exercises

## Chapter 4. Strings

- [ ] Literal strings
- [ ] Long strings
- [ ] Coercions
- [ ] The String Library
- [ ] Unicode
- [ ] Exercises

## Chapter 5. Tables

- [ ] Table Indices
- [ ] Table Constructors
- [ ] Arrays, Lists, and Sequences
- [ ] Table Traversal
- [ ] Safe Navigation
- [ ] The Table Library
- [ ] Exercises

## Chapter 6. Functions

- [ ] Multiple Results
- [ ] Variadic Functions
- [ ] The function table.unpack
- [ ] Proper Tail Calls
- [ ] Exercises

## Chapter 7. The External World

- [ ] The Simple I/O Model
- [ ] The Complete I/O Model
- [ ] Other Operations on Files
- [ ] Other System Calls
  - [ ] Running system commands
- [ ] Exercises

## Chapter 8. Filling some Gaps

- [ ] Local Variables and Blocks
- [ ] Control Structures
  - [ ] if then else
  - [ ] while
  - [ ] repeat
  - [ ] Numerical for
  - [ ] Generic for
  - [ ] break, return, and goto
  - [ ] Exercises
