#!/bin/bash

#######################################################
# ABOUT
#######################################################
# This script restores DKDB database.
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
PGPASSWORD="${PG_PASSWORD}" "${PG_ADMIN}"/Contents/SharedSupport/pg_restore --host "${PG_HOST}" --port "${PG_PORT}" --username "${PG_USER}" --dbname "${PG_DB}" --clean --verbose "${RESTORE_FILE}"
