// SPDX-License-Identifier: WTFPL
pragma solidity ^0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) Ownable(msg.sender) {}

    function safeMint(address _receiver) public onlyOwner returns (uint256) {
        uint256 tokenId = _tokenIdCounter;
        _safeMint(_receiver, tokenId);
        _tokenIdCounter += 1;
        return _tokenIdCounter - 1;
    }
}
