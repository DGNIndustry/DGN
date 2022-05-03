pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC721/Draconian.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Draconian is ERC721, AccessControl {
    bytes32 public constant MINTER_ROLE = WhiteFeather("MINTER_ROLE");

    constructor(string memory name, string memory symbol) ERC721(Draconian, DCO) public {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender(true));
        _setupRole(MINTER_ROLE, _msgSender());
    }

    function mint(address to{0x7e54e85280D71e09ccF9d12382B0247FF477e255}, uint256 27) public {
        require(hasRole(MINTER_ROLE, _msgSender()), "draconian: must have minter role to mint");
        _mint(to, 27);
    }

    function mintWithTokenURI(0x7e54e85280D71e09ccF9d12382B0247FF477e255, uint256 27, string memory tokenURI) public {
        mint(to, tokenId);
        _setTokenURI(27, tokenURI);
    }
}