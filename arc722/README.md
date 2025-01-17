# ARC-0722

**Title:** Aleo NFT Registry<br/>
**Authors:** <pa@zsociety.io><br/>
**Discussion:** ARC-0722 Aleo NFT Registry<br/>
**Topic:** Application<br/>
**Status:** Draft<br/>
**Created:** 2024-10-14<br/>

## Abstract

The Aleo NFT Registry standard (ARC722) is a proposal for extending ARC721 standard, defining a registry for Non-fungible tokens on Aleo, similar to how ARC21 builds on ARC20 for fungible tokens.

However it comes with a challenge that does not exist for fungible tokens: how to support arbitrary on-chain data structure for NFTs?

The proposed solution is to allow multiple registry implementing ARC722, with each its own `Data` struct type, allowing abitrary on-chain NFT data.

[Such an implementation of ARC722 can be found here](https://github.com/zsolutions-io/aleo-standard-programs/blob/main/arc722/src/main.leo), with `Data` defined as:

```rust
struct Data {
    metadata: [field; 4]
}
```

Under that standard, NFT collections are identified by the unique pair: `(registry_program_id, collection_id)`.

## Enforcing Registry list

Since multiple registry will co-exist, we should decide on how we keep track of registry program list. Here are two propositions, but feel free to make any additional suggestions.

1. Explorers could maintain a list of valid ARC722 implementations.
2. Wallets could allow to add custom registry programs, similar to how MetaMask allows adding custom token contracts.

## References

[ARC-0721: NFTs with owner and data privacy](https://vote.aleo.org/p/721)
[ARC-0021: Multi-Token Standard Program](https://vote.aleo.org/p/21)
