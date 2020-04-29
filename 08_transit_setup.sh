#!/bin/sh

# Note: This script requires that the VAULT_ADDR and VAULT_TOKEN environment variables be set.
# Example:
export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
export VAULT_NAMESPACE=dev

echo "Enabling the vault transit secrets engine..."

# Enable the transit secret engine
vault secrets enable  -path=data_protection/transit transit

# Create our customer key
vault write  -f data_protection/transit/keys/customer-key

# Create our archive key to demonstrate multiple keys
vault write -f data_protection/transit/keys/archive-key

#test and see if encryption works
vault write data_protection/transit/encrypt/customer-key plaintext=$(base64 <<< "my secret data")

vault write data_protection/transit/encrypt/archive-key plaintext=$(base64 <<< "my secret data")

echo "Transit secret engine is setup"
