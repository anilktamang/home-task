# Task 1
## Build Instruction
For MAC, make sure ```Coreutils``` is installed ```brew install coreutils``` 

Install [Bash Automated Testing System (BATS)](https://github.com/sstephenson/bats) to run the test for the script.
* _Ubuntu:_ ```sudo apt-get install bats```
* _Mac:_ ```brew install bats```
* _CentOS/RHEL:_ Install BATS from source
```bash
$ git clone https://github.com/sstephenson/bats.git
$ cd bats
$ ./install.sh /usr/local
```

**Run script:** 
1. Clone the repository from github 
```bash
$ git clone https://github.com/anilktamang/home-task.git
```
2. Change Directory
```bash
$ cd home-task/task1
```
3. Make script executable and run
```bash
$ chmod +x random.sh
```
```bash
$ ./random.sh
```
**Run test for script:** 

To run the tests, invoke the ```bats``` interpreter with a path to a ```.bats``` test file
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
8 10 7 9 2 4 6 1 5 3
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
The script Writes a random permutation of the input lines to standard output. This bash script is tested with the BATS testing framework. BATS provides a simple way to verify that the UNIX programs you write behave as expected.
## Known limitation / bugs
None
