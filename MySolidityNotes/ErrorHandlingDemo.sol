// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract ErrorHandlingTutorial {
    // Different error handling mechanisms in Solidity:
    // 1 - require: Used to validate conditions before executing code
    // 2 - revert: Used to revert the state changes and provide an error message
    // 3 - assert: Used to check for conditions that should never be false (indicating bugs)

    uint number = 10; // State variable to store a number

    // Function to get the current value of 'number'
    function getNumber() public view returns(uint) {
        return number; // Returns the current value of 'number'
    }

    // Function to set a new value for 'number' using require for validation
    function setNumberWithRequire(uint _newNumber) public {
        // Require that the new number must be greater than zero
        require(_newNumber > 0, "The number must be greater than zero");
        number = _newNumber; // Update 'number' with the new value if the condition is met
    }

    // Function to set a new value for 'number' using revert for validation
    function setNumberWithRevert(uint _newNumber) public {
        // Check if the new number is less than 1
        if(_newNumber < 1) {
            // Revert the transaction with an error message
            revert("The number must be greater than zero");
        }
        number = _newNumber; // Update 'number' with the new value if the condition is met
    }

    // Function to set a new value for 'number' using assert for validation
    function setNumberWithAssert(uint _newNumber) public {
        // Assert that the new number must be greater than zero
        assert(_newNumber > 0);
        number = _newNumber; // Update 'number' with the new value if the assertion holds true
    }
}
