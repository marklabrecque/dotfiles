#!/bin/bash
echo "Updating Drush…"
cd "$(dirname "$0")/bin/extras/drush"
git pull origin 8.x-6.x
