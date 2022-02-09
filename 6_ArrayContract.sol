// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract FixedArrayContract {

    // Array Fixed memory
    function getData() public pure returns(uint[5] memory){
        uint[5] memory data = [uint (50),60,70,80,90];

        return data;
        // return data[1]; // return data index 1
    }


    // Array Fixed storage
    uint[5] data2; // state variable
    function getData2() public returns(uint){
        data2 = [uint (50),60,70,80,90];
        return data2[1]; // karena di set type uint jadi tidak dapat mereturn array, hanya di rerturn index
    }

}

contract DynamicArrayContract {

    uint[] data;
    function getInline() public returns(uint[] memory){
        data = [60,70,30,40]; // inline

        return data;
    }

    uint[] dataBaru;
    function getDynamic() public returns(uint[] memory){
        dataBaru = new uint[](3);
        dataBaru[0] = 10;
        dataBaru[1] = 20;
        dataBaru[2] = 30;

        return (dataBaru);
    }

    // length array : data.length
    // push array : array.push(1111)
    // remove array : array.pop(0)

}