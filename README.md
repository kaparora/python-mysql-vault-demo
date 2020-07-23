# python-mysql-vault-demo
A docker based demo to show how we can secure a python webapp and mysql database with Vault
You can run the scripts on any mac or linux host with Docker installed.
I only tested this on a macbook. 

You will need to add a license.txt file with a valid vault ent license to run script 07_apply_vault_license.sh
If you dont have a license you must finish the demo within 30 mins which is doable. just that you will see annoying messages during the demo about license expiry :)
That's all you need.
  
**Step A: Initial App**  
Run Scrputs 01-04 to start the application and test it before Vault.
Add a user in the WebApp.
WebApp runs on port 5000
  
**Step B: App with Vault**  
Run Scripts 05-13 to setup vault and App configuration and at the end start the app.
Test the app, add new user
  
**Step C: Cleanup**   
Destroy with Script 14


Application code is copied from  from https://github.com/norhe/transit-app-example & https://github.com/assareh/transit-app-example
