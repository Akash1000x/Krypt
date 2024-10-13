// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract MemoryType {
    uint[] public arr = [1, 2, 3, 4, 5];

    /**
     * Storage type is used to store the data in the state variable and it is expensive in terms of gas
     * and it create a refrence of the state variable
     */
    function fn5() public returns (uint[] memory) {
        uint[] storage arr2 = arr; //whene arr2 is change then arr is also change(arr2 is a reference of arr)
        arr2[0] = 1;
        return arr2;
    }

    /**
     * memory type is used to store the data in the memory and it is cheap in terms of gas
     * and it create a copy of the state variable
     */
    function fn4() public view returns (uint[] memory) {
        uint[] memory arr2 = arr; //whene arr2 is change then arr is not change(arr2 is a copy of arr)
        arr2[0] = 1;
        return arr2;
    }

    //if you want mutate the num array then use memory is good
    function fn1(uint[3] memory num) public view returns (uint[3] memory) {
        num[0] = arr[0];
        return num;
    }

    //if you don't want to mutate the num array then use calldata is good because it is cheaper than memory
    function fn2(uint[3] calldata num) public returns (uint[3] memory) {
        arr[0] = num[0];
        return num;
    }

    /**
     * this is the bad way to use memory because it directly changes the state variable and it costs more gas
     */
    function fn3() public view returns (bool) {
        for (uint i; i < arr.length; i++) {
            if (arr[i] == 5) {
                return true;
            }
        }
        return false;
    }
    //or

    /**
     *  but this is the optimized way to use memory and it reduce the gas cost because it not make direct changes in state variable
     *  it create a copy of arr and then iterate over it
     */
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
