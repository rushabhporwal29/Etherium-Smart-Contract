pragma solidity ^0.5.1;

contract etherTransfer{
    mapping(address=>uint256) public balance;
    address payable wallet;
    constructor(address payable _wallet)public {
        wallet=_wallet;
    }
    
    //fallback function => only be called outside
    function() external payable{
        buyToken();
    }
    /*
        To Compile:
        -for Wallet : Second Account
        -balance panel: FIrst Account
    */
    function buyToken()public payable{
        //buy a buyToken; msg.sender=> account calling this function; calling this function=buying one buyToken
        //payable:to accept ethers
        balance[msg.sender]+=1;
        wallet.transfer(msg.value);
    }
} 