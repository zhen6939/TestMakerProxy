var Contract = artifacts.require("./CzToken.sol");

module.exports = function(deployer) {
  deployer.deploy(Contract);
};
