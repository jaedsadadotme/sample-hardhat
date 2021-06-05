// contracts/Box.sol
pragma solidity ^0.8.4;

import "hardhat/console.sol";


contract BANANA {
  string banana;

  constructor(string memory _banana) {
    console.log("Deploying a BANANA with banana:", _banana);
    banana = _banana;
  }

  function getter() public view returns (string memory) {
    return banana;
  }

  function setter(string memory _banana) public {
    console.log("Changing puen from '%s' to '%s'", banana, _banana);
    banana = _banana;
  }
}