// contracts/Box.sol
pragma solidity ^0.8.4;

import "hardhat/console.sol";


contract PUEN {
  string puen;

  constructor(string memory _greeting) {
    console.log("Deploying a PUEN with puen:", _greeting);
    puen = _greeting;
  }

  function greet() public view returns (string memory) {
    return puen;
  }

  function setGreeting(string memory _greeting) public {
    console.log("Changing puen from '%s' to '%s'", puen, _greeting);
    puen = _greeting;
  }
}