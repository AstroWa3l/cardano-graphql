DROP VIEW IF EXISTS
  "AdaPots",
  "ActiveStake",
  "Block",
  "Cardano",
  "Delegation",
  "Epoch",
  "ShelleyEpochProtocolParams",
  "Reward",
  "SlotLeader",
  "StakeDeregistration",
  "StakePool",
  "StakePoolOwner",
  "StakeRegistration",
  "StakePoolRetirement",
  "TokenMint",
  "TokenInOutput",
  "Transaction",
  "TransactionInput",
  "TransactionOutput",
  "Utxo",
  "Withdrawal" CASCADE;
DROP INDEX IF EXISTS
  idx_block_hash,
  idx_tx_hash,
  idx_tx_in_consuming_tx,
  idx_tx_out_tx;
DROP FUNCTION IF EXISTS utxo_set_at_block CASCADE;
