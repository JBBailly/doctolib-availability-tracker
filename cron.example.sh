#!/bin/bash

### CRON JOB EXAMPLE ###
# At 10 every hour from 10 through 22.
# 10 10-22/1 * * *  /home/user/doctolib-availability-tracker/cron.sh >> /home/user/doctolib-availability-tracker/run.log 2>&1

REPO_DIR="/home/user/doctolib-availability-tracker/"
cd "${REPO_DIR}" || exit
echo ""
echo "--------------"
date
source .venv/bin/activate || exit
export headless="true"

#Vannes
echo "-----Vannes-----"
export search_place=Vannes
.venv/bin/python -m src.main

#Cherbourg
echo "-----Cherbourg-----"
export search_place=Cherbourg
.venv/bin/python -m src.main

echo "----end---"

exit 0


