# Chapter 3. Numbers

- [x] Numerals
  - lua 5.3 separates `integer` and `float`
  - `string.format` has `%a` for showing hex format fo a float.
- [x] Arithmetic Operators
  - Floor division is `//`.
  - Exponentiation `^` always operate with float, `2^2` is a float.
- [x] Relational Operators
  - `~=` instead of `!=`.
- [x] The Mathematical Library
  - [x] Random-number generator
  - [x] Rounding functions
    - Function in lula can return multiple values.
- [x] Representation Limit
- [x] Conversions
  - Force int to float: `+0.0`.
  - Force float to int: OR with zero `2^2 | 0`, raise error if conversion fails.
- [x] Precedence
- [x] Lua Before Integers

## Exercises (page 34 - 35)

### Exercise 3.1

> Which of the following are valid numerals? What are their values?
>
> `.0e12` `.e12` `0.0e` `0x12` `0xABFG` `0xA` `FFFF` `0xFFFFFFFF` `0x` >
> `0x1P10` > `0.1e1` `0x0.1p1`

Valid numerals and their values are:

- `.0e12`: 0
- `0x12`: 18
- `0xA`:10
- `0xFFFFFFFF`: 4294967295
- `0x1P10`: 1024.0, `P` is power of 2, the value is $1x2^10$
- `0.1e1`: 1.0
- `0x0.1p1`: `0x0.1` is $\frac{1}{16}$, `p1` is $2^1$, so the value is
  $\frac{1}{8}$, i.e. $0.125$.

### Exercise 3.2

> Explain the following results:
>
> ```lua
> > math.maxinteger * 2                --> -2
> > math.mininteger * 2                --> 0
> > math.maxinteger * math.maxinteger  --> 1
> > math.mininteger * math.mininteger  --> 0
> ```
>
> (Remember that integer arithmetic always wraps around.)

Skipped

### Exercise 3.3

> What will the following program print?
>
> ```lua
> for i = -10, 10 do
>   print(i, i % 3)
> end
> ```

```
-10 2
-9  0
-8  1
-7  2
-6  0
-5  1
-4  2
-3  0
-2  1
-1  2
0   0
1   1
2   2
3   0
4   1
5   2
6   0
7   1
8   2
9   0
10  1
```

### Exercise 3.4

> What is the result of the expression `2^3^4`? What about `2^-3^4`?

My instinction is wrong. The result is not this one

$$
{2^3}^4 = 8^4 = 4096
$$

The actual value is $2^{3^4} = 2^{81}$, a huge number. That's because
**exponentiation is right associative**.

~~The other value should be $2^{81}$ as well.~~

Wrong again. Exponentiation has higher precedece than unary `-`, so the result
is $2^{-3^4} = 2 ^ {-81}$, a very small number.

### Exercise 3.5

> The number 12.7 is equal to the fraction 127/10, where the denominator is a
> power of ten. Can you express it as a common fraction where the denominator is
> a power of two? What about the number 5.5?

12.7 can't be express as a fraction where denominator is a power of 2. But 5.5
can, it is $\frac{11}{2}$.

### Exercise 3.6

> Write a function to compute the volume of a right circular cone, given its
> height and the angle between a generatrix and the axis.

See [./ex_3.6.lua](./ex_3.6.lua)

### Exercise 3.7

> Using `math.random`, write a function to produce a pseudo-random number with a
> standard normal (Gaussian) distribution.

Skipped. I forgot everything about Gaussian distribution.
