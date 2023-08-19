
# Project Title

 Frontend Function

## Description

This solidity code is the solution to the assessment of the "ETH PROOF: Intermediate ETH + AVAX Course".

The requirements of the assessment are:

 For this project, create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.


## Solution Overview

The solution consists of two main components:
1. **Smart Contract**:
The `Assessment.sol` file contains the smart contract written in Solidity. It implements a basic bank contract with functionalities for depositing, withdrawing, and transferring funds.

2.**JavaScript Code**: The `index.js` file demonstrates how to capture and handle the emitted events. It connects to the Ethereum network, attaches the deployed contract, and sets up event listeners for the three events.


## Getting Started

### Executing Program

Follow these steps to set up and run the solution:

1. After cloning the github, you will want to do the following to get the code running on your computer.

2. Deploy the smart contract to a local Ethereum network. You can use tools like Hardhat or Ganache for local development and testing.
   
4. #### Make sure to update the network provider URL and contract address in the `index.js` file.
5.  Inside the project directory, in the terminal type: npm i
6. Open two additional terminals in your workspace.
7. In the second terminal type: npx hardhat node
8. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
9. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/
### Author
Sourav Kashyap


