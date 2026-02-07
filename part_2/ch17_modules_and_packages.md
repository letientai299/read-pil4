# Chapter 17. Modules and Packages

- [ ] The Function require
  - [ ] Renaming a module
  - [ ] Path searching
  - [ ] Searchers
- [ ] The Basic Approach for Writing Modules in Lua
- [ ] Submodules and Packages

## Exercises (page 138 - 138)

### Exercise 17.1

> Rewrite the implementation of double-ended queues (Figure 14.2, "A
> double-ended queue") as a proper module.

### Exercise 17.2

> Rewrite the implementation of the geometric-region system (the section called
> "A Taste of Functional Programming") as a proper module.

### Exercise 17.3

> What happens in the search for a library if the path has some fixed component
> (that is, a component without a question mark)? Can this behavior be useful?

### Exercise 17.4

> Write a searcher that searches for Lua files and C libraries at the same time.
> For instance, the path used for this searcher could be something like this:
>
> ```
> ./?.lua;./?.so;/usr/lib/lua5.2/?.so;/usr/share/lua5.2/?.lua
> ```
>
> (Hint: use `package.searchpath` to find a proper file and then try to load it,
> first with `loadfile` and next with `package.loadlib`.)
