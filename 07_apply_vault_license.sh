#!/bin/sh
export VAULT_ADDR=http://localhost:8200
export VAULT_TOKEN=root
export VAULT_NAMESPACE=
#login into Vault 
vault login root
#write the licemse
LICENSE=`cat license.txt`
vault write sys/license text=$LICENSE
#check the status of Vault server
vault status
vault read sys/license