#!/bin/bash
echo "Updating Drush…"
cd "$(dirname "$0")/bin/extras/drush"
git pull
