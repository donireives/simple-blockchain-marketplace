pragma solidity ^0.5.0;

contract Marketplace {
    string public name;

    constructor() public {
        name = "TEST MARKETPLACE";
    }

    struct Product {
        uint id;
        string name;
        uint price;
        address owner;
        bool purchased;
    }

    mapping(uint => Product) public products;

    uint public productCount = 0;

    function createProduct(string memory _name, uint _price) public {

        require(bytes(_name).length > 0);
        require(_price > 0);

        productCount++;
        products[productCount] = Product(
            productCount, // increment
            _name, // input
            _price, // input
            msg.sender, // meta data
            false // default
        );

        emit ProductCreated(productCount, _name, _price, msg.sender, false);
    }

    event ProductCreated(
        uint id,
        string name,
        uint price,
        address owner,
        bool purchased
    );

}