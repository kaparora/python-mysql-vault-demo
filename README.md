# python-mysql-vault-demo
A docker based demo to show how we can secure a python webapp and mysql database with Vault

You will need to update file 06_apply_vault_license.sh with a license.
That's all you need.

Step A
Run Scrputs 01-03 to start the application and test it before Vault.
Add a user in the WebApp.
WebApp runs on port 5000

Step B
Run Scripts 04-12 to setup vault and App configuration and at the end start the app.
Test the app, add new user

Step C
Destroy with Script 13


Application code is copied from  from https://github.com/norhe/transit-app-example & https://github.com/assareh/transit-app-example
