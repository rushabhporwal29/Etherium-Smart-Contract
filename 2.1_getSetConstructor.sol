pragma solidity ^0.4.22;

contract myContract{
    string value;
    uint key;
    
    constructor() public{
        value="NAN";
        key=0;
    }
    
     
    function getData() public view returns (uint,string) {
        return (key,value);
    }
    
    function setData(uint x,string y) public{
        key=x;
        value=y;
        
        
    }
}