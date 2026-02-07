# Chapter 7. The External World

- [ ] The Simple I/O Model
- [ ] The Complete I/O Model
- [ ] Other Operations on Files
- [ ] Other System Calls
  - [ ] Running system commands

## Exercises (page 68)

### Exercise 7.1

> Write a program that reads a text file and rewrites it with its lines sorted
> in alphabetical order. When called with no arguments, it should read from
> standard input and write to standard output. When called with one file-name
> argument, it should read from that file and write to standard output. When
> called with two file-name arguments, it should read from the first file and
> write to the second.

### Exercise 7.2

> Change the previous program so that it asks for confirmation if the user gives
> the name of an existing file for its output.

### Exercise 7.3

> Compare the performance of Lua programs that copy the standard input stream to
> the standard output stream in the following ways:
>
> - byte by byte;
> - line by line;
> - in chunks of 8 kB;
> - the whole file at once.
>
> For the last option, how large can the input file be?

### Exercise 7.4

> Write a program that prints the last line of a text file. Try to avoid reading
> the entire file when the file is large and seekable.

### Exercise 7.5

> Generalize the previous program so that it prints the last $n$ lines of a text
> file. Again, try to avoid reading the entire file when the file is large and
> seekable.

### Exercise 7.6

> Using `os.execute` and `io.popen`, write functions to create a directory, to
> remove a directory, and to collect the entries in a directory.

### Exercise 7.7

> Can you use `os.execute` to change the current directory of your Lua script?
> Why?
