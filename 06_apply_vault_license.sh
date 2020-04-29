#!/bin/sh
export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
export VAULT_NAMESPACE=
#login into Vault 
vault login root
#write the licemse
vault write sys/license text="<YOUR_LICENSE>"
#check the status of Vault server
vault status