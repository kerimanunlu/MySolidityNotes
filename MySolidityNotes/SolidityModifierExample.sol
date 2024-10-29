// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract ModifierTutorial {
    // Definition of modifiers
    /*
         Modifier syntax:
         modifier [modifierName] ( [type] [parameterName] ) {
            ...
            _;
        }
    */

    // Address of the contract owner
    address ownerAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // A state variable to store a number
    uint number = 12;

    // Modifier to check if the caller is the owner of the contract
    modifier isOwner() {
        require(msg.sender == ownerAddress, "User must be owner of this contract"); // Ensure the sender is the owner
        _; // Placeholder for the modified function's code to execute
    }

    // Function to get the value of 'number', restricted to the owner
    function getNumber() public view isOwner returns(uint) {
        // The 'isOwner' modifier checks if the caller is the owner
        return number; // Returns the current value of 'number'
    }

    // Function to set a new value for 'number', restricted to the owner
    function setNumber(uint _newNumber) public isOwner {
        // The 'isOwner' modifier checks if the caller is the owner
        number = _newNumber; // Updates the value of 'number' to the new value provided
    }
}
