const { expect } = require("chai");

describe("PUEN", function() {
  it("Should return the new greeting once it's changed", async function() {
    const PUEN = await ethers.getContractFactory("PUEN");
    const puen = await PUEN.deploy("Hello, world!");
    
    await puen.deployed();
    expect(await puen.greet()).to.equal("Hello, world!");

    await puen.setGreeting("Hola, mundo!");
    expect(await puen.greet()).to.equal("Hola, mundo!");
  });
});