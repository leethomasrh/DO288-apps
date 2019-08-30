#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --name todo --file ~/todo-template.yaml \
    -p APP_GIT_URL=https://github.com/${RHT_OCP4_GITHUB_USER}/DO288-apps \
    -p HOSTNAME=${RHT_OCP4_DEV_USER}-todo.${RHT_OCP4_WILDCARD_DOMAIN} \
    -p NPM_PROXY=http://${RHT_OCP4_NEXUS_SERVER}/repository/nodejs \
    -p PASSWORD=mypass \
    -p CLEAN_DATABASE=true \
    # ADD MISSING PARAMETERS AND CHANGE PARAMETER VALUES IF NEEDED
