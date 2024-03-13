# MyToken ERC20 Token

This repository contains the source code for the MyToken ERC20 token, developed using Hardhat, Solidity, and OpenZeppelin. The token is designed with a cap on the total supply and includes features such as miner rewards and the ability to set block rewards.

## Features

- **ERC20 Compliance**: The token adheres to the ERC20 standard, ensuring compatibility with Ethereum wallets and decentralized applications.
- **Capped Supply**: The total supply of the token is capped, preventing further minting once the cap is reached.
- **Miner Rewards**: The token includes a mechanism for rewarding miners with a predefined amount of tokens for each block mined.
- **Block Reward Adjustment**: The owner of the contract can adjust the block reward amount.
- **Ownership**: The contract includes an ownership mechanism, restricting certain actions to the contract owner.

## Development Environment Setup

To set up the development environment for this project, follow these steps:

1. **Install Node.js**: Ensure you have Node.js installed on your system.
2. **Install Hardhat**: Run `npm install --global hardhat` to install Hardhat globally.
3. **Initialize Hardhat Project**: In your project directory, run `npx hardhat` and follow the prompts to create a new Hardhat project.
4. **Install Dependencies**: Install OpenZeppelin contracts and Chai for testing by running `npm install @openzeppelin/contracts chai`.
