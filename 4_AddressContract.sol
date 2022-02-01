// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract AddressContract {
    // smart contract also have address
    // address payable: send and transfer

    // get caller address
    address public caller;
    function getCallerAddress() public returns(address){
        caller = msg.sender;

        return caller;
    }

    // get caller address another way
    function getCallerAddressTwo() public view returns(address callerTwo){
        callerTwo = msg.sender;
    }


    // getting smart contract address
    function getSmartContractAddress() public view returns(address){
        address myAddress = address(this);
        return myAddress;
    }


    // isi saldo smart contract, di UI isi textField value
    uint receivedAmount;
    function receiveEther() payable public{
        receivedAmount = msg.value;
    }

    // adress payable
    // transfer mengembalikan reason
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    // transfer mengembalikan boolean
    function sendFund(address payable _address, uint nominal) public returns(bool){
        _address.send(nominal);
    }

}