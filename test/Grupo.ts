import { time, loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("PossibleGames",  () => {

  async function deployOneYearLockFixture() {

    const [owner, otherAccount] = await ethers.getSigners();

    const PossibleGames = await ethers.getContractFactory("PossibleGames");
    const possibleGames = await PossibleGames.deploy({});

    return { possibleGames, owner, otherAccount };
  }

  describe("Deployment", function () {
    it("Should set the right unlockTime", async function () {
      const { possibleGames} = await loadFixture(deployOneYearLockFixture);
      console.log(await possibleGames.getAllGames());
      expect(await possibleGames.getAllGames()).to.equal("");
    });
  });


});
