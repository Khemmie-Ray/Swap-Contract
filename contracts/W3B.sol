// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract W3B is ERC20 {
    constructor() ERC20("W3B Token", "W3BKT") {
        _mint(address(this), 10**4 * 10**18);
    }
}