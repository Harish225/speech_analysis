#!/bin/bash
# -----------------------------------------------------------------------------
# destroyCreateMigrate.sh
#
# Will drop any existing tables, recreate the database and run the migration 
#
# Usage: bash destroyCreateMigrate.sh
#
# Jayson Grace, jayson.e.grace@gmail.com, 10/14/2015
#
# Last update 11/12/2015 by Jayson Grace, jayson.e.grace@gmail.com
# ----------------------------------------------------------------------------

rake db:drop 
rake db:create 
rake db:migrate
