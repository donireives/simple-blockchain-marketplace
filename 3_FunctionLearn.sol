// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    uint hasil;

    // pure: return single value without modify state variable
    // state variables are always in storage
    // function arguments are always in memory
    // local variables of struct, array or mapping type reference storage by default
    // local variables of value type (i.e. neither array, nor struct nor mapping) are stored in the stack
    function cetakHello() public pure returns(string memory){
        return 'Hello World';
    }

    // in UI : 3,4
    function tambah(uint a, uint b) public {
        // local variable
        uint temp = a + b;
        hasil = temp;
    }

    function getHasil() public view returns(uint) {
        return hasil;
    }

}

contract PayableContract {
    uint receivedAmount;

    function receivedEther() payable public {
        receivedAmount = msg.value;
    }

    function getTotalAmount() public view returns(uint) {
        return receivedAmount;
    }

    // overload (same name, but parameters must be different)
    function tambah(uint a, uint b) public pure returns(uint hasil){
        hasil = a + b;
    }

    function tambah(uint a, uint b, uint c) public pure returns(uint hasil){
        hasil = a + b + c;
    }
}