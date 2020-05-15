# Sysads-Task2

Give execute permissions to SubTask1.sh and run it. Now if you open the browser and type in soldiers.io/Navy1 it should show:
![](ScreenShots/subtask1-1.png)

If you don't change the BROWSER_NAME in htaccess1 file then id you go to soldiers.io/ChiefCOmmander you will be redirected to the root directory
![](ScreenShots/subtask1-2.png)


Say if the ChiefCommanders Browser was "Mozilla/5.0" and we make changes in htaccess1:
![](ScreenShots/subtask1-3.png)

Now once we open the browser and type in soldiers.io/ChiefCommander we get:
![](ScreenShots/subtask1-4.png)

To run the ReverseProxy give execute permissions to ReverseProxy.sh and run it:
![](ScreenShots/hackermode1-1.png)

To test the complaint page we first need to create a database so give execute permissions to HackerMode1.sh and change PASSWORD of your root:
Now type in the complains along with the username
![](ScreenShots/hackermode1-2.png)

To check the mysql database login as CHiefCommander in mysql:
The database along with the complain has been registered.
![](ScreenShots/hackermode1-3.png)


Goto Sub-Task2 directory and type the command "docker build -it sub-task2 . " as root user like this:
![](ScreenShots/subtask2-1.png)

Run the sub-task2 and everything including the crontasks are set:
![](ScreenShots/subtask2-2.png)

Before build the docker-compose.yml you need to build the apache2 images by going to the Apache directory:
![](ScreenShots/Apache1-1.png)

To test this image follow:
![](ScreenShots/Apache1-2.png)
![](ScreenShots/Apache1-3.png)

To run the docker-compose.yml file follow:
![](ScreenShots/compose1-1.png)

Connect to localhost:3333 to test the application.
![](ScreenShots/compose1-2.png)

To execute the reverse-proxy in docker-compose.yml you need to rebuild the apache2 image with the following changes in the Dockerfile of Apache:
![](ScreenShots/compose1-3.png)

if you don't run "docker-compose up" again and connect to localhost:3000 it won't display the pages:
![](ScreenShots/compose1-4.png)

Once you run "docker-compose up" and test it:
![](ScreenShots/compose1-5.png)
