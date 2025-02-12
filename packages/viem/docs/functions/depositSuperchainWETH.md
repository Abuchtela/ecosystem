[**@eth-optimism/viem**](../README.md) • **Docs**

***

[@eth-optimism/viem](../README.md) / depositSuperchainWETH

# depositSuperchainWETH()

> **depositSuperchainWETH**\<`chain`, `account`, `chainOverride`\>(`client`, `parameters`): `Promise`\<[`DepositSuperchainWETHReturnType`](../type-aliases/DepositSuperchainWETHReturnType.md)\>

Deposits ETH to the SuperchainWETH contract.

## Type Parameters

• **chain** *extends* `undefined` \| `Chain`

• **account** *extends* `undefined` \| `Account`

• **chainOverride** *extends* `undefined` \| `Chain` = `undefined`

## Parameters

• **client**: `Client`\<`Transport`, `chain`, `account`\>

L2 Wallet Client

• **parameters**: [`DepositSuperchainWETHParameters`](../type-aliases/DepositSuperchainWETHParameters.md)\<`chain`, `account`, `chainOverride`, `DeriveChain`\<`chain`, `chainOverride`\>\>

[DepositSuperchainWETHParameters](../type-aliases/DepositSuperchainWETHParameters.md)

## Returns

`Promise`\<[`DepositSuperchainWETHReturnType`](../type-aliases/DepositSuperchainWETHReturnType.md)\>

The depositSuperchainWETH transaction hash. [DepositSuperchainWETHReturnType](../type-aliases/DepositSuperchainWETHReturnType.md)

## Defined in

[packages/viem/src/actions/depositSuperchainWETH.ts:64](https://github.com/ethereum-optimism/ecosystem/blob/1d855f26d1024617b154d28d909dbc33a421f5de/packages/viem/src/actions/depositSuperchainWETH.ts#L64)
