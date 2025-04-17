
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomERC20 is ERC20 {
    uint8 private _customDecimals;

    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 initialSupply_
    ) ERC20(name_, symbol_) {
        _customDecimals = decimals_;
        _mint(msg.sender, initialSupply_);
    }

    function decimals() public view virtual override returns (uint8) {
        return _customDecimals;
    }
}


