// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint256 public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }

    function buyTokens() public payable {
        //Redemtion rate = # of tokens they recive for 1 ether
        //Amount of Etherium * Redemtion Rate
        uint256 tokenAmount = msg.value * rate;
        token.transfer(msg.sender, tokenAmount);
    }
}
