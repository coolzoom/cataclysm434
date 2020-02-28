#!/bin/bash

if [ -d dist ]; then
	rm -rf dist
	mkdir -p dist/sql
else
	mkdir -p dist/sql
fi

cat ../sql/base/db_auth/*.sql > dist/sql/auth_base.sql
cat ../sql/base/db_characters/*.sql > dist/sql/characters_base.sql
cat ../sql/base/db_world/*.sql > dist/sql/world_base.sql
