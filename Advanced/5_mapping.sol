// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// mapping is used in Solidity for address(key) to balance,array,struct(value) mapping

contract Mapping {
    // This mapping is public, which means there is an auto-generated getter function for it
    mapping(uint => string) public map;

    // Function to insert key-value pairs into the mapping
    // 'key' is a uint, and 'value' is a string passed using calldata (to save gas)
    function insert(uint key, string calldata value) public {
        map[key] = value;
    }

    // Function to retrieve a value based on a key
    // 'key' is the input, and the function returns the corresponding string stored in 'map'
    function getter(uint key) public view returns (string memory) {
        return map[key];
    }
}

// Mapping with struct
contract MappingStruct {
    struct Student {
        string name;
        uint rollNo;
    }

    mapping(address => Student) public studentMap;

    function insertStudent(
        address _address,
        string memory _name,
        uint _rollNo
    ) public {
        studentMap[_address] = Student(_name, _rollNo);
    }

    function getStudent(
        address _address
    ) public view returns (string memory, uint) {
        return (studentMap[_address].name, studentMap[_address].rollNo);
    }
}
