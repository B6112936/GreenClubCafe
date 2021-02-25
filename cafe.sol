pragma solidity ^0.5.1;

contract cafe {  


  //---events---
  event Bought(
    address from,   
    string text
  );
  
  event RegistrationError(
    address from,
    string text,
    string reason
  );

  // store the proof for a student in the contract state
  
  
  // record a student name
  function Buy(string memory name) public payable {

    if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Green Tea Matcha"))){
        if (msg.value != 0.01 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.01 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
        
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("GreenTea Matcha Milk Ice"))){
        if (msg.value != 0.02 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("GreenTea Matcha Late"))){
        if (msg.value != 0.02 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Matcha Redbean Cake"))){
        if (msg.value != 0.05 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Bingso Matcha"))){
        if (msg.value != 0.05 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
    else if (keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Mochi Matcha"))){
        if (msg.value != 0.04 ether) {
        //---fire the event---
        emit RegistrationError(msg.sender, name, 
            "Incorrect amount of Ether. 0.02 ether for registration");
        
        //---refund back to the sender---
        msg.sender.transfer(msg.value);
        
        //---exit the function---
        return;
         }
        emit Bought(msg.sender, name);
    }
  }
}