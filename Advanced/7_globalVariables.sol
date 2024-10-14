// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract GlobalVariable {
    // Function to return the amount of Ether sent by the user.
    // This function does not directly return the value to the front-end UI in Remix.
    // The reason is that payable functions, which can accept Ether, cause a transaction to be created when called.
    // Solidity functions that modify state or are payable (receive funds) return their values via transaction logs (not directly to UI).
    // Instead, the value is logged in the transaction receipt, which can be viewed in the Remix console or transaction history.
    function ethSendByUser() public payable returns (uint) {
        // Return the Ether value sent by the caller in wei (1 Ether = 10^18 wei)
        return msg.value;
    }

    // Function to return the address of the caller (the account that invoked the function)
    // 'msg.sender' is a global variable that holds the address of the account calling the contract
    function callerAddress() public view returns (address) {
        return msg.sender;
    }

    // Function to return the current block's timestamp
    // 'block.timestamp' is a global variable that returns the timestamp of the current block
    function returnTime() public view returns (uint) {
        return block.timestamp;
    }
}
