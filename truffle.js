/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */
var HDWalletProvider = require("truffle-hdwallet-provider");

var mnemonic = "machine salad right patrol table invite achieve clutch rice journey absorb clutch";

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  kovan: {
    provider: function() {
      return new HDWalletProvider(mnemonic, 'https://kovan.infura.io/xIlWyRMZ7pLPhZZTXwcM')
    },
    network_id: "*",
    gas: 4500000,
    gasPrice: 4000000000,
  }
};
