#!/bin/bash

#######################################################
# ABOUT
#######################################################
# This script backups DKDB database.
#
# author: Knut Holm (knut.holm28@gmail.com)
# version: 2020-02-15
#######################################################

#######################################################
# CONFIG
#######################################################
source ./config.sh

#######################################################
# SCRIPT
#######################################################
PGPASSWORD="${PG_PASSWORD}" "${PG_ADMIN}"/Contents/SharedSupport/pg_dump --file "${BACKUP_FILE}" --host "${PG_HOST}" --port "${PG_PORT}" --username "${PG_USER}" --verbose --format=c --blobs --encoding "UTF8" "${PG_DB}"
