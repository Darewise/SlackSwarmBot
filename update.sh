#!/bin/bash

#Merges latest main into the local branch. Preserves secrets in the local repository, normally should not create conflicts
echo Updating main
sudo git checkout main
sudo git pull origin main
sudo git checkout local

echo Merging main
sudo git merge main

echo Restarting apache service
sudo service apache2 restart