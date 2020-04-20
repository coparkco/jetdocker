#!/usr/bin/env bash

DatabaseBackup::Fetch()
{
    namespace database-backup
    ${DEBUG} && Log::AddOutput database-backup DEBUG
    Log "DatabaseBackup::Fetch"

    identity_file="../.ssh/preprod_rsa"
    dir="/var/mysql_backup/cameleon"
    server="cameleonpreprodcoparkco@185.116.106.24"
    chmod 600 $identity_file
    scp -i $identity_file $server:$dir/$(ssh -i $identity_file $server "ls -t $dir | head -1") .
}
