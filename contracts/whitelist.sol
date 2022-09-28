// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract whitelist {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressesToWhitelist() public {
        require(
            !whitelistedAddresses[msg.sender],
            "sender has been whitelisted"
        );
        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "More addresses cant be added, limit reached"
        );

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted += 1;
    }
}
