// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import "./IARC20.sol";

interface IMigratorChef {
    // Perform LP token migration from legacy SolarswapSwap to WASASwap.
    // Take the current LP token address and return the new LP token address.
    // Migrator should have full access to the caller's LP token.
    // Return the new LP token address.
    //
    // XXX Migrator must have allowance access to SolarswapSwap LP tokens.
    // WASASwap must mint EXACTLY the same amount of WASASwap LP tokens or
    // else something bad will happen. Traditional SolarswapSwap does not
    // do that so be careful!
    function migrate(IARC20 token) external returns (IARC20);
}