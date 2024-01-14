# FreeFire Token Smart Contract

## Overview

The FreeFire Token Smart Contract is an ERC-20 token named "FreeFire" with the symbol "FFR." The contract includes functionalities for playing a game, earning experience points (xp), and buying in-game skins. The contract also implements the Ownable pattern from OpenZeppelin.

## Features

1. **Initialization:**
   - The contract is initialized with an initial supply of 100 FreeFire tokens (`FFR`) minted to the contract deployer.
   - Initial experience points (`xp`) are set to 100, and initial coins are set to 100.

2. **Game Playing (`playGame` function):**
   - Users can play the game by calling the `playGame` function.
   - The function checks if the player has at least 50 coins to play the game.
   - If the condition is met, the player earns 5 experience points (`xp`).

3. **Buying Skin (`buySkin` function):**
   - Users can buy in-game skins by calling the `buySkin` function.
   - The function checks if the player has at least 100 experience points (`xp`) and 10 coins.
   - If the conditions are met, the player spends 10 coins, and 10 tokens are burned.
