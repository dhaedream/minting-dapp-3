//SPDX-License-Identifier: Unlicensed
pragma solidity >=0.4.22 <0.9.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract NFTMint is ERC721, Ownable {
    uint256 public mintPrice;
    uint256 public totalSupply;
    uint256 public maxSupply;
    uint256 public maxPerWallet;
    bool public isPublicMintEnabled;
    string internal baseTokenUri;
    address payable public withdrawWallet;
    mapping(address => uint256) public walletMints;

    constructor() payable ERC721('MintOnChain', 'MC') {
        // slightly cheaper to initialize state var inside construvtor
        mintPrice = 0.02 ether;
        // 0 mints to begin with 
        totalSupply = 0;
        // max supply of nfts that will be created 
        maxSupply = 1000;
        // max nfts 1 wallet can mint
        maxPerWallet = 3;
        //will need to set var withdrawWallet
    }
}