pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TakerProxy {
    uint256 constant MAX_UINT = 2**256 - 1;

    constructor () public {
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
}