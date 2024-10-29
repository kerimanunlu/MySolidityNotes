// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ModifierTutorial {
    // definition of modifiers
    /*
         modifier [modifierName] ( [type] [parameterName] ) {
            ...
            --;
        }
    */

    address ownerAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint number = 12;

    modifier isOwner(){
        require(msg.sender == ownerAddress, "User must be owner of this contract");
        _;
    }

    function getNumber() public view isOwner returns(uint) {
        // require(msg.sender == ownerAddress, "User must be owner of this contract");
        return number;
    }
    function setNumber(uint _newNumber) public isOwner {
        // require(msg.sender == ownerAddress, "User must be owner of this contract");
        number = _newNumber;
    }
}