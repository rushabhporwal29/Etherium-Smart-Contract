pragma solidity ^0.4.22;

contract mycontract1{
    address owner;
    uint amount;
    function transfer(address _recieve) public payable{
            _recieve.transfer(value);
        
    }
    function retAddress() public{
       owner=msg.sender;
    }
    function getBalance() public view returns (uint256){
        return owner.balance;
    }
}