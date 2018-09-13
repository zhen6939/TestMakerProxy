var Contract = artifacts.require("./TakerProxy.sol");
var TokenA = artifacts.require("./TokenA.sol");
var TokenB = artifacts.require("./TokenB.sol");

module.exports = function(deployer) {
  deployer.deploy(Contract);
  deployer.deploy(TokenA);
  deployer.deploy(TokenB);
};
