#!/usr/bin/env bash

DatabaseBackup::Fetch()
{
    namespace database-backup
    ${DEBUG} && Log::AddOutput database-backup DEBUG
    Log "DatabaseBackup::Fetch"

    chmod 600 ${DB_BACKUP_SSH_KEY}

#    Fetches last modified file in backup folder
    scp -i ${DB_BACKUP_SSH_KEY} ${DB_BACKUP_HOST}:${DB_BACKUP_DIR}/$(ssh -i ${DB_BACKUP_SSH_KEY} ${DB_BACKUP_HOST} "ls -t ${DB_BACKUP_DIR} | head -1") db
}
