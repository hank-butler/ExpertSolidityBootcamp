// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ArrayFilter {
    
    uint256[] public arr;

    function removeElement(uint _index) public {
        require(_index < arr.length);

        for (uint i = _index; i < arr.length - 1; i++){
            arr[i] = arr[1+1];
        }
        arr.pop();
    }

    function getArray() public view returns (uint[] memory){
        return arr;
    }

    function test() external {
        arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
        removeElement(2);
        removeElement(7);
        removeElement(8);
        assert(arr.length == 9);

        arr = [1];
        removeElement(0);
        assert(arr.length == 0);
    }

}