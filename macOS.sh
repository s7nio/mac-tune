#!/usr/bin/env bash

# Load all of the mac config files that end with .mac
files="$(pwd)/*.mac"

for mac_config_file in $files; do
  source $mac_config_file;
done
