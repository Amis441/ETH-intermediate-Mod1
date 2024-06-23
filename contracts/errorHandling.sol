// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
   function double(uint a) public pure returns(uint) {
      require(a > 0, "a must be greater than 0");
      uint result = a * 2;
      return result;
   }

   function square(uint a) public pure returns(uint) {
      uint result = a * a;
      assert(result >= a);
      return result;
   }

   function checkEven(uint a) public pure returns(bool) {
      if (a <= 0) {
         revert("a must be greater than 0");
      }
      return a % 2 == 0;
   }
}

