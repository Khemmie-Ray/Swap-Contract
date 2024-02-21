// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IERC20.sol";

contract Swap {
    IERC20 public tokenA;
    IERC20 public tokenB;
    mapping(address => uint256) public swapAmount;

    constructor(address _tokenA, address _tokenB) {
        tokenA = IERC20(_tokenA);
        tokenB = IERC20(_tokenB);
    }

    function swapTokenAToB(uint _amount, address _receiver) external {
        require(_amount > 0, "No zero value");
        require(_receiver != address(0), "Invalid address");

        tokenA.transferFrom(msg.sender, address(this), _amount);
        tokenB.transfer(_receiver, _amount);

        swapAmount[msg.sender] += _amount;
    }

    function swapTokenBToA(uint _amount, address _receiver) external {
        require(_amount > 0, "No zero value");
        require(_receiver != address(0), "Invalid address");

        tokenB.transferFrom(msg.sender, address(this), _amount);
        tokenA.transfer(_receiver, _amount);

        swapAmount[msg.sender] += _amount;
    }
}
