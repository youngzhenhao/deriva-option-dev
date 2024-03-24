// SPDX-License-Identifier: WTFPL
pragma solidity ^0.8.20;

import {NFT} from "./NFT.sol";

contract DCNFT is NFT {
    constructor() NFT("DCNFT", "DCNFT") {}
}
