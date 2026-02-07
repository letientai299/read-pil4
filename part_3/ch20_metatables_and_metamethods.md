# Chapter 20. Metatables and Metamethods

- [ ] Arithmetic Metamethods
- [ ] Relational Metamethods
- [ ] Library-Defined Metamethods
- [ ] Table-Access Metamethods
  - [ ] The \_\_index metamethod
  - [ ] The \_\_newindex metamethod
  - [ ] Tables with default values
  - [ ] Tracking table accesses
  - [ ] Read-only tables

## Exercises (page 160 - 161)

### Exercise 20.1

> Define a metamethod `__sub` for sets that returns the difference of two sets.
> (The set $a - b$ is the set of elements from $a$ that are not in $b$.)

### Exercise 20.2

> Define a metamethod `__len` for sets so that `#s` returns the number of
> elements in the set $s$.

### Exercise 20.3

> An alternative way to implement read-only tables might use a function as the
> `__index` metamethod. This alternative makes accesses more expensive, but the
> creation of read-only tables is cheaper, as all read-only tables can share a
> single metatable. Rewrite the function `readOnly` using this approach.

### Exercise 20.4

> Proxy tables can represent other kinds of objects besides tables. Write a
> function `fileAsArray` that takes the name of a file and returns a proxy to
> that file, so that after a call `t = fileAsArray("myFile")`, an access to
> `t[i]` returns the $i$-th byte of that file, and an assignment to `t[i]`
> updates its $i$-th byte.

### Exercise 20.5

> Extend the previous example to allow us to traverse the bytes in the file with
> `pairs(t)` and get the file length with `#t`.
