# Metacrafters-Avalanche-Module3
The CeShtoken contract extends ERC20 with features for token management, address control (blacklisting/whitelisting), token locking, and metadata verification.
# Functions:
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
# Getting Started
You can use the online Solidity IDE Remix to run this program. Take these actions:
Remix Open (https://remix.ethereum.org/)
Visit Remix Ethereum's Remix webpage -> Make a New File
In the left-hand sidebar, click the "+" icon to save the file with a.sol extension (CeShToken.sol, for example).
Include the Contract Code here: The CeShToken contract code should be copied and pasted into the newly opened file.
Put the Code Together: Select the "Solidity Compiler" tab located in the sidebar on the left. Click the "Compile CeShToken.sol" button after making sure the "Compiler" option is set to any suitable version.
To deploy the contract, select the "Deploy & Run Transactions" tab located in the sidebar on the left. From the dropdown menu, choose the "CeShToken" contract and press the "Deploy" button.
After the contract is deployed, you may use the Remix interface to call its functions and engage with it.
Import Tokens into Wallet: To import your CeShTokens into a wallet that is compatible with the chosen network, use the deployment address provided in the contract.



