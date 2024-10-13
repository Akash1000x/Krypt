// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Compare {
    function compareString(
        string calldata s1,
        string calldata s2
    ) public pure returns (bool) {
        return
            keccak256(abi.encodePacked(s1)) == keccak256(abi.encodePacked(s2));

        // for cocatenation of two string
        // return string.concat(s1, s2);
    }
}
