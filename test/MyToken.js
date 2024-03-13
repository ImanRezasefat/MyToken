const { expect } = require("chai");
const hre = require("hardhat");

describe("MyToken", function () {
  // global vars
  let Token;
  let myToken;
  let owner;
  let addr1;
  let addr2;
  let tokenCap = 100000000;
  let tokenBlockReward = 50;

  beforeEach(async function () {
    // Get the ContractFactory and Signers here.
    Token = await ethers.getContractFactory("MyToken");
    [owner, addr1, addr2] = await hre.ethers.getSigners();

    myToken = await Token.deploy(tokenCap, tokenBlockReward);
  });

  describe("Deployment", function () {
    it("Should set the right owner", async function () {
      expect(await myToken.owner()).to.equal(owner.address);
    });
  });
});
