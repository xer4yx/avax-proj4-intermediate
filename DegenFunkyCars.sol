// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenFunkyCars is ERC20, Ownable {
    uint public funkycarValue = 2;
    mapping(address => string[]) nftCars;
    mapping(address => uint) ownedCars;

    constructor(address initalOwner) ERC20("Degen", "DGN") Ownable(initalOwner) {}

    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferToken(address _to, uint256 _amount) external {
        require(balanceOf(msg.sender) >= _amount, "Not enough token to transfer a token.");
        approve(msg.sender, _amount);
        transferFrom(msg.sender, _to, _amount);
    }

    function burnToken(uint _amount) public {
        require(balanceOf(msg.sender) >= _amount, "Not enough token to burn a token.");
        _burn(msg.sender, _amount);
    }

    function redeemFunkyCars(string memory _nftCarName) public {
        require(balanceOf(msg.sender) >= funkycarValue, "Redeem failed because not enough token.");

        _burn(msg.sender, funkycarValue);
        nftCars[msg.sender].push(_nftCarName);
        ownedCars[msg.sender]++;
    }
    
    function getCarsList() public view returns (string[] memory) {
        return nftCars[msg.sender];
    }

    function getCarsOwned() public view returns (uint) {
        return ownedCars[msg.sender];
    }
}