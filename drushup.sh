#!/bin/bash
cd "$(dirname "$0")"
git subtree pull --prefix=bin/extras/drush --squash -m "Updating drush" http://git.drupal.org/project/drush.git master
