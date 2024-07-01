// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Require {
    uint16 public sum;

    function check1() public {
        for (uint8 i; i < 10; i++) {
            //we can use loops in the functions only not globally
            sum += i;
        }

        //while loop
        while (sum < 100) {
            sum += 1;
        }
    }
}
