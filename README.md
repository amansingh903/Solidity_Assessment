#Project Title:#
This Solidity program is to create a token  program that demonstrates functionality of the Solidity programming language. 
The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.


**Description**:
The contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
The contract will have a mapping of addresses to balances (address => uint)
it will have a mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount.
This contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address.
Lastly, the burn function should have conditionals to make sure the balance of account is greater than or equal to the amount that is supposed to be burned.


**Getting Started**:
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.
(e.g., MyTokensol).Copy and paste the following code into the file:

```
pragma solidity 0.8.18;

contract MyToken {
   
    string public constant TokenName = "MyToken";
    string public constant TokenAbbrv = "MTK";
    uint256 public TotalSupply;

    
    mapping(address => uint256) public balances;

  
    function mint(address receiver, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        balances[receiver] += amount;
        TotalSupply += amount;
    }

    
    function burn(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        TotalSupply -= amount;
    }
}
```


Open the "Solidity Compiler" pane by clicking on the "solidity" icon located in the left sidebar.
Make sure you have selected the correct compiler version (0.8.18).
Select "Compile MyToken.sol" from the menu.
Implement the Contract:

Open the "Deploy & Run Transactions" tab by clicking on the Ethereum symbol located in the left sidebar.
Choose the environment you want to work in (for example, "JavaScript VM" for a blockchain that is local to your browser).
Next to the MyToken contract, select the "Deploy" option.
Engage with the Contract that has been Deployed:

The functions of the contract will be accessible in the "Deployed Contracts" section following deployment.
The buttons and input fields that are offered allow you to interact with the contract.
Sample Conversations
Coining Coins:

Locate the deployed contract interface's mint function.
Enter an address, or make use of the one that is provided by default.
mint.
To mint tokens and send them to the designated address, click the transact button.
Token Burning:

Check your balance by using the balances mapping.
Navigate to the deployed contract interface and find the burn function.
After entering the desired burn amount, click the transact button.
Verifying Total Supply and Balances:

To find out the balance at any address, use the balances mapping.
To find out how much tokens are available overall, use the TotalSupply variable.
