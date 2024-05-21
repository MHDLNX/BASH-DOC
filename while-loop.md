The `while` loop in Bash is used to execute a block of commands repeatedly as long as a given condition is true. It's a fundamental construct for creating loops in shell scripts and is particularly useful when the number of iterations is not known in advance. Here’s a detailed explanation of the `while` loop, including syntax, examples, and common use cases.

### Basic Syntax

```sh
while [ condition ]
do
    commands
done
```

### Components

- **Condition**: The test or condition that determines whether the loop continues. It is evaluated before each iteration of the loop.
- **Commands**: The block of commands that will be executed repeatedly as long as the condition is true.

### Examples

#### Example 1: Basic `while` Loop

```sh
#!/bin/bash

counter=1

while [ $counter -le 5 ]
do
    echo "Counter: $counter"
    ((counter++))
done
```

This script will output:
```
Counter: 1
Counter: 2
Counter: 3
Counter: 4
Counter: 5
```

### Explanation

1. **Initialization**: The variable `counter` is initialized to `1`.
2. **Condition Check**: `[ $counter -le 5 ]` checks if `counter` is less than or equal to `5`.
3. **Body Execution**: The `echo` command prints the current value of `counter`.
4. **Increment**: `((counter++))` increments the value of `counter` by `1`.
5. **Repeat**: The loop repeats until the condition `[ $counter -le 5 ]` is no longer true.

#### Example 2: Reading Lines from a File

```sh
#!/bin/bash

file="input.txt"

while IFS= read -r line
do
    echo "Line: $line"
done < "$file"
```

This script reads each line from `input.txt` and prints it.

### Explanation

1. **File Descriptor**: `< "$file"` redirects the input from `input.txt`.
2. **IFS**: Setting `IFS=` ensures that leading/trailing whitespace is preserved.
3. **read**: Reads each line into the variable `line`.
4. **echo**: Prints each line.

#### Example 3: Infinite Loop

```sh
#!/bin/bash

while true
do
    echo "Press [CTRL+C] to stop.."
    sleep 1
done
```

This script runs indefinitely until interrupted.

### Explanation

1. **Condition**: `true` always evaluates to true, creating an infinite loop.
2. **Body Execution**: Prints a message and sleeps for 1 second on each iteration.

### Advanced Usage

#### Example 4: Using Multiple Conditions

```sh
#!/bin/bash

x=0
y=10

while [ $x -le 10 ] && [ $y -ge 0 ]
do
    echo "x: $x, y: $y"
    ((x++))
    ((y--))
done
```

This script uses multiple conditions to control the loop.

### Explanation

1. **Condition Check**: `[ $x -le 10 ] && [ $y -ge 0 ]` ensures both conditions must be true for the loop to continue.
2. **Body Execution**: Prints the values of `x` and `y`.
3. **Increment/Decrement**: Increments `x` and decrements `y`.

### Common Use Cases

1. **Reading Input**: Processing lines from a file or user input.
2. **Polling**: Checking for a condition at regular intervals (e.g., waiting for a file to be created).
3. **Infinite Loops**: Running a task indefinitely until manually stopped.
4. **Complex Conditions**: Using more complex logical conditions for looping.

### Summary

- **Basic Syntax**: `while [ condition ]; do commands; done`
- **Initialization**: Set up initial values before the loop.
- **Condition**: Evaluated before each iteration to determine if the loop should continue.
- **Body Execution**: Commands executed repeatedly as long as the condition is true.
- **Increment/Modification**: Update variables within the loop to eventually make the condition false.

### Example Summary

- **Basic Loop**: Iterating a fixed number of times.
- **Reading Files**: Processing each line of a file.
- **Infinite Loop**: Running indefinitely until a manual interruption.
- **Multiple Conditions**: Using logical conditions to control the loop.

The `while` loop is a versatile tool in shell scripting, allowing for a wide range of looping scenarios, from simple iterations to complex condition-based loops.
