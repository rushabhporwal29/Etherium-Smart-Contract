pragma solidity ^0.4.22;

contract simpleStorage{
    
    uint storedData;
    
    function setData(uint x) public{
        storedData=x;
    }
    
    function grtData() public view returns (uint) {
        return storedData;
    }
}