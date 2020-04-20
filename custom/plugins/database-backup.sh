#!/usr/bin/env bash


DatabaseBackup::Fetch()
{
    namespace database-backup
    ${DEBUG} && Log::AddOutput database-backup DEBUG
    Log "DatabaseBackup::Fetch"

    pwd
}
