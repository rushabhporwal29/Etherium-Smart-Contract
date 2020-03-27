pragma solidity ^0.5.1;//0.5.1 : Here add keyword 'memory' with string is mandatory -Syntax Update

contract myContract{
    enum State{//allows to keep track of contrat things
        Waiting,//0
        Ready,//1
        Active//2
    }
    State public state; // access enum publically
    
    Person[] public people; // Array of tye person and with people as a state variable
    int peopleCount;
   struct Person{//structure
       string fname;
       string lname;
   } 

    constructor() public{
        state=State.Waiting;//Default State
    }
    
    //function for enum
    function active() public{
        state=State.Active;
    }
    
    function isActive() public view returns(bool){
        return (state==State.Active);
    }
    
    //function for structure
    function addPerson(string memory _fname,string memory _lname) public{
        people.push(Person(_fname,_lname));
        peopleCount+=1;
    }
} 