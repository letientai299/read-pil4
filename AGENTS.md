# AGENTS.md

This file provides guidance to AI when working with code in this repository.
This project is a personal learning repository for studying **Programming in
Lua, 4th Edition (PIL4)**.

## Repository Structure

- `pil4.pdf` - The PIL4 book reference
- Each part directory contains a `readme.md` with chapter notes and exercise
  tracking.

## Working with the PDF

- Don't try to read the full PDF. Ask the user for which pages to read. Use
  local PDF related CLIs to extract their contents.
- Page start at 1 (to match with the page number shown by PDF reader).
- PDF text extraction (`pdftotext`) strips formatting (italic, bold). Be aware
  that the original text may have emphasis not visible in extracted output.

## Adding Exercises to Chapter Notes

Each chapter markdown file has an exercises section at the bottom. Follow these
rules when adding exercises from the book.

### Structure

- Use `## Exercises (page pp - pp)` (level 2 heading) as the section header.
  Include the PDF page range where the exercises are found, e.g.
  `## Exercises (page 43 - 44)`.
- Use `### Exercise X.Y` (level 3 heading) for each exercise.
- Present the exercise question text in a blockquote (`>`).
- Code examples within questions use fenced code blocks inside the blockquote.
- Answers (when written) go below the blockquote as plain content.

### Inline formatting

Use the correct markdown syntax depending on what the text represents:

- **Inline code** (`` ` ``): Lua code — function names, keywords, expressions,
  variable names that refer to actual code. Examples: `table.concat`,
  `os.execute`, `elseif`, `goto`, `a.a.a.a`, `{a0, a1, ..., an}`.
- **Math** (`$`): Mathematical variables, formulas, and equations. Examples:
  $n$, $m$, $x$, $C(n,m) = C(n-1, m-1) + C(n-1, m)$,
  $a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$.
- **Italic** (`*`): Emphasized terms, as they appear in the book. Example:
  _properly tail recursive_.

### Post-processing

- Run `prettier` on the markdown file after editing to ensure consistent
  formatting.

### Example

```markdown
## Exercises (page 52 - 53)

### Exercise 5.4

> We can represent a polynomial $a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$
> in Lua as a list of its coefficients, such as `{a0, a1, ..., an}`.
>
> Write a function that takes a polynomial (represented as a table) and a value
> for $x$ and returns the polynomial value.
```
