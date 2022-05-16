// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    mapping (address => bool) public  whitelistedAddresses;
    uint8 public  maxWhitelistedAddress;
    uint8 public  numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddress){
        maxWhitelistedAddress = _maxWhitelistedAddress;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender], "Sender is already whitelisted");
        require(numAddressesWhitelisted < maxWhitelistedAddress, "More addresses cant be added, limit reached");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted++;
    }


}