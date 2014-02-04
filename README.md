##Coldbox and Cfconcurrent Example App

###Requirements:
 - ColdFusion 10
 - Coldbox 2.5
 - Cfconcurrent 
 - mysql server 5.6


### Installation:
 - deploy files to ezsetup directory in web root
 - set smpt setting in Coldfusion Administrator
 - create ezsetup database in mysql
 - import sql schema
 - ezsignup datasource in ColdFusion Administrator
 - Add mapping to coldbox and cfconcurrent applications


## EZ-Signup Application Details


### Signup Process:
 - I wanted to create a simple application that used some of the features of Cfconcurrent. I decided to also use the Coldbox framework as I am a huge fan of MVC frameworks and I had never used Coldbox before.
 - A user visits the site and enters their firstname, lastname and email address.
 - I added simple validation to the form and the database requires unique email addresses
 - On submitting the form, the user is saved in the database
 - I have sent up a Cfconcurrent Executor Completion Service to send out an intial welcome email to the user, once the task is comepleted successfully a second task is fired to update the user entry in the database and set the initialEmail field to 1 (true).
 - the user is directed to a join page wich tells them they have sucessfully joined the mailing list
 - at the bottom of the join page i have dumped the response from the task worker showing a sucess status, time stats and the user object that was saved. 
 - If there is an error then the message field will contain the error message

### Mass Emailing Mailout:
 - A second component of this application is to be able to send out a mass email to all active users in the database
 - This page would eventually make its way into an administrator only area of the site, but for demo purposes it is just a stand alone page.
 - the mailout.index page just contains a button which submits the form to the mailout.send controller
 - the mailout.send method gets a list of all active users in the database
 - looping through the user list I create a mailout email task for each user
 - after looping the users i pass the array of taks to the Executor Service and use the invokeAll method to send all tasks to the workers
 - On the send page i indicate to the administrator user the number of emails sent and show a list of user names and email addresses
 - at the bottom of the send page I have dumped the responses from each of the task workers.

 
## Summary
- Due to a limited time frame and the fact that this is just a simple application I had to draw the line at how far I would take the app. 
- During my time spent working on this app I found a real appreciation for the Coldbox Framework and Cfconcurrent. I am really impressed with Coldboxes rich feature set and extendabilty.  
