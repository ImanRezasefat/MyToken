// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract MyToken is ERC20Capped {
    address payable public owner;
    uint256 blockReward;

    constructor(uint256 cap,uint256 reward) ERC20("My Token","MT") ERC20Capped(cap  * (10 ** decimals())){
        owner= payable( msg.sender);
        _mint(msg.sender, 70000000 * (10 ** decimals()));
        blockReward = reward * (10 ** decimals());
    }
 function _update(address from, address to, uint256 value) internal override(ERC20Capped) {
        super._update(from, to, value);
    }

    function _mintMinerReward() internal {
        _mint(block.coinbase, blockReward);
    }
    function setBlockReward(uint256 reward) public{
        blockReward = reward * (10 ** decimals());
    }


    modifier onlyOwner () {
        require(msg.sender== owner,"Only the owner can call this!");
        _;
    }
    
}