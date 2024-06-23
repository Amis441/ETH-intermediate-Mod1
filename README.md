
# Test Smart Contract

## Overview
The class `Test` is a basic contract written in Solidity language intended to offer the basic functionality of operations on unsigned integers (`uint`). Some of these functions include adding the number to itself, square of a number and determining whether a number is even or odd? To provide constraint for the input and output of the contract, it employs the usage of ‘require’, ‘assert’ ,and ‘revert’ statements as the means of error handling.

## Functions

### 1. `double`
```solidity
function double(uint a) public pure returns(uint)
```
This function takes an unsigned integer `a` and returns its double. It requires that the input `a` is greater than 0. If the input is valid, it multiplies `a` by 2 and returns the result.

#### Parameters
- `a` (uint): The number to be doubled. Must be greater than 0.

#### Returns
- `uint`: The doubled value of the input.

#### Error Handling
- `require(a > 0, "a must be greater than 0");`: Ensures that `a` is greater than 0. If not, the transaction is reverted with the message "a must be greater than 0".

### 2. `square`
```solidity
function square(uint a) public pure returns(uint)
```
This function takes an unsigned integer `a` and returns its square. It includes an assertion to ensure that the result is not less than the input.

#### Parameters
- `a` (uint): The number to be squared.

#### Returns
- `uint`: The squared value of the input.

#### Error Handling
- `assert(result >= a);`: Ensures that the squared result is greater than or equal to the input `a`. If not, the transaction is reverted.

### 3. `checkEven`
```solidity
function checkEven(uint a) public pure returns(bool)
```
This function checks if an unsigned integer `a` is even. It requires that the input `a` is greater than 0. If the input is valid, it checks if `a` modulo 2 equals 0 and returns `true` if it is even, otherwise returns `false`.

#### Parameters
- `a` (uint): The number to be checked. Must be greater than 0.

#### Returns
- `bool`: `true` if the input is even, `false` otherwise.

#### Error Handling
- `if (a <= 0) { revert("a must be greater than 0"); }`: Ensures that `a` is greater than 0. If not, the transaction is reverted with the message "a must be greater than 0".

