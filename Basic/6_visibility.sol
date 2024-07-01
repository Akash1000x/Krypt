// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Demo {
    //this is function is accessible from everywhere
    function f1() public pure returns (uint8) {
        return 1;
    }

    //this is function is accessible from only this contract
    function f2() private pure returns (uint8) {
        return 1;
    }

    //this is function is accessible from only this contract and derived contract
    function f3() internal pure returns (uint8) {
        return 1;
    }

    //this is function is accessible from everywhere but it is not accessible in this contract
    function f4() external pure returns (uint8) {
        return 1;
    }
}

contract Child is Demo {
    function f5() public pure {
        f1(); //accessible
        f2(); //not accessible
        f3(); //accessible
        f4(); //not accessible
    }
}

contract ExternalContract {
    Demo demo = new Demo();
    uint public x = demo.f1(); //accessible
    uint public x1 = demo.f2(); //not accessible
    uint public x2 = demo.f3(); //not accessible
    uint public x4 = demo.f4(); //accessible
}
