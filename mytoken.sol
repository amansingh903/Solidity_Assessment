// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store details about the coin
    string public constant TokenName = "MyToken";
    string public constant TokenAbbrv = "MTK";
    uint256 public TotalSupply;

    // Mapping to store balances of each address
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address receiver, uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        balances[receiver] += amount;
        TotalSupply += amount;
    }

    // Burn function to destroy tokens
    function burn(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        TotalSupply -= amount;
    }
}
