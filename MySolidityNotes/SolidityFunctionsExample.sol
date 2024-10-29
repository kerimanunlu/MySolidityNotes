// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract Functions {
    // Definition of functions
    /*
       Function syntax:
       function [functionName] ( [type] [parameterName] ) [visibility] [access] [modifier] returns([type]) {
           // ...
       }  
    */
    // Explanation of function types:
    // pure - functions that do not read or modify state variables
    // view - functions that read state variables but do not modify them

    uint number = 5; // State variable to store a number

    // Function to increase the stored number by a given parameter
    function increaseNumber(uint _numberOne) public view returns(uint) {        
        return number + _numberOne; // Returns the sum of the stored number and the parameter
    }

    // Function to return the sum of two input numbers (pure function)
    function sumNumbers(uint _numberOne, uint _numberTwo) public pure returns(uint) {
        return _numberOne + _numberTwo; // Returns the sum of the two input numbers
    }

    // Function to retrieve the current value of the state variable 'number'
    function getNumber() public view returns(uint) {
        return number; // Returns the value of the state variable 'number'
    }

    // Function to increment the state variable 'number' by 5
    function setNumber() public {
        number = number + 5; // Updates 'number' by adding 5 to its current value
    }

    // Function to multiply two input numbers (pure function) and return the results
    function multiply(uint _numberFirst, uint _numberSecond) public pure returns(uint, uint, uint) {
        return (_numberFirst * _numberSecond, _numberFirst, _numberSecond); 
        // Returns the product of the two numbers along with the original numbers
    }

    // Function to divide two input numbers and return the result and the first number
    function divide(uint _numberFirst, uint _numberSecond) public pure returns(uint division, uint firstNumber) {
        division = _numberFirst / _numberSecond; // Calculate the division result
        firstNumber = _numberFirst; // Store the first number for return
        return (division, firstNumber); // Return the division result and the first number
    }
}
