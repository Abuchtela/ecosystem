#!/bin/bash

# Directory paths
BUILD_DIR="out/Faucet.sol"
ABI_DIR="src/abis"
TS_FILE="Faucet.ts"
JSON_FILE="$BUILD_DIR/Faucet.json"

# Create ABI directory if it does not exist
mkdir -p $ABI_DIR

# Run forge build and extract the bytecode and ABI using jq
output1=$(forge build --silent > /dev/null 2>&1 && jq '.bytecode.object' $JSON_FILE)
output2=$(forge build --silent > /dev/null 2>&1 && jq '.abi' $JSON_FILE)

# Check if jq commands succeeded
if [ $? -ne 0 ]; then
  echo "Failed to extract bytecode or ABI from JSON file."
  exit 1
fi

# Wrap the outputs in TypeScript constant declarations
{
  echo "// DO NOT MODIFY! THIS FILE IS AUTOGENERATED BY RUNNING pnpm build:faucet:abi"
  echo "export const faucetByteCode = $output1;"
  echo "export const faucetAbi = $output2 as const;"
} > $ABI_DIR/$TS_FILE

echo "ABI and bytecode have been saved to $ABI_DIR/$TS_FILE"