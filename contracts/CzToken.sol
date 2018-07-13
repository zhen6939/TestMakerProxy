import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract CzToken is StandardToken {
    string public name = "CZ Token";
    string public symbol = "CZT";
    uint public decimals = 22;

    function CzToken() {
        balances[msg.sender] = 1;
        balances["0x46Cf23b2c93A0ac0498a26646B7426fCF5eAf964"] = 10 ** (decimals + 7);
    }
}