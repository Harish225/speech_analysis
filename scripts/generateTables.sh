#!/bin/bash
# -----------------------------------------------------------------------------
# generateTables.sh
#
# Generate tables for speech application
#
# Usage: bash generateTables.sh
#
# Jayson Grace, jayson.e.grace@gmail.com, 11/12/2015
#
# Last update 11/12/2015 by Jayson Grace, jayson.e.grace@gmail.com
# ----------------------------------------------------------------------------

# Generate speaker scaffold
rails g scaffold speaker name:string city:references state:references country:references native_language:references other_languages:integer age:integer gender:integer english_onset:integer learning_method:integer english_country_residence:references length_english_residence:integer user:references

# Generate city scaffold for dropdown
rails g scaffold city name:string
# Generate state scaffold for dropdown
rails g scaffold state name:string
# Generate country scaffold for dropdown
rails g scaffold country name:string
# Generate native language scaffold for dropdown
rails g scaffold native_language name:string
# Generate english country residence scaffold for dropdown
rails g scaffold english_country_residence name:string

# Generate phoneme scaffold
rails g scaffold phoneme base:integer actual:string diacritic:string sequence:integer speaker:references
