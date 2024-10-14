// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Payable {
    // Function to send Ether to a specific address
    // The 'receiver' parameter is the address that will receive the Ether
    // The 'msg.value' global variable contains the amount of Ether (in wei) sent by the user
    // The 'payable' keyword ensures that the address can receive Ether
    function sendEthToAddress(address receiver) public payable {
        // Transfer the Ether sent with this function call to the specified receiver
        payable(receiver).transfer(msg.value);
    }

    // Function to send Ether to the contract
    // This function is marked 'payable' to allow the contract to receive Ether
    // No additional logic is needed since any Ether sent will automatically be stored in the contract's balance
    function sendEthToContract() public payable {}

    // Function to return the contract's current Ether balance
    // 'address(this)' refers to the contract's own address
    // 'balance' returns the Ether balance of the contract in wei
    function returnBalance() public view returns (uint) {
        return address(this).balance;
    }
}
