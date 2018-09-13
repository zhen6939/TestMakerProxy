pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TokenA is StandardToken {
    string public name = "TokenA";
    string public symbol = "TA";
    string public unit = "ta";
    uint public decimals = 18;
    uint public totalSupply = 999999999 * (10 ** decimals);

    constructor () public {
    }
}