# NFT Collection Minting Platform

A flexible NFT minting collection project based on [Foundry](https://getfoundry.sh/) and OpenZeppelin ERC721.
This repository is designed to support multiple NFT contracts, each representing a unique NFT collection.
**Example:** The `MyPuppyLeLe` contract is one such NFT collection in this project.

## Project Overview

This project provides a foundation for deploying and managing multiple ERC721 NFT collections.
Each collection can have its own contract, metadata, and minting logic.

## Features

- Support for multiple independent NFT contracts
- Each contract can have its own metadata and minting rules
- All metadata and images are stored on IPFS
- Easy to extend: add new NFT collections by creating new contracts in `src/`

## Directory Structure

```
src/                # Solidity smart contracts (one per NFT collection)
script/             # Foundry deployment/minting scripts
metadata/json/      # NFT metadata (JSON, one per token)
metadata/images/    # NFT images (JPG, one per token)
```

## Example: MyPuppyLeLe Collection

**src/MyPuppyLeLe.sol**

- ERC721 NFT contract for "My Puppy LeLe"
- Only the owner can mint new NFTs
- Each token is associated with a unique metadata URI

**metadata/json/1.json** (example metadata)
```json
{
  "name": "My Puppy LeLe",
  "description": "...",
  "image": "ipfs://...",
  "attributes": [
    { "trait_type": "Breed", "value": "Chinese Rural Dog" },
    ...
  ]
}
```

## How to Add a New NFT Collection

1. Create a new contract in `src/`, e.g. `MyNewNFTCollection.sol`
2. Implement your minting logic and metadata structure
3. Add deployment/minting scripts in `script/`
4. Add metadata and images in `metadata/json/` and `metadata/images/`

## How to Use

### 1. Install Foundry

Follow the [Foundry Book](https://book.getfoundry.sh/getting-started/installation.html) to install Foundry.

### 2. Install Dependencies

```sh
forge install
```

### 3. Build Contracts

```sh
forge build
```

### 4. Deploy Any NFT Collection Contract

Deploy the desired contract (e.g., `MyPuppyLeLe`) using Foundry, Hardhat, or Remix.

### 5. Mint NFT

Edit the corresponding script in `script/` to set your contract address and metadata URI, then run:

```sh
forge script script/Mint.s.sol --private-key <YOUR_PRIVATE_KEY> --broadcast --rpc-url <YOUR_RPC_URL>
```

### 6. View Your NFT

After minting, you can view your NFT on compatible platforms (e.g., OpenSea testnet) using the contract address and token ID.

## Security & Sensitive Data

- `.env_local` is gitignored for sensitive keys.
- **Never commit private keys or secrets to the repository!**
- Double-check all files before pushing to GitHub.

## License

MIT
