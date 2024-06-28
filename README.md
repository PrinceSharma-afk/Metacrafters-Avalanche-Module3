# Metacrafters-Avalanche-Module3-CeshToken
## Description
The CeShToken contract extends ERC20 with features for token management, address control (blacklisting/whitelisting), token locking, and metadata verification.

## Functions
Burn: Permanently removes tokens from circulation.
Mint: Creates new tokens and assigns them to an address.
Transfer: Moves tokens from one address to another.
Owner Transfer: Allows the contract owner to transfer ownership to another address.
Lock: Prevents the transfer of tokens from a specific address.
Unlock: Restores the ability to transfer tokens from a previously locked address.
Whitelist: Grants permission for a specific address to transfer tokens.
Blacklist: Revokes permission for a specific address to transfer tokens.
Check Name: Verifies if a token name is registered within the contract.
Check Symbol: Verifies if a token symbol is registered within the contract.

## Getting Started
### Installing

Use the online Solidity IDE Remix to run this program. Follow these steps:

1. Remix Open: Remix Ethereum's Remix webpage
2. Create a New File: Click the "+" icon in the left-hand sidebar to save the file with a .sol extension (e.g., CeShToken.sol).
3. Include the Contract Code: Copy and paste the CeShToken contract code into the newly created file.
4. Compile the Code:
5. Select the "Solidity Compiler" tab in the sidebar on the left.
6. Ensure the "Compiler" option is set to any suitable version.
7. Click the "Compile CeShToken.sol" button.

## Executing program
### Deploy the Contract:
1.Select the "Deploy & Run Transactions" tab in the sidebar on the left.
2.Choose the "CeShToken" contract from the dropdown menu and click the "Deploy" button.
3.Interact with the Contract: Use the Remix interface to call its functions and engage with it.
4.Import Tokens into Wallet
5.To import your CeShTokens into a wallet compatible with the chosen network, use the deployment address provided in the contract.

## Help
Make sure to have sufficient Ethereum in your account for deployment and transactions. For further assistance, visit the Remix documentation.

## Authors
Prince Sharma 
sharmahprince@gmail.com

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
