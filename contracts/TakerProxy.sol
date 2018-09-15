pragma solidity ^0.4.23;

// copy from openzeppelin-solidity

contract ERC20Basic {
    function totalSupply() public view returns (uint256);
    function balanceOf(address who) public view returns (uint256);
    function transfer(address to, uint256 value) public returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}

contract ERC20 is ERC20Basic {
    function allowance(address owner, address spender)
        public view returns (uint256);

    function transferFrom(address from, address to, uint256 value)
        public returns (bool);

    function approve(address spender, uint256 value) public returns (bool);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

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
            ERC20 token = ERC20(token_addrs[i]);
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