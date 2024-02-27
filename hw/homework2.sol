// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayFilter {
    
    uint256[] public oldArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    uint256[] public arr;

    function removeElements() public {
        uint i;
        for (i; i < oldArr.length; i++) {
            if (i != 2 && i != 7 && i != 8){
                arr.push(i);
            }
        }
    }

    function getArray() public view returns (uint[] memory){
        return arr;
    }

}