// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/access/Ownable.sol";

contract CeShtoken is ERC20, Ownable {
    mapping(address => bool) private _isBlacklisted;
    mapping(address => bool) private _isLocked;
    mapping(string => bool) private _nameExists;
    mapping(string => bool) private _symbolExists;

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        require(initialSupply > 0, "Initial supply must be greater than zero");
        _mint(msg.sender, initialSupply * 10**uint(decimals()));
        _nameExists[name] = true;
        _symbolExists[symbol] = true;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * 10**uint(decimals()));
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount * 10**uint(decimals()));
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(!_isBlacklisted[msg.sender], "Sender is blacklisted");
        require(!_isBlacklisted[to], "Recipient is blacklisted");
        require(!_isLocked[msg.sender], "Sender's tokens are locked");

        return super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        require(!_isBlacklisted[from], "Sender is blacklisted");
        require(!_isBlacklisted[to], "Recipient is blacklisted");
        require(!_isLocked[from], "Sender's tokens are locked");

        return super.transferFrom(from, to, amount);
    }

    function lockTokens() public {
        _isLocked[msg.sender] = true;
    }

    function unlockTokens() public {
        _isLocked[msg.sender] = false;
    }

    function isLocked(address account) public view returns (bool) {
        return _isLocked[account];
    }

    function blacklistAddress(address account) public onlyOwner {
        _isBlacklisted[account] = true;
    }

    function whitelistAddress(address account) public onlyOwner {
        _isBlacklisted[account] = false;
    }

    function isBlacklisted(address account) public view returns (bool) {
        return _isBlacklisted[account];
    }

    function isWhitelisted(address account) public view returns (bool) {
        return !_isBlacklisted[account]; // Invert to check if not blacklisted (i.e., whitelisted)
    }

    function nameExists(string memory name) public view returns (bool) {
        return _nameExists[name];
    }

    function symbolExists(string memory symbol) public view returns (bool) {
        return _symbolExists[symbol];
    }
}
