// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RolexProtocol is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("Rolex Protocol", "RLX")
        Ownable(initialOwner)
    {
        // Minting 21 Million RLX (like Bitcoin)
        // 18 decimals is standard for most tokens
        _mint(msg.sender, 21000000 * 10 ** decimals());
    }
}
