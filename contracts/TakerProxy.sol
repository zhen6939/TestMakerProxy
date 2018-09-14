pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TakerProxy {
    uint256 constant MAX_UINT = 2**256 - 1;
    address public owner;
    mapping(address => bool) internal market_makers;
    

    constructor () public {
        owner = msg.sender;
    }
    
    function getMaxAmount() public pure returns(uint256) {
        return MAX_UINT;
    }

    function setAllowance(address token_proxy, address[] token_addrs) public {
        for (uint i = 0; i < token_addrs.length; i++) {
            StandardToken token = StandardToken(token_addrs[i]);
            require(token.approve(token_proxy, MAX_UINT), "Approve Error");
        }
    }

    function setMarketMaker(address addr) public returns(bool) {
        market_makers[addr] = true;
        return market_makers[addr];
    }

    function getMarketMaker(address addr) public view returns(bool) {
        return market_makers[addr];
    }
}