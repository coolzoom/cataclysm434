#!/bin/bash

rm -rf dist/sql
mkdir dist/sql
cat ../sql/base/db_auth/*.sql > ./dist/sql/auth_base.sql
cat ../sql/base/db_characters/*.sql > ./dist/sql/characters_base.sql
