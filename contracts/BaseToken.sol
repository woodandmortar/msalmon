// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

import "contracts/ERC20Base.sol";

/**
 * @title BaseToken
 * @author Micheal Salmon
 * @dev Implementation of the BaseToken
 */
contract BaseToken is ERC20Base {

  string private constant _GENERATOR = "https://salmonfund.github.io/solidity/";
  string private constant _VERSION = "v3.1.0";

  constructor (
    string memory name,
    string memory symbol,
    uint8 decimals,
    uint256 cap,
    uint256 initialSupply,
    bool transferEnabled,
    bool mintingFinished
  ) public payable ERC20Base(name, symbol, decimals, cap, initialSupply, transferEnabled, mintingFinished) {}

  /**
   * @dev Returns the token generator tool.
   */
  function generator() public pure returns (string memory) {
    return _GENERATOR;
  }

  /**
   * @dev Returns the token generator version.
   */
  function version() public pure returns (string memory) {
    return _VERSION;
  }
}
