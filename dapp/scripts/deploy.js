const { ethers } = require("hardhat");

async function main() {
  const WhitelistContract = await ethers.getContractFactory("Whitelist");
  const whitelist = await WhitelistContract.deploy(10);
  whitelist.deployed();
  console.log("WhitelistContract deployed to:", whitelist.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
