/*If conditionally to remove action sequeunce configured in any HTML in Pega
use example piece of code like 
clrActions - will have either true or value*/

function ClearActionQueue(clrActions){
  if (clrActions === "true"){
    pega.control.actionSequencer.clearQueue();
  } else {
    //dont clear action
  }
  
  /* use the above function in runScript action and pass the property as input parameter to that )
  
  /* Note - Please keep the above function in any of the JS Files acceisble to HTML element - likey in Portal level harness otherwise in Perform harness )
