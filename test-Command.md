## Test Commands 

The `test` command in the shell is a built-in utility that evaluates conditional expressions and returns an exit status based on whether the expression is true or false. It is often used in scripts to perform comparisons and checks. The `test` command can be invoked in two forms: `test expression` and `[ expression ]`. Both forms are equivalent and interchangeable.

### Syntax

```sh
test expression
```

or

```sh
[ expression ]
```

### Common Uses and Examples

#### 1. File Tests

- **Check if a file exists:**

  ```sh
  if test -e /path/to/file; then
      echo "File exists."
  else
      echo "File does not exist."
  fi

  # Equivalent using square brackets
  if [ -e /path/to/file ]; then
      echo "File exists."
  else
      echo "File does not exist."
  fi
  ```

- **Check if a file is a regular file:**

  ```sh
  if [ -f /path/to/file ]; then
      echo "It's a regular file."
  fi
  ```

- **Check if a directory exists:**

  ```sh
  if [ -d /path/to/directory ]; then
      echo "Directory exists."
  fi
  ```

- **Check if a file is readable:**

  ```sh
  if [ -r /path/to/file ]; then
      echo "File is readable."
  fi
  ```

- **Check if a file is writable:**

  ```sh
  if [ -w /path/to/file ]; then
      echo "File is writable."
  fi
  ```

- **Check if a file is executable:**

  ```sh
  if [ -x /path/to/file ]; then
      echo "File is executable."
  fi
  ```

#### 2. String Tests

- **Check if two strings are equal:**

  ```sh
  str1="hello"
  str2="world"

  if [ "$str1" = "$str2" ]; then
      echo "Strings are equal."
  else
      echo "Strings are not equal."
  fi
  ```

- **Check if a string is not empty:**

  ```sh
  str="hello"

  if [ -n "$str" ]; then
      echo "String is not empty."
  fi
  ```

- **Check if a string is empty:**

  ```sh
  str=""

  if [ -z "$str" ]; then
      echo "String is empty."
  fi
  ```

#### 3. Numeric Tests

- **Check if two numbers are equal:**

  ```sh
  num1=5
  num2=10

  if [ "$num1" -eq "$num2" ]; then
      echo "Numbers are equal."
  else
      echo "Numbers are not equal."
  fi
  ```

- **Check if one number is less than another:**

  ```sh
  if [ "$num1" -lt "$num2" ]; then
      echo "$num1 is less than $num2."
  fi
  ```

- **Check if one number is greater than another:**

  ```sh
  if [ "$num1" -gt "$num2" ]; then
      echo "$num1 is greater than $num2."
  fi
  ```

#### 4. Combining Conditions

You can combine multiple conditions using logical operators:

- **AND (`&&`):**

  ```sh
  if [ "$num1" -lt "$num2" ] && [ "$num1" -gt 0 ]; then
      echo "$num1 is less than $num2 and greater than 0."
  fi
  ```

- **OR (`||`):**

  ```sh
  if [ "$num1" -lt 0 ] || [ "$num2" -lt 0 ]; then
      echo "One of the numbers is negative."
  fi
  ```

#### 5. Negation

You can negate a condition using the `!` operator:

```sh
if [ ! -f /path/to/file ]; then
    echo "File does not exist."
fi
```

### Summary of Test Operators

- **File operators:**
  - `-e FILE`: FILE exists.
  - `-f FILE`: FILE exists and is a regular file.
  - `-d FILE`: FILE exists and is a directory.
  - `-r FILE`: FILE exists and is readable.
  - `-w FILE`: FILE exists and is writable.
  - `-x FILE`: FILE exists and is executable.

- **String operators:**
  - `-z STRING`: STRING is empty.
  - `-n STRING`: STRING is not empty.
  - `STRING1 = STRING2`: STRING1 is equal to STRING2.
  - `STRING1 != STRING2`: STRING1 is not equal to STRING2.

- **Numeric operators:**
  - `NUM1 -eq NUM2`: NUM1 is equal to NUM2.
  - `NUM1 -ne NUM2`: NUM1 is not equal to NUM2.
  - `NUM1 -lt NUM2`: NUM1 is less than NUM2.
  - `NUM1 -le NUM2`: NUM1 is less than or equal to NUM2.
  - `NUM1 -gt NUM2`: NUM1 is greater than NUM2.
  - `NUM1 -ge NUM2`: NUM1 is greater than or equal to NUM2.

The `test` command and its equivalent `[ expression ]` are powerful tools in shell scripting, allowing for a wide range of conditional checks and controls.






