## Foundry DeFi Stablecoin

https://updraft.cyfrin.io/courses/advanced-foundry

This project is meant to be a stablecoin where users can deposit WETH and WBTC in exchange for a token that will be pegged to the USD.

* The system is designed to be as minimal as possible, and have the tokens maintain a 1 token == $1 peg at all times.
* This is a stablecoin with the properties:
  * Exogenously Collateralized
  * Dollar Pegged
  * Algorithmically Stable
* It is similar to DAI if DAI had no governance, no fees, and was backed by only WETH and WBTC.
* Our DSC system should always be "overcollateralized". At no point, should the value of all collateral < the $ backed value of all the DSC.

## Usage

### Build

```shell
$ make build
```

### Test

```shell
$ make test
```

### Format

```shell
$ make format
```

### Gas Snapshots

```shell
$ make snapshot
```

### Anvil

```shell
$ make anvil
```

### Deploy

```shell
$ make deploy
```
