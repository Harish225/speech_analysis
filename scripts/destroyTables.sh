#!/bin/bash
# -----------------------------------------------------------------------------
# destroyTables.sh
#
# Destroy tables for speech application
#
# Usage: bash destroyTables.sh
#
# Jayson Grace, jayson.e.grace@gmail.com, 11/12/2015
#
# Last update 11/12/2015 by Jayson Grace, jayson.e.grace@gmail.com
# ----------------------------------------------------------------------------

# Destroy scaffold for speaker
rails destroy scaffold speaker

# Destroy scaffold for city
rails destroy scaffold city
# Destroy scaffold for state
rails destroy scaffold state
# Destroy scaffold for country
rails destroy scaffold country
# Destroy scaffold for native language
rails destroy scaffold native_language
# Destroy scaffold for english country residence
rails destroy scaffold english_country_residence

# Destroy phoneme scaffold
rails destroy scaffold phoneme 
