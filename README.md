# tip-at-comment (Base)
Social Tipping System
**Contract (Base mainnet):** 0x36ff9732e7e7fd57ae010c287454fe18ad574761
Explorer: https://basescan.org/address/0x36ff9732e7e7fd57ae010c287454fe18ad574761

What it does
- Send ETH tips tied to any comment/cast/url via bytes32 `commentId`.
- Records tips on-chain and emits `Tipped(commentId, tipper, recipient, amount)`.

How to use
1) Get a `commentId` as keccak256 of your text/URL.
2) Call: `tip(bytes32 commentId, address recipient)` with ETH value.

Example
- comment: "https://warpcast.com/~/casts/EXAMPLE"
- commentId: keccak256(string)
- recipient: 0xRECIPIENT
- amount: 0.0001 ETH

License: MIT
Explorer: https://basescan.org/address/0x36ff9732e7e7fd57ae010c287454fe18ad574761

What it does
- Send ETH tips tied to any comment/cast/url via bytes32 `commentId`.
- Records tips on-chain and emits `Tipped(commentId, tipper, recipient, amount)`.

How to use
1) Get a `commentId` as keccak256 of your text/URL.
2) Call: `tip(bytes32 commentId, address recipient)` with ETH value.

Example
- comment: "https://warpcast.com/~/casts/EXAMPLE"
- commentId: keccak256(string)
- recipient: 0xRECIPIENT
- amount: 0.0001 ETH

License: MIT
