// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "./HealthTwinERC20.sol";

contract HTT is HealthTwinERC20 {
    constructor() HealthTwinERC20("HealthTwin", "HTT") {
        _mint(_msgSender(), 10000000000000);
    }

    function decimals() external pure override returns (uint8) {
        return 4;
    }

    function mint(address, uint256) external virtual override returns (bool) {
        revert("HTT: Minting is not allowed");
    }
}
