var CzToken = artifacts.require("CzToken");

contract('CZ Token Test', async (accounts) => {
    it("should has name as CZ Token", async () => {
        let instance = await CzToken.deployed()
        let name = await instance.name.call()
        let expected = 'CZ Token'
        assert.equal(name, expected, "The name isn't CZ Token")
    })
})