// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FreeFire is ERC20("FreeFire", "FFR"), Ownable(msg.sender) {

    uint256 xp;
    uint256 coins;

    constructor()  {
        xp = 100;
        coins = 100;
        _mint(msg.sender,100);
    }

    function playGame() public {
        require(coins>50,"you need 50 coins to play game");
        xp += 5;
    }

    function buySkin() public {
        
        require(xp>100,"you don't have enough xp for the skin");
        require(coins>10,"you need 10 coins to buy skin");

        coins -= 10;
        _burn(msg.sender,10);
    }

}
