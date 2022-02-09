// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract MappingContract {
    mapping(address => uint) public myMap;

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function get(address _addr) public view returns(uint) {
        return myMap[_addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function get(address _addr1, uint _i) public view returns(bool) {
        return nested[_addr1][_i];
    }
}