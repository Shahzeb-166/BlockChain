// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Shahzeb is ERC20 {
    constructor(address recipient) ERC20("Shahzeb", "SHZ") {
        _mint(recipient, 100000 * 10 ** decimals());
    }
}
