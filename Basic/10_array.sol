// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//fixed size array
contract Array {
    uint[5] public arr = [1, 2, 3]; //arr[3],arr[4]=0

    function getValue(uint8 index) public view returns (uint) {
        return arr[index];
    }

    function setValue(uint8 index, uint value) public returns (uint) {
        return arr[index] = value;
    }

    function getArray() public view returns (uint[5] memory) {
        return arr;
    }
}

// Dynamic array
contract DynamicArray {
    uint[] public arr = [1, 2, 3];

    function getValue(uint8 index) public view returns (uint) {
        return arr[index];
    }

    function setValue(uint8 index, uint value) public returns (uint) {
        return arr[index] = value;
    }

    function removeLastElement() public {
        arr.pop();
    }

    function pushvalue(uint8 value) public {
        arr.push(value);
    }

    function getArray() public view returns (uint[] memory) {
        return arr;
    }
}
