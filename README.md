# Decentralized Stablecoin (DSC)

## Overview

The Decentralized Stablecoin (DSC) project is a DeFi stablecoin system that allows users to deposit collateral in the form of WETH (Wrapped Ether) and WBTC (Wrapped Bitcoin) in exchange for a token pegged to the USD. The system is designed to maintain a 1:1 peg to the USD while ensuring that all issued DSC tokens are always overcollateralized.

This stablecoin is similar to DAI but with key differences:

- **Exogenously Collateralized**: The stablecoin is backed solely by external assets (WETH and WBTC).
- **Dollar Pegged**: The token maintains a consistent 1 DSC = $1 peg.
- **Algorithmically Stable**: Stability is enforced through smart contract mechanisms without governance or fees.

## Features

- **Overcollateralization**: At no point should the value of all collateral be less than the total issued DSC.
- **No Governance**: Unlike other stablecoins, DSC operates autonomously without governance intervention.
- **Minimal Fees**: The system is designed to be efficient and free of unnecessary charges.

## Project Structure

The project follows a modular smart contract architecture, with key components including:

- **`DecentralizedStablecoin.sol`**: The core stablecoin contract.
- **`DSCEngine.sol`**: Handles collateral management and issuance logic.
- **`OracleLib.sol`**: Provides price feeds for collateral assets.
- **`HelperConfig.s.sol`**: Configuration settings for the deployment.
- **Mock Contracts**: Includes `MockV3Aggregator.sol` and `ERC20Mock.sol` for testing purposes.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Foundry](https://github.com/foundry-rs/foundry) (for smart contract development and testing)
- [Node.js](https://nodejs.org/) (for script execution if needed)
- [Anvil](https://book.getfoundry.sh/anvil/) (for local blockchain testing)

### Installation

Clone the repository and install dependencies:

```shell
$ git clone <repo-url>
$ cd decentralized-stablecoin
$ forge install
```

## Usage

### Building the Project

Compile the smart contracts:

```shell
$ make build
```

### Running Tests

Execute tests using Foundry:

```shell
$ make test
```

### Formatting Code

Ensure code consistency with:

```shell
$ make format
```

### Gas Snapshots

To analyze gas consumption:

```shell
$ make snapshot
```

### Running a Local Blockchain

Use Anvil to spin up a local blockchain instance:

```shell
$ make anvil
```

### Deployment

Deploy the contracts using:

```shell
$ make deploy
```

## Configuration

The project configuration is managed via `foundry.toml`:

```toml
[profile.default]
src = "src"
out = "out"
libs = ["lib"]
remappings = [
    '@chainlink/contracts/=lib/chainlink-brownie-contracts/contracts/',
    '@openzeppelin/contracts=lib/openzeppelin-contracts/contracts',
]

[invariant]
runs = 128
depth = 128
fail_on_revert = true
```

For additional Foundry configuration options, visit [Foundry's Documentation](https://github.com/foundry-rs/foundry/blob/master/crates/config/README.md#all-options).

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`feature/new-feature`).
3. Commit your changes.
4. Submit a pull request.

## License

This project is open-source and licensed under the MIT License.

## Resources

- [Cyfrin Advanced Foundry Course](https://updraft.cyfrin.io/courses/advanced-foundry)
