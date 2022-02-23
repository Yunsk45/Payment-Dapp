// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PaymentToken is ERC20 {
   address public owner;

   constructor() ERC20("Payment Token", "PAY") {
      owner = msg.sender;
      _mint(msg.sender, 100_000 * 10**18;
   }
   
   modifier onlyOwner() {
      require(msg.sender == owner, "Only owner can mint.");
   }
   function mint(address to, uint256 amount) external onlyOwner {
      _mint(to, amount);
   }
}
