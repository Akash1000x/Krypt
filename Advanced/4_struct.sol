// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Structs {
    struct Student {
        string name;
        uint rollNo;
        bool pass;
    }

    Student public s;

    //Fixed size array of struct
    Student[5] public s1;

    //Dynamic size array of struct
    Student[] public s2;

    function setter(
        uint _index,
        string memory _name,
        uint _rollNo,
        bool _pass
    ) public {
        s1[_index].name = _name;
        s1[_index].rollNo = _rollNo;
        s1[_index].pass = _pass;
    }

    function setterForS(string memory _name, uint _rollNo, bool _pass) public {
        s.name = _name;
        s.rollNo = _rollNo;
        s.pass = _pass;
    }

    function setterDynamicArray(
        string memory _name,
        uint _rollNo,
        bool _pass
    ) public {
        s2.push(Student(_name, _rollNo, _pass));
    }

    function getter() public view returns (Student[5] memory) {
        return s1;
    }

    function getterForS() public view returns (Student memory) {
        return s;
    }
}
