pragma solidity ^0.5.1;

contract myContract{
    uint public peopleCount=0;
    
    //mapping => key-value pair or associative array or hash table or hash map or database mapping
    
    mapping(uint=>Person) public people;//key=>uint and Person =>value
    uint256 openingTime=1582275801;//unix timestamp=>//weblink : htps://www.epochconverter.com/clock
    
    address owner; //datatype in solidity
    
    modifier onlyWhileOpen(){
        require(block.timestamp>=openingTime); //block=>global var.
        _; //compulsory
    }
    
    struct Person{//stucture
        uint id;
        string fname;
        string lname;
    }
    
    //accessed only after time has passed =>try increasing unix timestamp
    function addPerson(string memory _fname,string memory _lname) public onlyWhileOpen{
        incrementCount();
        people[peopleCount]=Person(peopleCount,_fname,_lname);
    }    
    //internal function => can't be used by external callers
    function incrementCount() internal{
            peopleCount+=1;
    }
    
}