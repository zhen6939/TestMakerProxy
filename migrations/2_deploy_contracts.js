var CzToken = artifacts.require("./CzToken.sol");

module.exports = function(deployer) {
  deployer.deploy(CzToken);
};
