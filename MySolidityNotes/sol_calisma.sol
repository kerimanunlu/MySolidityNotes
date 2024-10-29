// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Variables {

    // [type] = [value];

    // string
    string username = "kerimanunlu"; // "
    
    
    // bool
    bool isAvailable = true;
    bool isWorking = false;   // false

    // integer - tam sayilar -+2^256
    int numberInt = 15;
    int numberNegative = -15;
    int8 numberInt8 = 127;

    // uint - unsigned integers -doğal sayilar
    uint numberUnit = 0;
    uint numberUnitBigger =150; // 0

    // address 
    address userAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; // address(0) = 0x000000000

    // array
    uint[] newArrayUint = [1,2,3,4,5];
    uint[5] fixedSizeArray = [1,2,3,4,5];

    // mapping
    mapping(address => uint256) userIdList;


    // state variable - blokchain
    // local variable - 
    // global variable -msg, block
     
    function getNumber() public pure returns(uint){
        uint numberTemp = 5;
        return numberTemp;
    }

    function getUserAddress() public view returns(address){
        address tempAddress = msg.sender;
        return tempAddress;
    }
}