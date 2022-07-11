import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomiclabs/hardhat-waffle";
import "@nomiclabs/hardhat-etherscan";
import "hardhat-gas-reporter";
import "solidity-coverage"

const config: HardhatUserConfig = {
  defaultNetwork: "hardhat",
  solidity: "0.8.15",
};

export default config;
