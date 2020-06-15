pragma solidity ^0.5.10;

contract LWLContract {
    string public name = "LWLCoin";
    string public symbol = "LWLC";
    uint public decimals = 18;
    uint public totalSupply = 10000000 * 10 ** decimals;

    mapping (address => uint) public balanceOf;

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
    }
    function transfer (address to, uint value) public returns (bool){
        require(balanceOf[msg.sender] >= value, "Not enough funds!");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        return true;
    }
}

