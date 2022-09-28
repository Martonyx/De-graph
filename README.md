# Created this dApp from the LearnWeb3DAO Sophomore Track

## The function of the dapp is to whitelist addresses upto the maximum amount given at the point of the contract deployment

### functionality

**During deployment**

- It takes an uint8, which is the maximum number of addresses that can be allowed to be whitelisted by the contract

**Whitelisting an Address**

- The dapp connects to your wallet
- Gets your address
- Checks if your address has been whitelisted, and returns a bool
- If your address has not been whitelisted, you will see a button promting you to _joinWhitelist_
- When you click _joinWhitelist,_ it will call your wallet for you to sign the transaction
- And boooom... your Address has been whitelisted

_Thanks for your time_
