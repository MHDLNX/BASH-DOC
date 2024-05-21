In Bash scripting, the `if` condition is used to execute a block of code based on whether a specified condition is true or false. The general structure of the `if` condition in a Bash script is as follows:

### Basic Structure

```bash
if [ condition ]; then
    # commands to execute if the condition is true
fi
```

### Adding `else` and `elif`

You can extend the `if` statement with `else` and `elif` to handle multiple conditions.

```bash
if [ condition ]; then
    # commands to execute if the condition is true
elif [ another_condition ]; then
    # commands to execute if the another_condition is true
else
    # commands to execute if none of the above conditions are true
fi
```

### Detailed Examples

#### Example 1: Simple If Statement

```bash
#!/bin/bash

if [ -f /etc/passwd ]; then
    echo "The file /etc/passwd exists."
fi
```

In this example, the script checks if the file `/etc/passwd` exists using the `-f` (file) test.

#### Example 2: If-Else Statement

```bash
#!/bin/bash

if [ -f /etc/passwd ]; then
    echo "The file /etc/passwd exists."
else
    echo "The file /etc/passwd does not exist."
fi
```

Here, the script checks if the file `/etc/passwd` exists. If it does, it prints a message; otherwise, it prints a different message.

#### Example 3: If-Elif-Else Statement

```bash
#!/bin/bash

number=10

if [ $number -lt 10 ]; then
    echo "The number is less than 10."
elif [ $number -eq 10 ]; then
    echo "The number is equal to 10."
else
    echo "The number is greater than 10."
fi
```

This script checks a variable `number` and prints different messages based on whether the number is less than, equal to, or greater than 10.

### Conditional Expressions

In Bash, conditions can use various operators:

- **File Operators:**
  - `-f`: Check if a file exists.
  - `-d`: Check if a directory exists.
  - `-e`: Check if a file or directory exists.
  - `-r`: Check if a file is readable.
  - `-w`: Check if a file is writable.
  - `-x`: Check if a file is executable.

- **String Operators:**
  - `=`: Check if two strings are equal.
  - `!=`: Check if two strings are not equal.
  - `-z`: Check if a string is empty.
  - `-n`: Check if a string is not empty.

- **Arithmetic Operators:**
  - `-lt`: Less than.
  - `-le`: Less than or equal to.
  - `-eq`: Equal to.
  - `-ne`: Not equal to.
  - `-gt`: Greater than.
  - `-ge`: Greater than or equal to.

### Example with String Comparison

```bash
#!/bin/bash

str="hello"

if [ "$str" = "hello" ]; then
    echo "The string is hello."
else
    echo "The string is not hello."
fi
```

### Example with File Checks

```bash
#!/bin/bash

file="/path/to/file"

if [ -e "$file" ]; then
    echo "The file exists."
    if [ -r "$file" ]; then
        echo "The file is readable."
    fi
    if [ -w "$file" ]; then
        echo "The file is writable."
    fi
    if [ -x "$file" ]; then
        echo "The file is executable."
    fi
else
    echo "The file does not exist."
fi
```

### Combining Conditions

You can combine multiple conditions using logical operators:

- `&&`: Logical AND
- `||`: Logical OR

```bash
#!/bin/bash

num=5

if [ $num -gt 0 ] && [ $num -lt 10 ]; then
    echo "The number is between 1 and 9."
fi
```

This structure and variety of operators allow you to create complex conditional logic in your Bash scripts.
