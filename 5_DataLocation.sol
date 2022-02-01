// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// data location impact to gas fee
// - storage : permanen, dapat di akses di seluruh smart contract (gas lebih besar)
// - memory : hanya dapat diakses di dalam fungsi (gas lebih kecil)
// - call data : sifat tidak dapat dimodifikasi (parameter return)
// - stack : data dikelola langsung vm selama ada eksekusi (1024 level)

contract DataLocation {
    // storage (tidak perlu mendefinisikan type)
    uint stateStorage;

    // memory (a dan b berada di memory)
    function kalkulasi(uint a, uint b) public pure returns (uint hasil) {
        return a + b;
    }

    function iniFungsi() public {
        // memory (di dalam fungsi) (local variable)
        bool isOke;
        uint number;
        address akun;
    }
}


// REFERENCE TYPE VS TYPE VALUES
contract Location {
    uint public stateVariable1 = 10;
    uint stateVariable2 = 20;

    function iniFungsi() public returns (uint) {
        stateVariable1 = stateVariable2;
        stateVariable2 = 30;

        return stateVariable1; // 20
    }

    uint stateVar = 10;
    function iniFungsiDua() public returns (uint) {
        uint localVar = 20; //memory
        stateVar = localVar;
        localVar = 40; // tidak bisa merubah stateVar

        return stateVar; // 20
    }

    uint stateVarZ = 10;
    function iniFungsiTiga() public returns (uint) {
        uint localVarZ = 20; //memory

        localVarZ = stateVarZ;
        stateVarZ = 40; // tidak berpengaruh

        return localVarZ; // 10
    }

    function iniFungsi4() public pure returns(uint[] memory, uint[] memory){
        uint[] memory localMemoryArray1 = new uint[](3); // khusus array perlu menambahkan type data (dalam kasus ini memory)

        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return (localMemoryArray1, localMemoryArray2); // 10,5,6  10,5,6
    }

    function iniFungsi5() public pure returns(uint) {
        uint localVar1 = 10;
        uint localVar2 = 20;

        localVar1 = localVar2;
        localVar1 = 40;

        return localVar1; // 20;
    }
}