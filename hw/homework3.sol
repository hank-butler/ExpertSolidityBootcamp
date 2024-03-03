// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemoryExample {
    // Function that creates a memory array and modifies it
    function manipulateArray() public pure returns (uint) {
        // Declare a new array in memory with 3 elements
        uint[] memory arr = new uint[](3);
        arr[0] = 1;
        arr[1] = 2;
        arr[2] = 3;

        // Modify the array
        arr[0] = 4;

        // Return the first element of the array
        return arr[0];
    }
}