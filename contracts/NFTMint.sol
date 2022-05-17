//SPDX-License-Identifier: Unlicensed
pragma solidity >=0.4.22 <0.9.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract NFTMint is ERC721, Ownable {
    //storage variables
    // price of mint
    uint256 public mintPrice;
    // current number of nft that have been minted 
    uint256 public totalSupply;
    // max number of nfts in collection 
    uint256 public maxSupply;
    // max number of nfts one wallent can mint to distribute more 
    uint256 public maxPerWallet;
    // determind when a user can mint 
    bool public isPublicMintEnabled;
    // locate nft image url  
    string internal baseTokenUri;
    // withdraw money 
    address payable public withdrawWallet;
    // track mints of the wallet addresses 
    mapping(address => uint256) public walletMints;


}