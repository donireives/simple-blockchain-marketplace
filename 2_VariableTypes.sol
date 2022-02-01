// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract VariableTypes {
    // stateVariable example: sum -- if not written public, it will automatically become private
    uint sum;

    // in UI example: 5,3
    function tambah(uint num1, uint num2) public {
        // local variable
        uint temp = num1 + num2;

        sum = temp;
    }

    function getHasil()public view returns(uint){
        return sum;
    }
}

contract Types {
    bool public valid = true;

    int32 public angka1 = -32;
    uint public angka2 = 1;
    uint32 public angka3 = 5_01_2021;

    uint8 result;

    function tambah() public {
        // result 3/5; tidak bisa float dari hasil
        result = 3.5 + 1.5;
    }

    // bytes 1 to 32
    bytes public huruf = "A"; // 0x41

    // string > 32
    string public kalimat = "blablabla balbalblabla balbalal"; // normal string

    // enum
    enum Week {Mon, Tue, Wed, Thu, Fri, Sat, Sun}
    function getEnum() public pure returns(Week){
        return Week.Fri;
    }
}