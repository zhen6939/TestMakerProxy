pragma solidity ^0.4.23;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract CzToken is StandardToken {
    string public name = "CZ Token";
    string public symbol = "CZT";
    uint public decimals = 22;

    constructor () public {
        balances[msg.sender] = 1;
        address initHolder = 0x46Cf23b2c93A0ac0498a26646B7426fCF5eAf964;
        balances[initHolder] += 10 ** (decimals + 7);
    }

    function () payable public {
        require(msg.value == 0);
    }
}