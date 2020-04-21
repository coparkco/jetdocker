#!/usr/bin/env bash

COMMANDS['up']='Stop::Execute' # Function name
COMMANDS_USAGE['30']="  stop                       Stops running containers and remove associated networks"
Stop::Execute()
{
    try {
       docker-compose stop
       docker-compose rm -f -v
       docker network disconnect --force ${COMPOSE_PROJECT_NAME}_default nginx-reverse-proxy
       docker network rm ${COMPOSE_PROJECT_NAME}_default
    } catch {
        Log 'End'
    }
}
