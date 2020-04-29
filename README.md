# python-mysql-vault-demo
A docker based demo to show how we can secure a python webapp and mysql database with Vault
You can run the scripts on any mac or linux host with Docker installed.
I only tested this on a macbook. 

You will need to update file 06_apply_vault_license.sh with a license.  
That's all you need.  
You can skip applying the license if you dont have one. In that case you will have to complete the demo in 30 min which is easily possible.
  
**Step A: Initial App**  
Run Scrputs 01-03 to start the application and test it before Vault.
Add a user in the WebApp.
WebApp runs on port 5000
  
**Step B: App with Vault**  
Run Scripts 04-12 to setup vault and App configuration and at the end start the app.
Test the app, add new user
  
**Step C: Cleanup**   
Destroy with Script 13


Application code is copied from  from https://github.com/norhe/transit-app-example & https://github.com/assareh/transit-app-example
