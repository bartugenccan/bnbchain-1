// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 private total;
    uint256 private subtracted;
    uint256 private multiplied;
    uint256 private divided;

    function add(uint256 num1, uint256 num2) public {
        total = num1 + num2;
    }

    function subtract(uint256 num1, uint256 num2) public {
        require(num1 >= num2, "Subtraction result cannot be negative.");
        subtracted = num1 - num2;
    }

    function multiply(uint256 num1, uint256 num2) public {
        multiplied = num1 * num2;
    }

    function divide(uint256 num1, uint256 num2) public {
        require(num2 != 0, "Cannot divide by zero.");
        divided = num1 / num2;
    }

    function getTotal() public view returns (uint256) {
        return total;
    }

    function getSubtracted() public view returns (uint256) {
        return subtracted;
    }

    function getMultiplied() public view returns (uint256) {
        return multiplied;
    }

    function getDivided() public view returns (uint256) {
        return divided;
    }

    function getAllValues() public view returns (uint256, uint256, uint256, uint256) {
        return (total, subtracted, multiplied, divided);
    }
}
