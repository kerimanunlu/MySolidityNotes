// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandLingTutorial {
    // 1 - require
    // require(condition, "");
    // 2 - revert
    // revert("");
    // 3 - assert
    // assert(condition);

    uint number = 10;
    function getNumber() public view returns(uint){
        return number;
    }
    function setNumberWithRequire(uint _newNumber) public {
        require(_newNumber > 0, "The number must be greater than zero");
        number = _newNumber;
    }

    function setNumberWithRevert(uint _newNumber) public {
        if(_newNumber < 1) {
            revert("The number must be greater than zero");
        }
        number = _newNumber;
    }
    function setNumberWithAssert(uint _newNumber) public {
        assert(_newNumber > 0);
        number = _newNumber;
    }
}
