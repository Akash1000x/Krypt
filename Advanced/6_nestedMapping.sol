// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract NestedMapping {
    // This maps an address (sender) to another mapping that associates an address (receiver) with a boolean (true/false) value
    mapping(address => mapping(address => bool)) public ownership;

    // Function to grant ownership from the sender to the receiver
    // 'sender' is the address that provides ownership, 'receiver' is the address receiving ownership
    function provideOwnerShip(address sender, address receiver) public {
        ownership[sender][receiver] = true;
    }

    // Function to remove ownership from the sender to the receiver
    // 'sender' is the address removing ownership, 'receiver' is the address losing ownership
    function takeOwnerShip(address sender, address receiver) public {
        ownership[sender][receiver] = false;
    }

    // Function to check if the sender has granted ownership to the receiver
    // Returns true if ownership exists, false otherwise
    function checkOwnerShip(
        address sender,
        address receiver
    ) public view returns (bool) {
        return ownership[sender][receiver];
    }
}
