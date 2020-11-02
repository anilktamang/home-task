# Task 1
## Build Instruction

Install [Bash Automated Testing System (BATS)](https://github.com/sstephenson/bats) to run the test for the script.
* _Ubuntu:_ ```sudo apt-get install bats```
* _Mac:_ ```brew install bats```

**Run script:** 
1. Clone the repository from github 
```bash
$ git clone https://github.com/anilktamang/home-task.git
```
2. Change Directory
```bash
$ cd home-task/task1
```
3. Make it executable and run
```bash
$ chmod +x random.sh
```
```bash
$ ./random.sh
```
**Run test for script:** 

To run the tests, invoke the ```bats``` interpreter with a path to a test file
```bash
$ bats test_random.bats
```

## Usage
**Example usage** 
```bash
$ ./random.sh -n NUMBER -vh
```
**Execute script**
```bash
$ ./random.sh
8 2 7 9 10 4 3 1 5 6
```
**Execute test**
```bash
$ bats test_random.bats
✓ By default 10 random numbers will be generated.
 ✓ Sum of numbers from 1 to 10 should be 55
 ✓ Sum of numbers from 1 to 9 should be 45
 ✓ Sum of numbers from 1 to 8 should be 36
 ✓ Sum of numbers from 1 to 7 should be 28
 ✓ Sum of numbers from 1 to 6 should be 21
 ✓ Sum of numbers from 1 to 5 should be 15
 ✓ Sum of numbers from 1 to 4 should be 10
 ✓ Sum of numbers from 1 to 3 should be 6
 ✓ Sum of numbers from 1 to 2 should be 3
 ✓ Sum of numbers from 1 to 1 should be 1
 ✓ Sum of 0 numbers should be 0
 ✓ Sum of 10 numbers should not be 66
 ✓ Sum of 100 numbers should be greater than 100

14 tests, 0 failures
```
## Description
The script Writes the numbers from 1 - 10 in random order. Each number appear only once. This bash script is tested with the BATS testing framework. 
## Known limitation / bugs



