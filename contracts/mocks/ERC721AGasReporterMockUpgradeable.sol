// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import "../ERC721AUpgradeable.sol";
import "../ERC721A__Initializable.sol";

contract ERC721AGasReporterMockUpgradeable is ERC721A__Initializable, ERC721AUpgradeable {
    function __ERC721AGasReporterMock_init(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        __ERC721A_init_unchained(name_, symbol_);
        __ERC721AGasReporterMock_init_unchained(name_, symbol_);
    }

    function __ERC721AGasReporterMock_init_unchained(string memory, string memory) internal onlyInitializingERC721A {}

    function safeMintOne(address to) public {
        _safeMint(to, 1);
    }

    function mintOne(address to) public {
        _mint(to, 1);
    }

    function safeMintTen(address to) public {
        _safeMint(to, 10);
    }

    function mintTen(address to) public {
        _mint(to, 10);
    }

    function transferTenAsc(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 0);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 9);
        }
    }

    function transferTenDesc(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 9);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 0);
        }
    }

    function transferTenAvg(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 0);
            transferFrom(msg.sender, to, 9);
        }
    }
}
