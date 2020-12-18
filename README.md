SSD Ruby on Rails Project 2020: shoes@web

Team Members: 

Rory Cleary
Genaci DaCruz
Kasia Casserly
Ronan Behan

Upload files to the SSD Project folder that are not source code please.

To upload the source code to GitHub, complete the following action guys:

Double check that you are in the main branch: 

1. git checkout main

Then to update the source code to the app folder from Cloud9:

2. git add . (use the full-stop as it is very important)
3. git commit -m "type your commit message here" (a message must be entered)
4. git push origin main

**Please please please remember, do not DELETE. I will help you commit changes to the the code later.**



**Don't use this code**
**This code is not usable I just want it here as a reminder:
git pull --rebase
git push**


Pending migration error can come from the new class not been pushed/added to the table. I found that you have to migrate the change again for it to work.
rails db:migrate:status
rails generate migration AddIndexToOffers offertype_id
#(rails generate migration add_offertype_id_to_offers offertype_id:string)
rails db:migrate
rake db:reset
rails db:migrate
