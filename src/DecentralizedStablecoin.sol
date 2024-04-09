// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract DecentralizedStablecoin is ERC20Burnable, Ownable {
    error DecentralizedStablecoin__MustBeMoreThanZero();
    error DecentralizedStablecoin__BurnAmountExceedsBalance();
    error DecentralizedStablecoin__NotZeroAddress();

    constructor() ERC20("DecentralizedStablecoin", "DSC") Ownable(msg.sender) {

    }

    function burn(uint256 _value) public override onlyOwner {
        uint256 balance = balanceOf(msg.sender);

        if(_value <= 0) {
            revert DecentralizedStablecoin__MustBeMoreThanZero();
        }

        if(balance < _value) {
            revert DecentralizedStablecoin__BurnAmountExceedsBalance();
        }

        super.burn(_value);
    }

    function mint(address _to, uint256 _amount) external onlyOwner returns(bool) {
        if(_to == address(0)) {
            revert DecentralizedStablecoin__NotZeroAddress();
        }

        if(_amount <= 0) {
            revert DecentralizedStablecoin__MustBeMoreThanZero();
        }

        _mint(_to, _amount);
        return true;
    }
}
