// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract TokenA is ERC20 {
    constructor(address recipient) ERC20("TokenA", "TOA") {
        _mint(recipient, 100000 * 10 ** decimals());

    }
}

contract TokenB is ERC20 {
    constructor(address recipient) ERC20("TokenB", "TOB") {
        _mint(recipient, 100000 * 10 ** decimals());

    }
}

contract swap {
    IERC20 tokenA;
    IERC20 tokenB;
    uint256 rate;
    address owner= msg.sender;

    event swapped(address _tokena, address _tokenb,uint256 amount);
    constructor(address _tokenA,address _tokenB,uint256 _rate){
        tokenA=IERC20(_tokenA);
        tokenB=IERC20(_tokenB);
        rate=_rate;
    }

    function swapfun(uint amount) external {
        require(amount >0, "amount should be greater than zero");
        tokenA.transfer(address(this),amount*rate);
        tokenB.transfer(msg.sender,amount);
        emit swapped(address(tokenA),address(tokenB),amount);
    }
    function changerate(uint256 _newrate)external{
         require(address(this)==owner, "amount should be greater than zero");
         require(_newrate>0,"_newrate must be greater then 1");
        rate=_newrate;
    }


}