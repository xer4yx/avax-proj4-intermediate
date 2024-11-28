# DegenFunkyCars - AVAX Project 4

A Solidity smart contract for token creation with mint, transfer, reedem, burn, and check token balance functionalities

## Description

DegenFunkyCars is an ERC-20 token-based smart contract that operates on the Avalanche Fuji Testnet, 
allowing users to mint, transfer, burn tokens, and redeem unique "Funky Cars" NFTs. The contract is 
built using Solidity and deployed via the Remix IDE.

## Getting Started

### Pre-requisites

1. Remix IDE: [Click here](https://remix.ethereum.org)
2. Avalanche Fuji Testnet setup in your wallet
3. Metamask or similar wallet connected with the Avalanche Fuji Testnet

### Executing program
1. Open Remix IDE.
2. Navigate to the Solidity Compiler and compile the contract.
3. In the Deploy & Run Transactions tab:
    - Set the environment to `Injected Provider - (Your Provider)`.
    - Deploy the contract using the owner's address.

## Functions
- `mintToken(address to, uint256 amount)`: Mint new tokens (onlyOwner).
- `getBalance()`: Get the balance of the caller.
- `transferToken(address _to, uint256 _amount)`: Transfer tokens to another address.
- `burnToken(uint _amount)`: Burn a specified amount of the caller's tokens.
- `redeemFunkyCars(string memory _nftCarName)`: Redeem a "Funky Car" NFT by burning 2 DGN tokens.

## Testing on Avalanche Fuji Testnet
1. Ensure MetaMask is connected to the Fuji Testnet.
2. Acquire test AVAX from a faucet: [Avalanche Testnet Faucet](https://core.app/en/tools/testnet-faucet)
3. Deploy and interact with the contract through Remix.

## Help

For troubleshooting, check Remix IDE for compilation errors, runtime issues, or gas limit problems.

## Authors

Contributors names and contact info

Github: [xer4yx](https://github.com/xer4yx)

## License

This project is licensed under the MIT License.