# XTV

## Description
A website project for KTH's course XML for Publishing (DM2517). 

## Local development setup
**Step 1**
> Begin by creating a docker account [here][1]. You must have an account to download docker.

**Step 2**
> Download docker for desktop [here][2] after you have logged in.

**Step 3**
> Go to the "Docker" folder in this project and run  
> `docker-compose up --build`

**Step 4**
> You are done! You can access the website on localhost:30011 and phpMyAdmin on localhost:30012

**Login credential for phpMyAdmin and SQL**  
> *Username*: "username"  
> *Password*: "root"

**Note**  
Remember to export the database if changes is made and replace the exported file with the `Docker/sql/xtv.sql` file.


[1]: (https://hub.docker.com/signup)
[2]: (https://hub.docker.com/?overlay=onboarding)