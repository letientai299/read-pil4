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
- [ ] Exercises
