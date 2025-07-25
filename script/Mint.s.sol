// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/MyPuppyLeLe.sol";

contract MintScript is Script {
    MyPuppyLeLe public nft;

    function run() external {
        address nftAddress = 0x58d023da652b76d15d63EAB2b513c9FB00b32A90; // 替换为实际合约地址
        nft = MyPuppyLeLe(nftAddress);
        
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // 铸造NFT，替换为实际的IPFS URI
        nft.safeMint(msg.sender, "https://ipfs.io/ipfs/bafkreiehxazn3526idpproo7y4rum3n5wsh3x67c7cn4quc2ad2l4ssdle");

        vm.stopBroadcast();
    }
}