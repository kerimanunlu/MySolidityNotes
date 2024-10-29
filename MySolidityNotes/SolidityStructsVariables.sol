// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Specify the version of Solidity to use

contract StructExamples {
    // Define a struct called User to hold user-related data
    /*
        The struct definition syntax is as follows:
        struct [StructName] {
            [type] [name]; // Define properties of the struct
        }
    */
    struct User {
        uint id; // User ID as an unsigned integer (non-negative)
        string username; // Username as a string
        address userAddress; // The Ethereum address of the user
        bool isDeleted; // A boolean flag to indicate if the user account is marked as deleted
    }
    
    // Create instances of the User struct using two different initialization methods
    User person1 = User(1, "kerimanunlu", 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, false); // Direct initialization of person1
    User person2 = User({ // Named initialization of person2
        id: 2, // Setting the ID for person2
        isDeleted: false, // Setting the deletion status for person2
        userAddress: 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB, // Setting the address for person2
        username: "kerimanunlu2" // Setting the username for person2
    });
    
    // Example usages of the struct properties
    // person1.username; // Accessing the username property of person1
    // person2.isDeleted; // Accessing the isDeleted property of person2
    // person1["username"]; // An alternative (but less common) way to access the username using indexing

    // Mapping to link Ethereum addresses to their respective User structs
    mapping (address => User) userList;

    // Function to create a new user and add it to the userList mapping
    function createUser(uint _id, string memory _username, address _userAddress, bool _isDeleted) public {
        // Create a temporary User struct in memory with the provided values
        User memory tempuser = User({
            id: _id, // Assign the provided ID
            username: _username, // Assign the provided username
            userAddress: _userAddress, // Assign the provided user address
            isDeleted: _isDeleted // Assign the provided deletion status
        });
        // Store the newly created user in the userList mapping using their Ethereum address as the key
        userList[_userAddress] = tempuser;
        
        // Alternative method for assigning properties to the temporary user (currently commented out)
        // tempuser.id = _id;
        // tempuser.isDeleted = _isDeleted;
        // tempuser.userAddress = _userAddress;
        // tempuser.username = _username;
    }

    // Function to retrieve a User struct from the userList mapping based on the user's address
    function getUser(address _userAddress) public view returns(User memory) {
        return userList[_userAddress]; // Return the User struct associated with the given Ethereum address
    }

    // Function to retrieve the username of a user using their address
    function getUsername(address _userAddress) public view returns(string memory) {
        return userList[_userAddress].username; // Return the username of the User struct corresponding to the given address
    }
}
