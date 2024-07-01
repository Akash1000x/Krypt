// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MemoryType {
    uint[] public arr = [1, 2, 3, 4, 5];

    function fn5() public returns (uint[] memory) {
        uint[] storage arr2 = arr; //whene arr2 is change then arr is also change
        arr2[0] = 1;
        return arr2;
    }

    function fn4() public view returns (uint[] memory) {
        uint[] memory arr2 = arr; //whene arr2 is change then arr is not change
        arr2[0] = 1;
        return arr2;
    }

    //if you want mutate the num arr then use memory is good
    function fn1(uint[3] memory num) public view returns (uint[3] memory) {
        num[0] = arr[0];
        return num;
    }

    //if you don'y want to mutate the num arr then use calldata is good
    function fn2(uint[3] calldata num) public returns (uint[3] memory) {
        arr[0] = num[0];
        return num;
    }

    function fn3() public view returns (bool) {
        for (uint i; i < arr.length; i++) {
            if (arr[i] == 5) {
                return true;
            }
        }
        return false;
    }
    //or

    //but this is the optimized way to use memory and it reduce the gas cost
    function fn8() public view returns (bool) {
        uint[] memory brr = arr;
        for (uint i; i < brr.length; i++) {
            if (brr[i] == 5) {
                return true;
            }
        }
        return false;
    }
}
