// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

// For this project, create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.

contract Assessment {
    address payable public owner;
    uint public balance;

    event Deposit(uint amount);
    event Withdraw(uint amount);
    event Transfer(uint amount);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }
   // that will map the adress to the private balances
    mapping(address => uint) private balances;

    function getBalance() public view returns(uint){
        return balance;
    }

    function deposit(uint _amount) public payable {
        uint _previousBalance = balance;

        // make sure this is the owner
        require(msg.sender == owner, "You are not the owner of this account");

        // perform transaction
        balance += _amount;

        // assert transaction completed successfully
        assert(balance == _previousBalance + _amount);

        // emit the event
        emit Deposit(_amount);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function withdraw(uint _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }

        // withdraw the given amount
        balance -= _withdrawAmount;

        // assert the balance is correct
        assert(balance == (_previousBalance - _withdrawAmount));

        // emit the event
        emit Withdraw(_withdrawAmount);
    }
    function transfer(address _to, uint _transferAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        uint _previousBalance = balance;
        if (balance < _transferAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _transferAmount
            });
        }

        // transfer the given amount
        balance -= _transferAmount;
        balances[_to] += _transferAmount;

        // assert the balance is correct
        assert(balance == (_previousBalance - _transferAmount));

        // emit the event
        emit Transfer(_transferAmount);
    }
}
