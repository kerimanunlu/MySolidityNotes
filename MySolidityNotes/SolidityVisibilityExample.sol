// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract Visibility {
    // Visibility modifiers determine how and where variables and functions can be accessed.
    // public - accessible from anywhere (inside and outside the contract)
    // private - accessible only within the contract where it is defined
    // internal - accessible within the contract and derived (child) contracts
    // external - accessible only from outside the contract

    uint public numberPublic = 10; // A public variable, accessible from anywhere
    uint private numberPrivate = 15; // A private variable, only accessible within this contract
    uint internal numberInternal = 20; // An internal variable, accessible within this contract and derived contracts

    // Public function to get the value of the public variable
    function getNumber() public view returns(uint){
        return numberPublic; // Returns the value of numberPublic
    }

    // Private function, not accessible outside this contract
    function getNumberPrivate() private pure returns(uint){
        return 5; // Returns a constant value of 5
    }

    // Internal function, accessible within this contract and any derived contracts
    function getNumberInternal() internal pure returns(uint){
        return 10; // Returns a constant value of 10
    }

    // External function, callable only from outside this contract
    function getNumberExternal() external pure returns(uint){
        return 15; // Returns a constant value of 15
    }

    // Main function to demonstrate accessing the various functions
    function main() public view {
        getNumber(); // Calls the public function
        getNumberPrivate(); // Calls the private function (only accessible within this contract)
        getNumberInternal(); // Calls the internal function (accessible within this contract)
    }
}

// Child contract that inherits from the Visibility contract
contract ChildVisibility is Visibility {
    // Function to demonstrate access to the inherited functions
    function anotherMain() public view {
        getNumber(); // Calls the public function from the parent contract
        getNumberInternal(); // Calls the internal function from the parent contract
        // Note: getNumberPrivate() cannot be called here since it's private
    }
}

// Another contract that does not inherit from Visibility
contract AnotherContract {
    Visibility contractVisibility; // Instance of the Visibility contract

    // Function to demonstrate accessing public and external functions
    function main() public view {
        contractVisibility.getNumber(); // Calls the public function from the Visibility contract
        contractVisibility.getNumberExternal(); // Calls the external function from the Visibility contract
        // Note: cannot call getNumberPrivate() or getNumberInternal() here
    }
}










