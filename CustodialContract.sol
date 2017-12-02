pragma solidity ^0.4.0;

contract CustodialContract{
    
    address client;
    bool withDrawSucess;
    
    function CustodialContract(){
        client = msg.sender;
    }
    
    modifier ifClient{
        if(msg.sender != client){
            throw;
        }
        _;
    }
    
    function depositFunds() payable {
        
    }
    
    function withDrawFund(uint amount) ifClient {
        if(client.send(amount)){
           withDrawSucess = true; 
        }else
        {
            withDrawSucess = false;
        }
    }
    
    function getFunds()  ifClient constant returns(uint){
        return this.balance;
    }
}