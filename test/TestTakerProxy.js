var TakerProxy = artifacts.require("TakerProxy");
var TokenA = artifacts.require("TokenA");
var TokenB = artifacts.require("TokenB");

contract('TakerProxy Test', async (accounts) => {
    it("should has max amount as 2**256-1", async () => {
        let instance = await TakerProxy.deployed()
        let amount = await instance.getMaxAmount.call()
        let expected = Math.pow(2, 256) -1
        assert.equal(amount.toNumber(), expected, "Max amount is incorrect")
    })

    it("should set allowance successed", async () => {
        let tokenA = await TokenA.deployed()
        let tokenAAddr = tokenA.address

        let tokenB = await TokenB.deployed()
        let tokenBAddr = tokenB.address

        let taker = await TakerProxy.deployed()
        let takerAddr = taker.address

        let erc20Proxy = "0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2"
        let tokenList = [tokenAAddr, tokenBAddr]
        
        let result = await taker.setAllowance(erc20Proxy,tokenList)
        
        let expected = Math.pow(2, 256) -1
        amountA = await tokenA.allowance.call(takerAddr, erc20Proxy)
        assert.equal(amountA.toNumber(), expected, "Amount is incorrect")
        amountB = await tokenB.allowance.call(takerAddr, erc20Proxy)
        assert.equal(amountB.toNumber(), expected, "Amount is incorrect")
    })
})