#!/bin/sh
#removing the current config file
rm -f config.ini
#copying the inital configuration with vault disabled and mysql password and username params
cp backend/config.ini.before backend/config.ini