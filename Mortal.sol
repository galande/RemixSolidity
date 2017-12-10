pragma solidity ^0.4.19;

contract Mortal{
    
    address owner;
    
    function Mortal() public{
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
}
