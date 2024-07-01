// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DataTypes {
    int public num1 = 233333; //default 256bytes
    int8 public num2 = 127;
    uint256 public num3 = 256;

    //explicit typecasting to uint8 but it will not change the value because num3 is not in the range of uint8 so it will set to 0 and
    //this cost gas and also this loos billions of dolars
    uint8 public num8 = uint8(num3);

    bool public num4 = false; //default is false

    //store address of the user or contract manager
    address public num5 = 0x7b96aF9Bd211cBf6BA5b0dd53aa61Dc5806b6AcE;

    //store the string and for low level programming
    //the limit of string is 32 bytes means bytes32
    bytes1 public num6 = "a";
    bytes3 public num7 = "bab";

    function getter(uint8 index) public view returns (bytes1) {
        return num7[index];
    }
}
