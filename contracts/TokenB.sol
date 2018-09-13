pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TokenB is StandardToken {
    string public name = "TokenB";
    string public symbol = "TB";
    string public unit = "tb";
    uint public decimals = 18;
    uint public totalSupply = 999999999 * (10 ** decimals);

    constructor () public {
    }
}