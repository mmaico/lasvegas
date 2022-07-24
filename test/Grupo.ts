import { time, loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";

describe("Grupo",  () => {

  async function deployGroupContract() {

    const [owner, otherAccount] = await ethers.getSigners();

    const Grupo = await ethers.getContractFactory("Grupo");
    const grupo = await Grupo.deploy({});

    return { grupo, owner, otherAccount };
  }

  describe("Validate function is valid", function () {
    it("Should return true when parameter is valid", async function () {
      const { grupo } = await loadFixture(deployGroupContract);
      console.log(await grupo.isValid(["DOG"], 0));
      expect(await grupo.isValid(["DOG"], 0)).to.equal(true);
    });
  });


});
