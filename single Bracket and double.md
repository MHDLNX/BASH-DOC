In Bash scripting, `=` and `==` are both used for string comparison, but their usage depends on the context and the type of conditional expression being used.

### Single Brackets `[ ... ]`

When using single brackets `[ ... ]`, `=` is the correct operator for string comparison:

```sh
str1="mahdi"
str2="mahdi"

if [ "$str1" = "$str2" ]; then
    echo "they are equal"
else
    echo "they are not equal"
fi
```

- **`=`**: This operator is used for string comparison within the single bracket test command `[ ... ]`. It checks if the two strings are equal.
- **`==`**: In `[ ... ]`, `==` is technically supported in some implementations (such as in Bash), but it is not specified by POSIX for single brackets, so it is less portable. It is best to use `=` for portability.

### Double Brackets `[[ ... ]]`

When using double brackets `[[ ... ]]`, both `=` and `==` are valid for string comparison:

```sh
str1="mahdi"
str2="mahdi"

if [[ "$str1" == "$str2" ]]; then
    echo "they are equal"
else
    echo "they are not equal"
fi
```

- **`=`**: This operator can be used for string comparison within double brackets, just like in single brackets.
- **`==`**: This operator is fully supported within double brackets and is often preferred for string comparison. It also allows for pattern matching when using wildcard characters.

### Key Differences and Usage

1. **Context**:
   - Use `=` in both `[ ... ]` and `[[ ... ]]` for string equality checks.
   - Use `==` in `[[ ... ]]` for string equality checks and pattern matching.

2. **Portability**:
   - `[ ... ]` is more portable across different Unix-like systems, so using `=` within it is more consistent.
   - `[[ ... ]]` is specific to Bash and some other modern shells (like Zsh), providing more features and better syntax, making `==` the preferred choice when available.

3. **Pattern Matching**:
   - In `[[ ... ]]`, `==` can be used for pattern matching with wildcards. For example:

     ```sh
     str="mahdi"

     if [[ "$str" == m* ]]; then
         echo "The string starts with 'm'."
     fi
     ```

### Example Comparison

#### Single Brackets `[ ... ]`

```sh
str1="mahdi"
str2="mahdi"

if [ "$str1" = "$str2" ]; then
    echo "they are equal"
else
    echo "they are not equal"
fi
```

#### Double Brackets `[[ ... ]]`

```sh
str1="mahdi"
str2="mahdi"

if [[ "$str1" == "$str2" ]]; then
    echo "they are equal"
else
    echo "they are not equal"
fi
```

Both examples will output "they are equal". However, using double brackets `[[ ... ]]` with `==` is often preferred in Bash scripts for its enhanced capabilities and readability.
