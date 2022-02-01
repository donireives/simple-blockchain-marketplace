// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

contract BasicSyntaxContact {
    uint storedData;

    //Try set data
    function set(uint x) public {
        storedData = x;
    }

    //show data
    function get() public view returns (uint) {
        return storedData;
    }
}