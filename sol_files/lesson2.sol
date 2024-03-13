// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;



contract Score {

    address owner;

    uint score = 5;

    modifier onlyOwner {
    if (msg.sender == owner) {
        _; // placeholder for function to be called if modifier invoked
        }
    }

    constructor() {
        owner = msg.sender;
    }

    

    function getScore() public view returns (uint) {
        return score;
    }

    function setScore(uint _new_score) public onlyOwner {
        score = _new_score;
    }



}