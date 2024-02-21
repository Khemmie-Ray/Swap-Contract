// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Dolz is ERC20 {
    constructor() ERC20("Dolz Token", "DKT") {
        _mint(address(this), 10**4 * 10**18);
    }
}