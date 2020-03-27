pragma solidity ^0.4.22;

contract banking{
    uint balance;
    constructor() public{
        balance=1;
    }
    
    function displayBalance() public view returns (uint){
        return (balance);
    }
    
    
    
    function Withdraw(uint x) public {
        if(x<=balance)
            balance=(balance)-(x);
        else
           balance=0;
    }
    
    
    
    function Deposit(uint x) public{
        balance=(balance)+(x);
    }
}