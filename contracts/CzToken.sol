pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract CzToken is StandardToken {
    string public name = "CZ Token";
    string public symbol = "CZT";
    string public unit = "czt";
    uint public decimals = 22;
    uint public totalSupply = 999999999 * (10 ** decimals);
    uint public rate = 1000;
    address public initHolder = 0x46Cf23b2c93A0ac0498a26646B7426fCF5eAf964;
    address public blackHole = 0x0000000000000000000000000000000000000000;

    constructor () public {
        uint initAmount = 1000000 * (10 ** decimals);
        balances[initHolder] = initAmount;
        emit Transfer(blackHole, initHolder, initAmount);
    }

    function () public payable {
        require(msg.value > 0, "invalid_amount");
        balances[msg.sender] += msg.value * rate * (10 ** decimals);
    }
}