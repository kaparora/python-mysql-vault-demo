#!/bin/sh
#remove exisitng config
rm -f config.ini
#copy the updated config with Vault enabled and no DB creds
cp backend/config.ini.after backend/config.ini