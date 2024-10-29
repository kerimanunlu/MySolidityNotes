// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract Variables {
    // This contract demonstrates different types of variables in Solidity

    // String: Represents a sequence of characters
    string username = "kerimanunlu"; // Initializing a string variable with a username
    
    // Boolean: Represents a true/false value
    bool isAvailable = true; // Initializing a boolean variable as true
    bool isWorking = false;   // Initializing a boolean variable as false

    // Integer types: Represents signed integers (can be positive or negative)
    int numberInt = 15; // Initializing a signed integer variable with a positive value
    int numberNegative = -15; // Initializing a signed integer variable with a negative value
    int8 numberInt8 = 127; // Initializing an 8-bit signed integer (max value is 127)

    // Unsigned integer types: Represents only non-negative integers
    uint numberUnit = 0; // Initializing an unsigned integer variable with 0
    uint numberUnitBigger = 150; // Initializing an unsigned integer variable with a positive value

    // Address: Represents a 20-byte Ethereum address
    address userAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; // Initializing an address variable

    // Dynamic array: A dynamic-sized array that can grow or shrink in size
    uint[] newArrayUint = [1, 2, 3, 4, 5]; // Initializing a dynamic array with unsigned integers

    // Fixed-size array: An array of fixed length (in this case, 5)
    uint[5] fixedSizeArray = [1, 2, 3, 4, 5]; // Initializing a fixed-size array

    // Mapping: A key-value store for data, similar to a dictionary
    mapping(address => uint256) userIdList; // Mapping from address to an unsigned integer

    // State variable: A variable whose value is permanently stored on the blockchain
    // Local variable: A variable whose value is only valid within a function
    // Global variable: Predefined variables that are available globally, like msg and block
    
    // Function to return a temporary number
    function getNumber() public pure returns(uint) {
        uint numberTemp = 5; // Local variable to hold a temporary value
        return numberTemp; // Returns the value of numberTemp
    }

    // Function to return the address of the user calling the function
    function getUserAddress() public view returns(address) {
        address tempAddress = msg.sender; // Local variable to store the caller's address
        return tempAddress; // Returns the caller's address
    }
}
