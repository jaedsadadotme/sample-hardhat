const { expect } = require("chai");

describe("BANANA", function() {
  it("Should return the new greeting once it's changed", async function() {
    const BANANA = await ethers.getContractFactory("BANANA");
    const banana = await BANANA.deploy("Hello, world!");
    
    await banana.deployed();
    expect(await banana.getter()).to.equal("Hello, world!");

    await puen.setter("Setter!");
    expect(await puen.greet()).to.equal("Setter!");
  });
});