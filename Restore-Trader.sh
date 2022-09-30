
#! /usr/bin/env bash
screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
printf "%s " "Shutting down all rail servers. Press enter to continue"
read ans
ps aux|grep 'rails'|grep -v 'grep'|awk '{ print $2 }'|xargs kill -9
printf "%s " "Shutting down rtb-redis and rtb-db from docker. Press enter
to continue"
read ans
docker kill rtb-redis
docker kill rtb-db
printf "%s " "Making sure saml3aws is logged in. Press enter to continue"
read ans
saml2aws login
printf "%s " "Starting the process of the restore of production date.Press enter to continue"
read ans
cd rtb-trader/
bin/rake db:production:load
#printf "%s " "Press enter to start docker containers"
#read ans
#docker start rtb-redis
#docker start rtb-db
cd ui
printf "%s " "Your restore has completed.Press enter to Exit.Please do
remember to start npm and rails server in rtb-trader/ui when are you
are ready to start the server"
read ans

npm start
rails server
