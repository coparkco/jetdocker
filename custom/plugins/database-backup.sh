#!/usr/bin/env bash

# path /var/mysql_backup/cameleon/
# serverName h130@185.116.106.104
# file pattern
DatabaseBackup::Fetch()
{
    namespace database-backup
    ${DEBUG} && Log::AddOutput database-backup DEBUG
    Log "DatabaseBackup::Fetch"

    identity_file="../.ssh/preprod_rsa"
    dir="/var/mysql_backup/cameleon"
    server="h130@185.116.106.104"
    chmod 600 $identity_file
    scp -i $identity_file $server:$dir/$(ssh -i $identity_file $server 'ls -t $dir | head -1') .
}
